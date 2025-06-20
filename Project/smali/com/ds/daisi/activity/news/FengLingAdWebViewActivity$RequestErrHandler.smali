.class Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$RequestErrHandler;
.super Landroid/os/Handler;
.source "FengLingAdWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestErrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$RequestErrHandler;->this$0:Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$1;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity$RequestErrHandler;-><init>(Lcom/ds/daisi/activity/news/FengLingAdWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-void
.end method
