.class Lcom/ds/daisi/activity/news/SplashActivity$15;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->displayAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$15;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1278
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$15;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$3300(Lcom/ds/daisi/activity/news/SplashActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
