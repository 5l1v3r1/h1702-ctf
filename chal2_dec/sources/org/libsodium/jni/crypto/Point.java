package org.libsodium.jni.crypto;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.encoders.Encoder;

public class Point {
    private static final String STANDARD_GROUP_ELEMENT = "0900000000000000000000000000000000000000000000000000000000000000";
    private final byte[] point;

    public Point() {
        this.point = Encoder.HEX.decode(STANDARD_GROUP_ELEMENT);
    }

    public Point(byte[] bArr) {
        this.point = bArr;
    }

    public Point(String str, Encoder encoder) {
        this(encoder.decode(str));
    }

    public Point mult(byte[] bArr) {
        byte[] zeros = Util.zeros(32);
        NaCl.sodium();
        Sodium.crypto_scalarmult_curve25519(zeros, bArr, this.point);
        return new Point(zeros);
    }

    public Point mult(String str, Encoder encoder) {
        return mult(encoder.decode(str));
    }

    public String toString() {
        return Encoder.HEX.encode(this.point);
    }

    public byte[] toBytes() {
        return this.point;
    }
}
