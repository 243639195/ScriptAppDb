.class Lcom/iflytek/voiceads/bridge/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/g;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/g;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->a(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/g;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)V

    return-void
.end method
