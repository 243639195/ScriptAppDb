.class Lcom/ds/daisi/activity/news/SplashAppActivity$4;
.super Lcom/ds/daisi/listener/IFLYADListener;
.source "SplashAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashAppActivity;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-direct {p0}, Lcom/ds/daisi/listener/IFLYADListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/iflytek/voiceads/config/AdError;)V
    .locals 3

    const-string v0, "zzz"

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SplashActivity---onAdFailed\uff0c\u5f00\u59cb\u52a0\u8f7d\u540e\u53f0\u914d\u7f6e\u7684\u5e7f\u544a---3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/voiceads/config/AdError;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$400(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAdLoaded(Lcom/iflytek/voiceads/conn/NativeDataRef;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1102(Lcom/ds/daisi/activity/news/SplashAppActivity;Lcom/iflytek/voiceads/conn/NativeDataRef;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    const-string p1, "zzz"

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashActivity---onAdLoaded---2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v1}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1100(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashAppActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashAppActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$1100(Lcom/ds/daisi/activity/news/SplashAppActivity;)Lcom/iflytek/voiceads/conn/NativeDataRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/voiceads/conn/NativeDataRef;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ds/daisi/activity/news/SplashAppActivity;->access$900(Lcom/ds/daisi/activity/news/SplashAppActivity;Ljava/lang/String;)V

    return-void
.end method
