.class Lcom/iflytek/voiceads/bridge/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/iflytek/voiceads/bridge/h;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/h;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/j;->b:Lcom/iflytek/voiceads/bridge/h;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/j;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/j;->b:Lcom/iflytek/voiceads/bridge/h;

    iget-object v0, v0, Lcom/iflytek/voiceads/bridge/h;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/j;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/j;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0
.end method
