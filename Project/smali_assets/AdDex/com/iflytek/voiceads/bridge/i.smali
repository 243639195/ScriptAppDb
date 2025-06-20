.class Lcom/iflytek/voiceads/bridge/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/iflytek/voiceads/bridge/h;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/h;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/i;->b:Lcom/iflytek/voiceads/bridge/h;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/i;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/i;->b:Lcom/iflytek/voiceads/bridge/h;

    iget-object v0, v0, Lcom/iflytek/voiceads/bridge/h;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/i;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method
