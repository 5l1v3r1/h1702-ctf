.class public Lorg/libsodium/jni/crypto/Box;
.super Ljava/lang/Object;
.source "Box.java"


# instance fields
.field private final privateKey:[B

.field private final publicKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)V
    .locals 0

    .line 54
    invoke-interface {p3, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, p2}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/libsodium/jni/crypto/Box;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/libsodium/jni/keys/PublicKey;Lorg/libsodium/jni/keys/PrivateKey;)V
    .locals 0

    .line 50
    invoke-virtual {p1}, Lorg/libsodium/jni/keys/PublicKey;->toBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/libsodium/jni/keys/PrivateKey;->toBytes()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/libsodium/jni/crypto/Box;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/libsodium/jni/crypto/Box;->publicKey:[B

    .line 44
    iput-object p2, p0, Lorg/libsodium/jni/crypto/Box;->privateKey:[B

    const/16 p0, 0x20

    .line 45
    invoke-static {p1, p0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    .line 46
    invoke-static {p2, p0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)[B
    .locals 0

    .line 80
    invoke-interface {p3, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, p2}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libsodium/jni/crypto/Box;->decrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public decrypt([B[B)[B
    .locals 7

    const/16 v0, 0x18

    .line 71
    invoke-static {p1, v0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    const/16 v0, 0x10

    .line 72
    invoke-static {v0, p2}, Lorg/libsodium/jni/crypto/Util;->prependZeros(I[B)[B

    move-result-object v2

    .line 73
    array-length p2, v2

    new-array p2, p2, [B

    .line 74
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    array-length v3, p2

    iget-object v5, p0, Lorg/libsodium/jni/crypto/Box;->publicKey:[B

    iget-object v6, p0, Lorg/libsodium/jni/crypto/Box;->privateKey:[B

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/libsodium/jni/Sodium;->crypto_box_curve25519xsalsa20poly1305_open([B[BI[B[B[B)I

    move-result p0

    const-string p1, "Decryption failed. Ciphertext failed verification."

    invoke-static {p0, p1}, Lorg/libsodium/jni/crypto/Util;->isValid(ILjava/lang/String;)Z

    const/16 p0, 0x20

    .line 76
    invoke-static {p0, p2}, Lorg/libsodium/jni/crypto/Util;->removeZeros(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)[B
    .locals 0

    .line 67
    invoke-interface {p3, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {p3, p2}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/libsodium/jni/crypto/Box;->encrypt([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt([B[B)[B
    .locals 7

    const/16 v0, 0x18

    .line 58
    invoke-static {p1, v0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    const/16 v0, 0x20

    .line 59
    invoke-static {v0, p2}, Lorg/libsodium/jni/crypto/Util;->prependZeros(I[B)[B

    move-result-object v2

    .line 60
    array-length p2, v2

    new-array p2, p2, [B

    .line 61
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    array-length v3, v2

    iget-object v5, p0, Lorg/libsodium/jni/crypto/Box;->publicKey:[B

    iget-object v6, p0, Lorg/libsodium/jni/crypto/Box;->privateKey:[B

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/libsodium/jni/Sodium;->crypto_box_curve25519xsalsa20poly1305([B[BI[B[B[B)I

    move-result p0

    const-string p1, "Encryption failed"

    invoke-static {p0, p1}, Lorg/libsodium/jni/crypto/Util;->isValid(ILjava/lang/String;)Z

    const/16 p0, 0x10

    .line 63
    invoke-static {p0, p2}, Lorg/libsodium/jni/crypto/Util;->removeZeros(I[B)[B

    move-result-object p0

    return-object p0
.end method
