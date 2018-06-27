package org.libsodium.jni.keys;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.crypto.Point;
import org.libsodium.jni.crypto.Util;
import org.libsodium.jni.encoders.Encoder;

public class KeyPair {
    private byte[] publicKey;
    private final byte[] secretKey;
    private byte[] seed;

    public KeyPair() {
        this.secretKey = Util.zeros(32);
        this.publicKey = Util.zeros(32);
        NaCl.sodium();
        Sodium.crypto_box_curve25519xsalsa20poly1305_keypair(this.publicKey, this.secretKey);
    }

    public KeyPair(byte[] bArr) {
        Util.checkLength(bArr, 32);
        this.seed = bArr;
        this.secretKey = Util.zeros(32);
        this.publicKey = Util.zeros(32);
        NaCl.sodium();
        Util.isValid(Sodium.crypto_box_curve25519xsalsa20poly1305_seed_keypair(this.publicKey, this.secretKey, bArr), "Failed to generate a key pair");
    }

    public KeyPair(String str, Encoder encoder) {
        this(encoder.decode(str));
    }

    public PublicKey getPublicKey() {
        return new PublicKey(this.publicKey != null ? this.publicKey : new Point().mult(this.secretKey).toBytes());
    }

    public PrivateKey getPrivateKey() {
        return new PrivateKey(this.secretKey);
    }
}
