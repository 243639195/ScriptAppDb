.class Lcom/iflytek/voiceads/bridge/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/d;->b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/d;->b:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->b(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;Ljava/lang/String;)V

    return-void
.end method
