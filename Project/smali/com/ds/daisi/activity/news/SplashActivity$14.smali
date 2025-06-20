.class Lcom/ds/daisi/activity/news/SplashActivity$14;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->getFeLingAdInfoOperate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ds/daisi/mvp/managers/Callback<",
        "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 3

    .line 1233
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u98ce\u7075\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25 message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 1234
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFeLingAdInfoOperate --> error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const/16 v0, 0x66

    invoke-static {p1, v0}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2800(Lcom/ds/daisi/activity/news/SplashActivity;I)V

    .line 1236
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    const-string v1, "\u98ce\u7075\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlToast;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 1221
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getFeLingAdInfoOperate --> finish"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$3202(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/FengLingAdInfo;)Lcom/cyjh/share/bean/response/FengLingAdInfo;

    .line 1223
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->getImgs()Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->getSrc()Ljava/lang/String;

    move-result-object p1

    .line 1224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$1200(Lcom/ds/daisi/activity/news/SplashActivity;)V

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$14;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2700(Lcom/ds/daisi/activity/news/SplashActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 1217
    check-cast p1, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$14;->finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V

    return-void
.end method
