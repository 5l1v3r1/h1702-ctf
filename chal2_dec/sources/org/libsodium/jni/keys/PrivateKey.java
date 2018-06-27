package org.libsodium.jni.keys;

import org.libsodium.jni.crypto.Util;
import org.libsodium.jni.encoders.Encoder;

public class PrivateKey {
    private final byte[] secretKey;

    public PrivateKey(byte[] bArr) {
        this.secretKey = bArr;
        Util.checkLength(bArr, 32);
    }

    public PrivateKey(String str) {
        this.secretKey = Encoder.HEX.decode(str);
        Util.checkLength(this.secretKey, 32);
    }

    public byte[] toBytes() {
        return this.secretKey;
    }

    public String toString() {
        return Encoder.HEX.encode(this.secretKey);
    }
}
