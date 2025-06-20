.class final Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper$2;
.super Ljava/lang/Object;
.source "AnalyseResultWrapper.java"

# interfaces
.implements Lcom/goldcoast/sdk/domain/AnalyseResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->resultBuilder(Landroid/content/Context;)Lcom/goldcoast/sdk/domain/AnalyseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 54
    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onProgress(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 49
    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/stuff/AnalyseResultWrapper;->a(Ljava/lang/String;I)V

    return-void
.end method
