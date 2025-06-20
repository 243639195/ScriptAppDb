.class Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;
.super Lcom/cyjh/share/counttimer/SecondTimer;
.source "SplashAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseButtonTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;I)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    .line 620
    invoke-direct {p0, p2}, Lcom/cyjh/share/counttimer/SecondTimer;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;ILcom/ds/daisi/activity/news/SplashAppActivity$1;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;-><init>(Lcom/ds/daisi/activity/news/SplashAppActivity;I)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$300(Lcom/ds/daisi/activity/news/SplashAppActivity;)V

    return-void
.end method

.method protected onTick(I)V
    .locals 0

    .line 624
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1208(Lcom/ds/daisi/activity/news/SplashAppActivity;)I

    return-void
.end method
