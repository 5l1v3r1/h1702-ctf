.class public Lorg/libsodium/jni/crypto/SecretBox;
.super Ljava/lang/Object;
.source "SecretBox.java"


# instance fields
.field private key:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)V
    .locals 0

    .line 40
    invoke-interface {p2, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsodium/jni/crypto/SecretBox;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/libsodium/jni/crypto/SecretBox;->key:[B

    const/16 p0, 0x20

    .line 36
    invoke-static {p1, p0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 2

    const/16 v0, 0x18

    .line 53
    invoke-static {p1, v0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    const/16 v0, 0x10

    .line 54
    invoke-static {v0, p2}, Lorg/libsodium/jni/crypto/Util;->prependZeros(I[B)[B

    move-result-object p2

    .line 55
    array-length v0, p2

    invoke-static {v0}, Lorg/libsodium/jni/crypto/Util;->zeros(I)[B

    move-result-object v0

    .line 56
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    array-length v1, p2

    iget-object p0, p0, Lorg/libsodium/jni/crypto/SecretBox;->key:[B

    invoke-static {v0, p2, v1, p1, p0}, Lorg/libsodium/jni/Sodium;->crypto_secretbox_xsalsa20poly1305_open([B[BI[B[B)I

    move-result p0

    const-string p1, "Decryption failed. Ciphertext failed verification"

    invoke-static {p0, p1}, Lorg/libsodium/jni/crypto/Util;->isValid(ILjava/lang/String;)Z

    const/16 p0, 0x20

    .line 58
    invoke-static {p0, v0}, Lorg/libsodium/jni/crypto/Util;->removeZeros(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt([B[B)[B
    .locals 2

    const/16 v0, 0x18

    .line 44
    invoke-static {p1, v0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    const/16 v0, 0x20

    .line 45
    invoke-static {v0, p2}, Lorg/libsodium/jni/crypto/Util;->prependZeros(I[B)[B

    move-result-object p2

    .line 46
    array-length v0, p2

    invoke-static {v0}, Lorg/libsodium/jni/crypto/Util;->zeros(I)[B

    move-result-object v0

    .line 47
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    array-length v1, p2

    iget-object p0, p0, Lorg/libsodium/jni/crypto/SecretBox;->key:[B

    invoke-static {v0, p2, v1, p1, p0}, Lorg/libsodium/jni/Sodium;->crypto_secretbox_xsalsa20poly1305([B[BI[B[B)I

    move-result p0

    const-string p1, "Encryption failed"

    invoke-static {p0, p1}, Lorg/libsodium/jni/crypto/Util;->isValid(ILjava/lang/String;)Z

    const/16 p0, 0x10

    .line 49
    invoke-static {p0, v0}, Lorg/libsodium/jni/crypto/Util;->removeZeros(I[B)[B

    move-result-object p0

    return-object p0
.end method
