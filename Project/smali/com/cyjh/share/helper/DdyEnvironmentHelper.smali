.class public Lcom/cyjh/share/helper/DdyEnvironmentHelper;
.super Ljava/lang/Object;
.source "DdyEnvironmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/helper/DdyEnvironmentHelper$OnDetectedListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "DdyEnvironmentHelper"

.field private static instance:Lcom/cyjh/share/helper/DdyEnvironmentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/cyjh/share/helper/DdyEnvironmentHelper;
    .locals 2

    .line 22
    sget-object v0, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->instance:Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->instance:Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    invoke-direct {v1}, Lcom/cyjh/share/helper/DdyEnvironmentHelper;-><init>()V

    sput-object v1, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->instance:Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/cyjh/share/helper/DdyEnvironmentHelper;->instance:Lcom/cyjh/share/helper/DdyEnvironmentHelper;

    return-object v0
.end method


# virtual methods
.method public isDdy()Z
    .locals 3

    const-string v0, "getprop phone.id"

    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 33
    invoke-static {v0, v1, v2}, Lcom/cyjh/share/util/ShellUtils;->execCommand(Ljava/lang/String;ZI)Lcom/cyjh/share/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 34
    iget-object v2, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/cyjh/share/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
