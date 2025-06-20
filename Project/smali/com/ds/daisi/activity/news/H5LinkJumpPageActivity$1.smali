.class Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;
.super Landroid/webkit/WebViewClient;
.source "H5LinkJumpPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->initData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;->this$0:Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
