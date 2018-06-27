package org.libsodium.jni.keys;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.crypto.Random;
import org.libsodium.jni.crypto.Util;
import org.libsodium.jni.encoders.Encoder;

public class SigningKey {
    private final byte[] secretKey;
    private final byte[] seed;
    private VerifyKey verifyKey;

    public SigningKey(byte[] bArr) {
        Util.checkLength(bArr, 32);
        this.seed = bArr;
        this.secretKey = Util.zeros(64);
        byte[] zeros = Util.zeros(32);
        NaCl.sodium();
        Util.isValid(Sodium.crypto_sign_ed25519_seed_keypair(zeros, this.secretKey, bArr), "Failed to generate a key pair");
        this.verifyKey = new VerifyKey(zeros);
    }

    public SigningKey() {
        this(new Random().randomBytes(32));
    }

    public SigningKey(String str, Encoder encoder) {
        this(encoder.decode(str));
    }

    public VerifyKey getVerifyKey() {
        return this.verifyKey;
    }

    public byte[] sign(byte[] bArr) {
        byte[] prependZeros = Util.prependZeros(64, bArr);
        int[] iArr = new int[1];
        NaCl.sodium();
        Sodium.crypto_sign_ed25519(prependZeros, iArr, bArr, bArr.length, this.secretKey);
        return Util.slice(prependZeros, 0, 64);
    }

    public String sign(String str, Encoder encoder) {
        return encoder.encode(sign(encoder.decode(str)));
    }

    public byte[] toBytes() {
        return this.seed;
    }

    public String toString() {
        return Encoder.HEX.encode(this.seed);
    }
}
