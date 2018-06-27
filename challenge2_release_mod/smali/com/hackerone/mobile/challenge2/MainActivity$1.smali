	.class Lcom/hackerone/mobile/challenge2/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/andrognito/pinlockview/PinLockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hackerone/mobile/challenge2/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hackerone/mobile/challenge2/MainActivity;


# direct methods
.method constructor <init>(Lcom/hackerone/mobile/challenge2/MainActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    iget-object v0, v0, Lcom/hackerone/mobile/challenge2/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    invoke-virtual {v0, p1}, Lcom/hackerone/mobile/challenge2/MainActivity;->getKey(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "TEST"

    .line 35
    invoke-static {p1}, Lcom/hackerone/mobile/challenge2/MainActivity;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lorg/libsodium/jni/crypto/SecretBox;

    invoke-direct {v0, p1}, Lorg/libsodium/jni/crypto/SecretBox;-><init>([B)V

    const-string p1, "aabbccddeeffgghhaabbccdd"

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    invoke-static {p0}, Lcom/hackerone/mobile/challenge2/MainActivity;->access$000(Lcom/hackerone/mobile/challenge2/MainActivity;)[B

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/libsodium/jni/crypto/SecretBox;->decrypt([B[B)[B

    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "DECRYPTED"

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PROBLEM"

    const-string v0, "Unable to decrypt text"

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEmpty()V
	.locals 1

	invoke-virtual {p0}, Lcom/hackerone/mobile/challenge2/MainActivity$1;->hack()V

    return-void
.end method

.method public hack()V
	.locals 8

    .prologue
    .line 15
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const v0, 0xf4240

    if-ge v1, v0, :cond_2f

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_26

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 20
    :cond_26

	const-string v4, "TRYING"

	invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

	iget-object v4, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    invoke-virtual {v4, v0}, Lcom/hackerone/mobile/challenge2/MainActivity;->getKey(Ljava/lang/String;)[B

    move-result-object v0

	new-instance v4, Lorg/libsodium/jni/crypto/SecretBox;

    invoke-direct {v4, v0}, Lorg/libsodium/jni/crypto/SecretBox;-><init>([B)V

    const-string v5, "aabbccddeeffgghhaabbccdd"
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5


	:try_start_0
    iget-object v6, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    invoke-static {v6}, Lcom/hackerone/mobile/challenge2/MainActivity;->access$000(Lcom/hackerone/mobile/challenge2/MainActivity;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/libsodium/jni/crypto/SecretBox;->decrypt([B[B)[B

    move-result-object v6

    .line 44
    new-instance v5, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v6, "DECRYPTED"

    .line 46
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :cond_2f

    :catch_0
    move-exception v7

    const-string v5, "PROBLEM"

    const-string v4, "Unable to decrypt text"

    .line 48
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 22
    :cond_2f
    return-void
.end method

.method public onPinChange(ILjava/lang/String;)V
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/hackerone/mobile/challenge2/MainActivity$1;->this$0:Lcom/hackerone/mobile/challenge2/MainActivity;

    iget-object p0, p0, Lcom/hackerone/mobile/challenge2/MainActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pin changed, new length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with intermediate pin "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
