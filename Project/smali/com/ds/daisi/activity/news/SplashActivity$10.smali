.class Lcom/ds/daisi/activity/news/SplashActivity$10;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->reportLogInfo(Ljava/lang/String;)V
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

    .line 831
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$10;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 3

    .line 839
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLogInfo --> error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V
    .locals 1

    .line 834
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reportLogInfo --> finish "

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .line 831
    check-cast p1, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/news/SplashActivity$10;->finish(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V

    return-void
.end method
