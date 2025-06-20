.class public Lcom/iflytek/voiceads/bridge/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/voiceads/bridge/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

.field private c:Lcom/iflytek/voiceads/a/a;

.field private d:Lcom/iflytek/voiceads/bridge/b$a;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/b;->b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/iflytek/voiceads/download/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voiceRecord.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/voiceads/bridge/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/voiceads/bridge/b;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/iflytek/voiceads/bridge/b;)Lcom/iflytek/voiceads/bridge/DSBridgeWebView;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/voiceads/bridge/b;->e:Z

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->d:Lcom/iflytek/voiceads/bridge/b$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->d:Lcom/iflytek/voiceads/bridge/b$a;

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->c:Lcom/iflytek/voiceads/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->c:Lcom/iflytek/voiceads/a/a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/voiceads/bridge/b;->c:Lcom/iflytek/voiceads/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecordExcept:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
