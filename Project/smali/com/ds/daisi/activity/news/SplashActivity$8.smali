.class Lcom/ds/daisi/activity/news/SplashActivity$8;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->parseJson(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$8;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    iput-object p2, p0, Lcom/ds/daisi/activity/news/SplashActivity$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 604
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$8;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/ds/daisi/activity/news/SplashActivity$8;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    new-instance v3, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;

    iget-object v4, p0, Lcom/ds/daisi/activity/news/SplashActivity$8;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/ds/daisi/activity/news/SplashActivity$MyKnownButtonListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/ds/daisi/activity/news/SplashActivity$1;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ds/daisi/manager/DialogManager;->displayDialogMessage(ILjava/lang/String;Landroid/content/Context;Lcom/ds/daisi/listener/BaseTextViewKnownListener;)V

    return-void
.end method
