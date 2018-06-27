package org.libsodium.jni.crypto;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.encoders.Encoder;

public class Hash {
    private static final int KEY_LEN = 64;
    private static final int SALTBYTES = 32;
    private byte[] buffer;

    public byte[] sha256(byte[] bArr) {
        this.buffer = new byte[32];
        NaCl.sodium();
        Sodium.crypto_hash_sha256(this.buffer, bArr, bArr.length);
        return this.buffer;
    }

    public byte[] sha512(byte[] bArr) {
        this.buffer = new byte[64];
        NaCl.sodium();
        Sodium.crypto_hash_sha512(this.buffer, bArr, bArr.length);
        return this.buffer;
    }

    public String sha256(String str, Encoder encoder) {
        return encoder.encode(sha256(str.getBytes()));
    }

    public String sha512(String str, Encoder encoder) {
        return encoder.encode(sha512(str.getBytes()));
    }

    public String pwhash_scryptsalsa208sha256(String str, Encoder encoder, byte[] bArr, int i, int i2) {
        this.buffer = new byte[64];
        NaCl.sodium();
        Sodium.crypto_pwhash_scryptsalsa208sha256(this.buffer, this.buffer.length, str.getBytes(), str.length(), bArr, i, i2);
        return encoder.encode(this.buffer);
    }

    public byte[] blake2(byte[] bArr) throws UnsupportedOperationException {
        if (blakeSupportedVersion()) {
            this.buffer = new byte[64];
            NaCl.sodium();
            Sodium.crypto_generichash_blake2b(this.buffer, 64, bArr, bArr.length, new byte[0], 0);
            return this.buffer;
        }
        throw new UnsupportedOperationException();
    }

    public String blake2(String str, Encoder encoder) throws UnsupportedOperationException {
        if (blakeSupportedVersion()) {
            return encoder.encode(blake2(str.getBytes()));
        }
        throw new UnsupportedOperationException();
    }

    private boolean blakeSupportedVersion() {
        return new String("0.4.1").compareTo("0.4.0") >= 0;
    }
}
