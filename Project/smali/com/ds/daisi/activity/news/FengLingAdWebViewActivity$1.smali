.class Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "FengLingAdWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$000(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$000(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$000(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Landroid/widget/ProgressBar;

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

    .line 110
    iget-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {p1, p2}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$102(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

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

    .line 116
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$200(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "openFileChooser"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;->access$302(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    return-void
.end method
