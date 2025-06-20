.class Lcom/umeng/commonsdk/framework/d$2;
.super Landroid/os/Handler;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/framework/d;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/d;Landroid/os/Looper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/umeng/commonsdk/framework/d$2;->a:Lcom/umeng/commonsdk/framework/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 141
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x111

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->g()V

    goto :goto_0

    :cond_1
    const-string p1, "--->>> handleMessage: recv MSG_PROCESS_NEXT msg."

    .line 143
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->f()V

    :goto_0
    return-void
.end method
