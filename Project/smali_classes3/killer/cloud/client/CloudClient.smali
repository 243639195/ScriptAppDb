.class public Lkiller/cloud/client/CloudClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "CloudClient.java"


# static fields
.field private static final RECONNECT_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CloudClient"


# instance fields
.field public cloudDevice:Lkiller/core/entity/CloudDevice;

.field private final cloudService:Lkiller/cloud/client/CloudService;

.field private handler:Landroid/os/Handler;

.field private final heartbeatRunnable:Ljava/lang/Runnable;

.field public isLogin:Z

.field private reconnect:Z

.field private final reconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;

    .prologue
    const/4 v1, 0x1

    .line 44
    new-instance v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    .line 19
    iput-boolean v1, p0, Lkiller/cloud/client/CloudClient;->reconnect:Z

    .line 21
    iput-boolean v1, p0, Lkiller/cloud/client/CloudClient;->isLogin:Z

    .line 23
    new-instance v0, Lkiller/cloud/client/CloudClient$1;

    invoke-direct {v0, p0}, Lkiller/cloud/client/CloudClient$1;-><init>(Lkiller/cloud/client/CloudClient;)V

    iput-object v0, p0, Lkiller/cloud/client/CloudClient;->reconnectRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lkiller/cloud/client/CloudClient$2;

    invoke-direct {v0, p0}, Lkiller/cloud/client/CloudClient$2;-><init>(Lkiller/cloud/client/CloudClient;)V

    iput-object v0, p0, Lkiller/cloud/client/CloudClient;->heartbeatRunnable:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    .line 46
    invoke-static {}, Lkiller/cloud/client/CloudService;->get()Lkiller/cloud/client/CloudService;

    move-result-object v0

    iput-object v0, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lkiller/cloud/client/CloudClient;)Z
    .locals 1
    .param p0, "x0"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 13
    iget-boolean v0, p0, Lkiller/cloud/client/CloudClient;->reconnect:Z

    return v0
.end method

.method static synthetic access$100(Lkiller/cloud/client/CloudClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lkiller/cloud/client/CloudClient;

    .prologue
    .line 13
    iget-object v0, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private reconnectWs()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p0, Lkiller/cloud/client/CloudClient;->reconnect:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->reconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public closeClient()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lkiller/cloud/client/CloudClient;->isLogin:Z

    .line 98
    iput-boolean v0, p0, Lkiller/cloud/client/CloudClient;->reconnect:Z

    .line 99
    iget-object v0, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lkiller/cloud/client/CloudClient;->close()V

    .line 101
    return-void
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkiller/cloud/client/CloudClient;->isLogin:Z

    .line 88
    invoke-direct {p0}, Lkiller/cloud/client/CloudClient;->reconnectWs()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 94
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 56
    const-string v1, "pong"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 59
    :cond_0
    const-class v1, Lkiller/cloud/client/CloudMessage;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiller/cloud/client/CloudMessage;

    .line 60
    .local v0, "cloudMessage":Lkiller/cloud/client/CloudMessage;
    iget v1, v0, Lkiller/cloud/client/CloudMessage;->action:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 78
    :sswitch_0
    invoke-virtual {p0}, Lkiller/cloud/client/CloudClient;->closeClient()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\u4e91\u63a7]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lkiller/cloud/client/CloudMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v1, v2, v3, v3}, Lkiller/elfin/util/ToastUtil;->toast(Ljava/lang/String;III)V

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v1, v0}, Lkiller/cloud/client/CloudService;->commandSaveScriptCfg(Lkiller/cloud/client/CloudMessage;)V

    goto :goto_0

    .line 65
    :sswitch_2
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v1}, Lkiller/cloud/client/CloudService;->commandScriptStop()V

    goto :goto_0

    .line 68
    :sswitch_3
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v1}, Lkiller/cloud/client/CloudService;->commandScriptStart()V

    goto :goto_0

    .line 71
    :sswitch_4
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lkiller/cloud/client/CloudClient;->heartbeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v1, p0, v0}, Lkiller/cloud/client/CloudService;->loginSuccess(Lkiller/cloud/client/CloudClient;Lkiller/cloud/client/CloudMessage;)V

    goto :goto_0

    .line 75
    :sswitch_5
    iget-object v1, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v1, v0}, Lkiller/cloud/client/CloudService;->commandHotUpdate(Lkiller/cloud/client/CloudMessage;)V

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x44e -> :sswitch_4
        0xc1d -> :sswitch_3
        0xc1e -> :sswitch_2
        0xce4 -> :sswitch_1
        0x9c42 -> :sswitch_5
    .end sparse-switch
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 51
    iget-object v0, p0, Lkiller/cloud/client/CloudClient;->cloudService:Lkiller/cloud/client/CloudService;

    invoke-virtual {v0, p0}, Lkiller/cloud/client/CloudService;->login(Lkiller/cloud/client/CloudClient;)V

    .line 52
    return-void
.end method

.method public sendCloudMessage(Lkiller/cloud/client/CloudMessage;)V
    .locals 1
    .param p1, "message"    # Lkiller/cloud/client/CloudMessage;

    .prologue
    .line 111
    invoke-virtual {p0}, Lkiller/cloud/client/CloudClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkiller/cloud/client/CloudClient;->send(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
