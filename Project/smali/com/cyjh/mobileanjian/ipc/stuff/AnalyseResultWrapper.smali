.class public Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;
.super Ljava/lang/Object;
.source "AnalyseResultWrapper.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .line 15
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 3

    .line 1066
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1069
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1070
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    .line 1071
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "status"

    .line 1072
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1073
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1074
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 3

    .line 66
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    .line 71
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "status"

    .line 72
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 74
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;
    .locals 0

    .line 34
    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    .line 35
    new-instance p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;-><init>()V

    return-object p0
.end method

.method public static resultBuilder(Landroid/content/Context;Landroid/os/Handler;)Lcom/goldcoast/sdk/domain/AnalyseResult;
    .locals 1

    .line 59
    sput-object p0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    .line 61
    sput-object p1, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->b:Landroid/os/Handler;

    .line 62
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;

    move-result-object p0

    return-object p0
.end method
