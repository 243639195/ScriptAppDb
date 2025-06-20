.class Lcom/iflytek/voiceads/bridge/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/iflytek/voiceads/bridge/h;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/bridge/h;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/bridge/k;->c:Lcom/iflytek/voiceads/bridge/h;

    iput-object p2, p0, Lcom/iflytek/voiceads/bridge/k;->a:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lcom/iflytek/voiceads/bridge/k;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/k;->c:Lcom/iflytek/voiceads/bridge/h;

    iget-object v0, v0, Lcom/iflytek/voiceads/bridge/h;->a:Lcom/iflytek/voiceads/bridge/DSBridgeWebView;

    invoke-static {v0}, Lcom/iflytek/voiceads/bridge/DSBridgeWebView;->d(Lcom/iflytek/voiceads/bridge/DSBridgeWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/k;->a:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/iflytek/voiceads/bridge/k;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/voiceads/bridge/k;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    goto :goto_0
.end method
