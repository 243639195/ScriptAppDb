.class Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/TwitterHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/TwitterHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/TwitterHandle;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;-><init>(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method

.method private checkDone(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "twitter://callback"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const-string v3, "oauth_verifier"

    invoke-static {v0, p1, v3}, Lcom/androidquery/auth/TwitterHandle;->access$13(Lcom/androidquery/auth/TwitterHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {v0}, Lcom/androidquery/auth/TwitterHandle;->access$12(Lcom/androidquery/auth/TwitterHandle;)V

    .line 234
    new-instance v0, Lcom/androidquery/auth/TwitterHandle$Task2;

    iget-object v3, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/androidquery/auth/TwitterHandle$Task2;-><init>(Lcom/androidquery/auth/TwitterHandle;Lcom/androidquery/auth/TwitterHandle$Task2;)V

    .line 235
    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/androidquery/auth/TwitterHandle$Task2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_0
    const-string v0, "twitter://cancel"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {p1}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "finished"

    .line 267
    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {p1}, Lcom/androidquery/auth/TwitterHandle;->access$5(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "started"

    .line 256
    invoke-static {v0, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0, p2}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->this$0:Lcom/androidquery/auth/TwitterHandle;

    invoke-static {p1}, Lcom/androidquery/auth/TwitterHandle;->access$6(Lcom/androidquery/auth/TwitterHandle;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 250
    invoke-direct {p0, p2}, Lcom/androidquery/auth/TwitterHandle$TwWebViewClient;->checkDone(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
