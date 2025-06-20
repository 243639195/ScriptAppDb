.class public final Lcom/cyjh/mobileanjian/ipc/a/b$b;
.super Ljava/lang/Thread;
.source "ScriptRunnerLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/a/b;


# direct methods
.method private constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/a/b$b;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/mobileanjian/ipc/a/b;B)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/a/b$b;-><init>(Lcom/cyjh/mobileanjian/ipc/a/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$b;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    .line 1028
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a/b;->e:Lcom/cyjh/mq/sdk/entity/Script4Run;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 76
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/a/b$b;->a:Lcom/cyjh/mobileanjian/ipc/a/b;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/a/b;->a(Lcom/cyjh/mobileanjian/ipc/a/b;)V

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 78
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
