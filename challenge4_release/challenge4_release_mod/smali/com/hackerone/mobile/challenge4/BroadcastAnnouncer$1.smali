.class Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;
.super Ljava/lang/Thread;
.source "BroadcastAnnouncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->save(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;


# direct methods
.method constructor <init>(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;->this$0:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;->this$0:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-static {v2}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->access$000(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/announce?val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;->this$0:Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;

    invoke-static {p0}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->access$100(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-void
.end method
