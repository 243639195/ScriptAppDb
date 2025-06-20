.class final Lcom/cyjh/mq/d/e$b;
.super Ljava/lang/Thread;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Process;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Process;I)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/cyjh/mq/d/e$b;->a:Ljava/lang/Process;

    .line 245
    iput p2, p0, Lcom/cyjh/mq/d/e$b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 250
    :try_start_0
    iget v0, p0, Lcom/cyjh/mq/d/e$b;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cyjh/mq/d/e$b;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 255
    :goto_0
    invoke-static {}, Lcom/cyjh/mq/d/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/cyjh/mq/d/e$b;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-void
.end method
