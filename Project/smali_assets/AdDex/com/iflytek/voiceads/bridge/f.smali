.class Lcom/iflytek/voiceads/bridge/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/f;->c:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/voiceads/bridge/f;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/f;->a:Ljava/lang/String;

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/f;->c:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/bridge/f;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/f;->c:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/f;->c:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/voiceads/bridge/f;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
