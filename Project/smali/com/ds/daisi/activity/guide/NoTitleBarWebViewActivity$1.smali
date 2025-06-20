.class Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
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

    .line 86
    iput-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$000(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$000(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$000(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {p1, p2}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$102(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$200(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openFileChooser"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;->access$302(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return-void
.end method
