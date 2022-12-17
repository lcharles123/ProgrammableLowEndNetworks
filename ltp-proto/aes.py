#!/usr/bin/env python
# pip install M2Crypto
import M2Crypto
import binascii
import sys


# aes.py <ECB|CBC> <ENC|DEC> <128 bit key> <data>
mode = 'aes_128_gcm' if sys.argv[1] == 'GCM' else  'aes_128_ecb'
op = sys.argv[2]
key = sys.argv[3] 
data = sys.argv[4]

def get_cryptor( op, key, alg='aes_128_ecb', iv=None ):
    if iv == None:
        iv = '\0' * 16
    cryptor = M2Crypto.EVP.Cipher( alg=alg, key=key, iv=iv, op=op)
    return cryptor

def encrypt( key, plaintext, mode ):
    cryptor = get_cryptor( 1, key, alg=mode)
    ret = cryptor.update( plaintext )
    ret = ret + cryptor.final()
    ret = binascii.hexlify( ret )
    return ret

def decrypt( key, ciphertext, mode ):
    cryptor = get_cryptor( 0, key, alg=mode)
    ciphertext = binascii.unhexlify( ciphertext )
    ret = cryptor.update( ciphertext )
    ret = ret + cryptor.final()
    return ret

if op == 'ENC':
    print encrypt( key, data, mode )
elif op == 'DEC':
    print decrypt( key, data, mode )
else:
    sys.exit(1)
