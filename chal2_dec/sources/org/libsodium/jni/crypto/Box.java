package org.libsodium.jni.crypto;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.encoders.Encoder;
import org.libsodium.jni.keys.PrivateKey;
import org.libsodium.jni.keys.PublicKey;

public class Box {
    private final byte[] privateKey;
    private final byte[] publicKey;

    public Box(byte[] bArr, byte[] bArr2) {
        this.publicKey = bArr;
        this.privateKey = bArr2;
        Util.checkLength(bArr, 32);
        Util.checkLength(bArr2, 32);
    }

    public Box(PublicKey publicKey, PrivateKey privateKey) {
        this(publicKey.toBytes(), privateKey.toBytes());
    }

    public Box(String str, String str2, Encoder encoder) {
        this(encoder.decode(str), encoder.decode(str2));
    }

    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        Util.checkLength(bArr, 24);
        byte[] prependZeros = Util.prependZeros(32, bArr2);
        bArr2 = new byte[prependZeros.length];
        NaCl.sodium();
        Util.isValid(Sodium.crypto_box_curve25519xsalsa20poly1305(bArr2, prependZeros, prependZeros.length, bArr, this.publicKey, this.privateKey), "Encryption failed");
        return Util.removeZeros(16, bArr2);
    }

    public byte[] encrypt(String str, String str2, Encoder encoder) {
        return encrypt(encoder.decode(str), encoder.decode(str2));
    }

    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        Util.checkLength(bArr, 24);
        byte[] prependZeros = Util.prependZeros(16, bArr2);
        bArr2 = new byte[prependZeros.length];
        NaCl.sodium();
        Util.isValid(Sodium.crypto_box_curve25519xsalsa20poly1305_open(bArr2, prependZeros, bArr2.length, bArr, this.publicKey, this.privateKey), "Decryption failed. Ciphertext failed verification.");
        return Util.removeZeros(32, bArr2);
    }

    public byte[] decrypt(String str, String str2, Encoder encoder) {
        return decrypt(encoder.decode(str), encoder.decode(str2));
    }
}
