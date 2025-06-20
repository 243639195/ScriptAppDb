.class Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "NoTitleBarWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$200(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished --> url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p4, 0x4

    .line 132
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 134
    iput p2, p1, Landroid/os/Message;->what:I

    .line 135
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    new-instance p2, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;

    iget-object p3, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;-><init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;)V

    invoke-virtual {p2, p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://"

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    iget-object p2, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$2;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-virtual {p2, p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return v1

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
