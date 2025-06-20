.class Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;
.super Lcom/cyjh/share/counttimer/SecondTimer;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseButtonTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;I)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    .line 1144
    invoke-direct {p0, p2}, Lcom/cyjh/share/counttimer/SecondTimer;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;ILcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 1142
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;I)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1200(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method

.method protected onTick(I)V
    .locals 0

    .line 1149
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$CloseButtonTimer;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$3008(Lcom/ds/daisi/activity/news/SplashActivity;)I

    return-void
.end method
