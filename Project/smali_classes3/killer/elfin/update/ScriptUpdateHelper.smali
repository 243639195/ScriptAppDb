.class public Lkiller/elfin/update/ScriptUpdateHelper;
.super Ljava/lang/Object;
.source "ScriptUpdateHelper.java"


# static fields
.field private static instance:Lkiller/elfin/update/ScriptUpdateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lkiller/elfin/update/ScriptUpdateHelper;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lkiller/elfin/update/ScriptUpdateHelper;->instance:Lkiller/elfin/update/ScriptUpdateHelper;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lkiller/elfin/update/ScriptUpdateHelper;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lkiller/elfin/update/ScriptUpdateHelper;->instance:Lkiller/elfin/update/ScriptUpdateHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lkiller/elfin/update/ScriptUpdateHelper;

    invoke-direct {v0}, Lkiller/elfin/update/ScriptUpdateHelper;-><init>()V

    sput-object v0, Lkiller/elfin/update/ScriptUpdateHelper;->instance:Lkiller/elfin/update/ScriptUpdateHelper;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lkiller/elfin/update/ScriptUpdateHelper;->instance:Lkiller/elfin/update/ScriptUpdateHelper;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public updateScript(Ljava/lang/String;J)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "version"    # J

    .prologue
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkiller/elfin/update/ScriptUpdateHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lkiller/elfin/update/ScriptUpdateHelper$1;-><init>(Lkiller/elfin/update/ScriptUpdateHelper;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    :cond_0
    return-void
.end method
