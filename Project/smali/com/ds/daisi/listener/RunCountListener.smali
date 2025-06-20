.class public Lcom/ds/daisi/listener/RunCountListener;
.super Ljava/lang/Object;
.source "RunCountListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/listener/RunCountListener$CountListener;
    }
.end annotation


# instance fields
.field private countListener:Lcom/ds/daisi/listener/RunCountListener$CountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scriptCountHandler(Landroid/content/Context;)Z
    .locals 7

    .line 21
    check-cast p1, Lcom/ds/daisi/AppContext;

    .line 22
    iget v0, p1, Lcom/ds/daisi/AppContext;->payCheckType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 23
    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    const-string v0, "sciprt_user_type"

    const-string v3, ""

    .line 24
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "script_try_count"

    const-string v4, ""

    .line 25
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz v4, :cond_2

    if-nez v4, :cond_0

    .line 30
    iget-object p1, p0, Lcom/ds/daisi/listener/RunCountListener;->countListener:Lcom/ds/daisi/listener/RunCountListener$CountListener;

    invoke-interface {p1}, Lcom/ds/daisi/listener/RunCountListener$CountListener;->onZeroOfCountListener()V

    return v2

    :cond_0
    const-string v0, "script_count_use"

    .line 33
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "xys"

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",scriptTryCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v4, v2

    if-le p1, v4, :cond_2

    .line 36
    iget-object p1, p0, Lcom/ds/daisi/listener/RunCountListener;->countListener:Lcom/ds/daisi/listener/RunCountListener$CountListener;

    invoke-interface {p1}, Lcom/ds/daisi/listener/RunCountListener$CountListener;->onMoreCountListener()V

    return v2

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/listener/RunCountListener;->countListener:Lcom/ds/daisi/listener/RunCountListener$CountListener;

    invoke-interface {p1}, Lcom/ds/daisi/listener/RunCountListener$CountListener;->onEmptyValueListener()V

    return v2

    :cond_2
    return v1
.end method

.method public setCountListener(Lcom/ds/daisi/listener/RunCountListener$CountListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/ds/daisi/listener/RunCountListener;->countListener:Lcom/ds/daisi/listener/RunCountListener$CountListener;

    return-void
.end method
