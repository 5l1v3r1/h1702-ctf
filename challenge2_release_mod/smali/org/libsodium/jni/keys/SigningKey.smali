.class public Lorg/libsodium/jni/keys/SigningKey;
.super Ljava/lang/Object;
.source "SigningKey.java"


# instance fields
.field private final secretKey:[B

.field private final seed:[B

.field private verifyKey:Lorg/libsodium/jni/keys/VerifyKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/libsodium/jni/crypto/Random;

    invoke-direct {v0}, Lorg/libsodium/jni/crypto/Random;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/libsodium/jni/crypto/Random;->randomBytes(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/libsodium/jni/keys/SigningKey;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)V
    .locals 0

    .line 52
    invoke-interface {p2, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsodium/jni/keys/SigningKey;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 37
    invoke-static {p1, v0}, Lorg/libsodium/jni/crypto/Util;->checkLength([BI)V

    .line 38
    iput-object p1, p0, Lorg/libsodium/jni/keys/SigningKey;->seed:[B

    const/16 v1, 0x40

    .line 39
    invoke-static {v1}, Lorg/libsodium/jni/crypto/Util;->zeros(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/libsodium/jni/keys/SigningKey;->secretKey:[B

    .line 40
    invoke-static {v0}, Lorg/libsodium/jni/crypto/Util;->zeros(I)[B

    move-result-object v0

    .line 41
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object v1, p0, Lorg/libsodium/jni/keys/SigningKey;->secretKey:[B

    invoke-static {v0, v1, p1}, Lorg/libsodium/jni/Sodium;->crypto_sign_ed25519_seed_keypair([B[B[B)I

    move-result p1

    const-string v1, "Failed to generate a key pair"

    invoke-static {p1, v1}, Lorg/libsodium/jni/crypto/Util;->isValid(ILjava/lang/String;)Z

    .line 44
    new-instance p1, Lorg/libsodium/jni/keys/VerifyKey;

    invoke-direct {p1, v0}, Lorg/libsodium/jni/keys/VerifyKey;-><init>([B)V

    iput-object p1, p0, Lorg/libsodium/jni/keys/SigningKey;->verifyKey:Lorg/libsodium/jni/keys/VerifyKey;

    return-void
.end method


# virtual methods
.method public getVerifyKey()Lorg/libsodium/jni/keys/VerifyKey;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/libsodium/jni/keys/SigningKey;->verifyKey:Lorg/libsodium/jni/keys/VerifyKey;

    return-object p0
.end method

.method public sign(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-interface {p2, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsodium/jni/keys/SigningKey;->sign([B)[B

    move-result-object p0

    .line 69
    invoke-interface {p2, p0}, Lorg/libsodium/jni/encoders/Encoder;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sign([B)[B
    .locals 4

    const/16 v0, 0x40

    .line 60
    invoke-static {v0, p1}, Lorg/libsodium/jni/crypto/Util;->prependZeros(I[B)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 61
    new-array v2, v2, [I

    .line 62
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    array-length v3, p1

    iget-object p0, p0, Lorg/libsodium/jni/keys/SigningKey;->secretKey:[B

    invoke-static {v1, v2, p1, v3, p0}, Lorg/libsodium/jni/Sodium;->crypto_sign_ed25519([B[I[BI[B)I

    const/4 p0, 0x0

    .line 63
    invoke-static {v1, p0, v0}, Lorg/libsodium/jni/crypto/Util;->slice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/libsodium/jni/keys/SigningKey;->seed:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lorg/libsodium/jni/encoders/Encoder;->HEX:Lorg/libsodium/jni/encoders/Hex;

    iget-object p0, p0, Lorg/libsodium/jni/keys/SigningKey;->seed:[B

    invoke-virtual {v0, p0}, Lorg/libsodium/jni/encoders/Hex;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
