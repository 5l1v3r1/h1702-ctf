.class public Lorg/libsodium/jni/crypto/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# static fields
.field private static final KEY_LEN:I = 0x40

.field private static final SALTBYTES:I = 0x20


# instance fields
.field private buffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blakeSupportedVersion()Z
    .locals 1

    .line 72
    new-instance p0, Ljava/lang/String;

    const-string v0, "0.4.1"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "0.4.0"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public blake2(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/libsodium/jni/crypto/Hash;->blakeSupportedVersion()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsodium/jni/crypto/Hash;->blake2([B)[B

    move-result-object p0

    .line 68
    invoke-interface {p2, p0}, Lorg/libsodium/jni/encoders/Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blake2([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/libsodium/jni/crypto/Hash;->blakeSupportedVersion()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_0
    const/16 v0, 0x40

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    .line 61
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object v1, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    const/16 v2, 0x40

    array-length v4, p1

    const/4 v0, 0x0

    new-array v5, v0, [B

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lorg/libsodium/jni/Sodium;->crypto_generichash_blake2b([BI[BI[BI)I

    .line 62
    iget-object p0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    return-object p0
.end method

.method public pwhash_scryptsalsa208sha256(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;[BII)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x40

    .line 52
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    .line 53
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object v1, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    iget-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    array-length v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lorg/libsodium/jni/Sodium;->crypto_pwhash_scryptsalsa208sha256([BI[BI[BII)I

    .line 54
    iget-object p0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    invoke-interface {p2, p0}, Lorg/libsodium/jni/encoders/Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sha256(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsodium/jni/crypto/Hash;->sha256([B)[B

    move-result-object p0

    .line 43
    invoke-interface {p2, p0}, Lorg/libsodium/jni/encoders/Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sha256([B)[B
    .locals 2

    const/16 v0, 0x20

    .line 30
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    .line 31
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lorg/libsodium/jni/Sodium;->crypto_hash_sha256([B[BI)I

    .line 32
    iget-object p0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    return-object p0
.end method

.method public sha512(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsodium/jni/crypto/Hash;->sha512([B)[B

    move-result-object p0

    .line 48
    invoke-interface {p2, p0}, Lorg/libsodium/jni/encoders/Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sha512([B)[B
    .locals 2

    const/16 v0, 0x40

    .line 36
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    .line 37
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object v0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lorg/libsodium/jni/Sodium;->crypto_hash_sha512([B[BI)I

    .line 38
    iget-object p0, p0, Lorg/libsodium/jni/crypto/Hash;->buffer:[B

    return-object p0
.end method
