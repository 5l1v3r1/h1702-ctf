package org.libsodium.jni.keys;

import org.libsodium.jni.crypto.Util;
import org.libsodium.jni.encoders.Encoder;

public class PublicKey {
    private final byte[] publicKey;

    public PublicKey(byte[] bArr) {
        this.publicKey = bArr;
        Util.checkLength(bArr, 32);
    }

    public PublicKey(String str) {
        this.publicKey = Encoder.HEX.decode(str);
    }

    public byte[] toBytes() {
        return this.publicKey;
    }

    public String toString() {
        return Encoder.HEX.encode(this.publicKey);
    }
}
