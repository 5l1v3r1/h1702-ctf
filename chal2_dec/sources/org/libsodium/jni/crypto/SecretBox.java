package org.libsodium.jni.crypto;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.encoders.Encoder;

public class SecretBox {
    private byte[] key;

    public SecretBox(byte[] bArr) {
        this.key = bArr;
        Util.checkLength(bArr, 32);
    }

    public SecretBox(String str, Encoder encoder) {
        this(encoder.decode(str));
    }

    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        Util.checkLength(bArr, 24);
        bArr2 = Util.prependZeros(32, bArr2);
        byte[] zeros = Util.zeros(bArr2.length);
        NaCl.sodium();
        Util.isValid(Sodium.crypto_secretbox_xsalsa20poly1305(zeros, bArr2, bArr2.length, bArr, this.key), "Encryption failed");
        return Util.removeZeros(16, zeros);
    }

    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        Util.checkLength(bArr, 24);
        bArr2 = Util.prependZeros(16, bArr2);
        byte[] zeros = Util.zeros(bArr2.length);
        NaCl.sodium();
        Util.isValid(Sodium.crypto_secretbox_xsalsa20poly1305_open(zeros, bArr2, bArr2.length, bArr, this.key), "Decryption failed. Ciphertext failed verification");
        return Util.removeZeros(32, zeros);
    }
}
