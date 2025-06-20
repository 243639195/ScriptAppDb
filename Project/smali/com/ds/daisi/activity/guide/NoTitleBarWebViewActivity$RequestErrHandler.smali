.class Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;
.super Landroid/os/Handler;
.source "NoTitleBarWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestErrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;->this$0:Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity$RequestErrHandler;-><init>(Lcom/ds/daisi/activity/guide/NoTitleBarWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-void
.end method
