.class public Lcom/cyjh/share/manager/ActivitysManager;
.super Ljava/lang/Object;
.source "ActivitysManager.java"


# static fields
.field private static activityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/cyjh/share/manager/ActivitysManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->instance:Lcom/cyjh/share/manager/ActivitysManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/cyjh/share/manager/ActivitysManager;

    invoke-direct {v0}, Lcom/cyjh/share/manager/ActivitysManager;-><init>()V

    sput-object v0, Lcom/cyjh/share/manager/ActivitysManager;->instance:Lcom/cyjh/share/manager/ActivitysManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->instance:Lcom/cyjh/share/manager/ActivitysManager;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    .line 41
    :cond_0
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    .line 48
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public finishActivity()V
    .locals 1

    .line 73
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 74
    invoke-virtual {p0, v0}, Lcom/cyjh/share/manager/ActivitysManager;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public finishActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public finishActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0, v1}, Lcom/cyjh/share/manager/ActivitysManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishAllActivity()V
    .locals 3

    .line 117
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    sget-object v2, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    sget-object v2, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    sget-object v2, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public finishOthersActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/cyjh/share/manager/ActivitysManager;->activityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lcom/cyjh/share/manager/ActivitysManager;->finishActivity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method
