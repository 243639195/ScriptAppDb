.class public final Lcom/cyjh/mq/c/b;
.super Lcom/cyjh/mq/c/a;
.source "IpcConnection.java"


# static fields
.field private static final t:I = 0x1000

.field private static final u:I = 0x400


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/content/Context;

.field public d:Z

.field public e:Z

.field f:Lcom/cyjh/mq/b/a;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

.field public i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

.field j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

.field k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

.field public l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

.field n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

.field public o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

.field public q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

.field r:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

.field private v:Lcom/cyjh/mq/c/d;

.field private w:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/LocalSocket;)V
    .locals 2

    .line 113
    invoke-direct {p0, p2}, Lcom/cyjh/mq/c/a;-><init>(Landroid/net/LocalSocket;)V

    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->b:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    .line 57
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    .line 58
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->d:Z

    .line 59
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->e:Z

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    .line 67
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    .line 68
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    .line 69
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    .line 70
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 71
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 80
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 82
    new-instance p2, Lcom/cyjh/mq/c/b$1;

    const-string v1, "send_thread"

    invoke-direct {p2, p0, v1}, Lcom/cyjh/mq/c/b$1;-><init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    .line 177
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    .line 114
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    .line 115
    new-instance p2, Lcom/cyjh/mq/c/d;

    invoke-direct {p2, p1, p0}, Lcom/cyjh/mq/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;)V
    .locals 2

    .line 106
    invoke-direct {p0, p2}, Lcom/cyjh/mq/c/a;-><init>(Ljava/net/Socket;)V

    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->b:Z

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    .line 57
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    .line 58
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->d:Z

    .line 59
    iput-boolean p2, p0, Lcom/cyjh/mq/c/b;->e:Z

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    .line 67
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    .line 68
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    .line 69
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    .line 70
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    .line 71
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 80
    new-instance p2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 82
    new-instance p2, Lcom/cyjh/mq/c/b$1;

    const-string v1, "send_thread"

    invoke-direct {p2, p0, v1}, Lcom/cyjh/mq/c/b$1;-><init>(Lcom/cyjh/mq/c/b;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    .line 177
    iput-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    .line 107
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    .line 108
    new-instance p2, Lcom/cyjh/mq/c/d;

    invoke-direct {p2, p1, p0}, Lcom/cyjh/mq/c/d;-><init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V

    iput-object p2, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-void
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/cyjh/mq/b/a;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;",
            ">;)V"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/cyjh/mq/c/b;->e:Z

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mq/c/b;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/cyjh/mq/c/b;->a:Z

    return p0
.end method

.method private static synthetic b(Lcom/cyjh/mq/c/b;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private b(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/cyjh/mq/c/b;->d:Z

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mq/c/b;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    return-object p0
.end method

.method private c()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->b:Z

    return v0
.end method

.method private d()I
    .locals 2

    const/4 v0, 0x4

    .line 126
    new-array v0, v0, [B

    .line 127
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 129
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static synthetic d(Lcom/cyjh/mq/c/b;)Lcom/cyjh/mq/b/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-object p0
.end method

.method private static synthetic e(Lcom/cyjh/mq/c/b;)Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object p0
.end method

.method private e()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 3

    const/4 v0, 0x4

    .line 1126
    new-array v0, v0, [B

    .line 1127
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1129
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/cyjh/mq/c/b;->a()V

    .line 141
    invoke-direct {p0}, Lcom/cyjh/mq/c/b;->v()V

    return-object v1

    .line 145
    :cond_1
    new-array v0, v0, [B

    .line 146
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a([B)I

    move-result v2

    if-gez v2, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/cyjh/mq/c/b;->a()V

    .line 150
    invoke-direct {p0}, Lcom/cyjh/mq/c/b;->v()V

    return-object v1

    .line 156
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 159
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private static synthetic f(Lcom/cyjh/mq/c/b;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/cyjh/mq/c/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method private f()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    return-object v0
.end method

.method private g()Lcom/cyjh/mq/b/a;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->e:Z

    return v0
.end method

.method private i()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/cyjh/mq/c/b;->d:Z

    return v0
.end method

.method private j()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/cyjh/mobileanjian/ipc/interfaces/ScriptStateObserver;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->w:Ljava/util/Vector;

    return-object v0
.end method

.method private k()Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    return-object v0
.end method

.method private l()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    return-object v0
.end method

.method private m()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    return-object v0
.end method

.method private n()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-object v0
.end method

.method private o()Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    return-object v0
.end method

.method private p()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->m:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;

    return-object v0
.end method

.method private q()Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->n:Lcom/cyjh/mobileanjian/ipc/interfaces/OnMqScriptCallback;

    return-object v0
.end method

.method private r()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    return-object v0
.end method

.method private s()Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    return-object v0
.end method

.method private t()V
    .locals 1

    .line 356
    new-instance v0, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v0, p0}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    .line 369
    invoke-virtual {v0}, Lcom/cyjh/mq/c/b$2;->start()V

    return-void
.end method

.method private u()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    .line 376
    invoke-interface {v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onExit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    .line 383
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/b;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/b;-><init>()V

    .line 384
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v1

    .line 17012
    iput-boolean v1, v0, Lcom/cyjh/mobileanjian/ipc/b;->a:Z

    .line 386
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mq/sdk/MqRunner;->isScriptStarted()Z

    move-result v1

    const/16 v2, 0x3ea

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    .line 17767
    iget-object v1, v1, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    if-eqz v1, :cond_0

    const-string v1, "JAVA_RUNNER"

    const-string v3, "ScriptRunnerLite WHAT_STOP root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    .line 392
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->k:Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;

    const-string v3, "root\u8fdb\u7a0b\u5f02\u5e38\u7ec8\u6b62"

    invoke-interface {v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/interfaces/BasicScriptListener;->onStopScript(ILjava/lang/String;)V

    .line 396
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/cyjh/mq/c/b$3;

    invoke-direct {v3, p0}, Lcom/cyjh/mq/c/b$3;-><init>(Lcom/cyjh/mq/c/b;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18243
    :cond_1
    iget-boolean v1, p0, Lcom/cyjh/mq/c/b;->d:Z

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 19238
    iput-boolean v1, p0, Lcom/cyjh/mq/c/b;->d:Z

    .line 413
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    invoke-interface {v1, v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotFailed(I)V

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    .line 418
    invoke-interface {v2, v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onCrash(Lcom/cyjh/mobileanjian/ipc/b;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private w()Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/cyjh/mq/c/a;->a()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 v0, 0x3

    .line 214
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mq/c/b;->r:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 15

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/cyjh/mq/c/b;->b:Z

    .line 196
    iget-object v1, p0, Lcom/cyjh/mq/c/b;->x:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 197
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Lcom/cyjh/mq/c/b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 199
    invoke-direct {p0}, Lcom/cyjh/mq/c/b;->e()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    .line 200
    iget-object v3, p0, Lcom/cyjh/mq/c/b;->v:Lcom/cyjh/mq/c/d;

    if-eqz v1, :cond_0

    .line 1305
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 2296
    iget-object v4, v4, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    .line 1306
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v5

    const/4 v6, 0x2

    packed-switch v5, :pswitch_data_0

    const/16 v7, 0x10

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1309
    :sswitch_0
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 2374
    iget-object v1, v1, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    .line 2376
    invoke-interface {v2}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onExit()V

    goto :goto_1

    .line 12651
    :sswitch_1
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 13316
    iget-object v2, v2, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v2, :cond_0

    .line 12653
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 1368
    :sswitch_2
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1499
    :sswitch_3
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1505
    :sswitch_4
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1390
    :sswitch_5
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v11

    .line 1391
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    .line 1390
    invoke-static/range {v9 .. v14}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    .line 1392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retObj = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1398
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v4

    .line 1399
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v5

    .line 1400
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v6

    .line 1401
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 1405
    :try_start_0
    sget-object v6, Lcom/cyjh/mq/c/d$2;->a:[I

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_6

    goto :goto_3

    :pswitch_1
    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_2

    .line 1423
    :cond_1
    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_3

    .line 1420
    :pswitch_2
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_3

    .line 1417
    :pswitch_3
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_3

    .line 1414
    :pswitch_4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_3

    .line 1411
    :pswitch_5
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_3

    .line 1408
    :pswitch_6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 1429
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1431
    :goto_3
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    if-eq v4, v2, :cond_2

    .line 1432
    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    .line 1436
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 1439
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_0

    .line 1443
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 6658
    :sswitch_6
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    .line 6659
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    .line 6660
    invoke-virtual {v1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v6

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    .line 6661
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 6662
    iget-object v5, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 7306
    iget-object v5, v5, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v6, :cond_3

    .line 6664
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 8238
    iput-boolean v2, v3, Lcom/cyjh/mq/c/b;->d:Z

    :cond_3
    if-eqz v5, :cond_0

    .line 6666
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 1380
    :sswitch_7
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    .line 1382
    invoke-interface {v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onFinishRecord(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    :sswitch_8
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-eqz v4, :cond_0

    .line 1377
    invoke-interface {v4, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onStartRecord(I)V

    goto/16 :goto_0

    :sswitch_9
    if-eqz v4, :cond_0

    .line 1372
    invoke-interface {v4}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onOpenRecord()V

    goto/16 :goto_0

    .line 2589
    :sswitch_a
    new-instance v4, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v4}, Lcom/cyjh/mq/b/a$a;-><init>()V

    .line 2590
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    .line 3032
    iput v5, v4, Lcom/cyjh/mq/b/a$a;->a:I

    .line 2591
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    .line 3037
    iput v5, v4, Lcom/cyjh/mq/b/a$a;->b:I

    .line 2592
    invoke-virtual {v1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 3042
    :goto_5
    iput-boolean v1, v4, Lcom/cyjh/mq/b/a$a;->c:Z

    .line 3047
    new-instance v1, Lcom/cyjh/mq/b/a;

    invoke-direct {v1, v4, v2}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    .line 2594
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 3223
    iput-object v1, v2, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    .line 1313
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 3356
    new-instance v2, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v2, v1}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    .line 3369
    invoke-virtual {v2}, Lcom/cyjh/mq/c/b$2;->start()V

    goto/16 :goto_0

    .line 1575
    :pswitch_7
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v3, v4, v1}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1571
    :pswitch_8
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 1572
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->k()V

    goto/16 :goto_0

    .line 1568
    :pswitch_9
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1557
    :pswitch_a
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2Bytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v4, v2, v5, v1}, Lcom/cyjh/mq/c/d;->a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET_OCR_TEXT"

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strOrcText:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6d

    .line 1561
    invoke-virtual {v2, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    .line 1562
    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 1563
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    .line 1564
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 1548
    :pswitch_b
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6c

    .line 1550
    invoke-virtual {v2, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    .line 1551
    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    .line 1553
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 1540
    :pswitch_c
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/cyjh/mobileanjian/ipc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1541
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6b

    .line 1542
    invoke-virtual {v2, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    .line 1543
    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 1544
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    .line 1545
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 1532
    :pswitch_d
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->i()Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    const/16 v4, 0x6a

    .line 1534
    invoke-virtual {v2, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v2

    .line 1535
    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 1536
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    .line 1537
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v2, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 1520
    :pswitch_e
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_5

    const/4 v2, 0x1

    .line 1521
    :cond_5
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    .line 15385
    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15386
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "state"

    .line 15387
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15388
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1528
    :pswitch_f
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_6

    const/4 v2, 0x1

    .line 1529
    :cond_6
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    xor-int/2addr v2, v0

    .line 16394
    iget-object v1, v1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1524
    :pswitch_10
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    if-ne v1, v0, :cond_7

    const/4 v2, 0x1

    .line 15850
    :cond_7
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 15851
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .line 1517
    :pswitch_11
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    .line 14844
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_data like \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14845
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v1, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14846
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1514
    :pswitch_12
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    .line 14827
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14829
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 14830
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "title"

    .line 14831
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_display_name"

    .line 14832
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "video/3gp"

    .line 14833
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "datetaken"

    .line 14834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "date_modified"

    .line 14835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "date_added"

    .line 14836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "_data"

    .line 14837
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_size"

    .line 14838
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14839
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 14840
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1511
    :pswitch_13
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1508
    :pswitch_14
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1502
    :pswitch_15
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1496
    :pswitch_16
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1493
    :pswitch_17
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1460
    :pswitch_18
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v3, 0x12

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1490
    :pswitch_19
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->e(I)V

    goto/16 :goto_0

    .line 1487
    :pswitch_1a
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->d(I)V

    goto/16 :goto_0

    .line 1484
    :pswitch_1b
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->c(I)V

    goto/16 :goto_0

    .line 1481
    :pswitch_1c
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->h()V

    goto/16 :goto_0

    .line 1478
    :pswitch_1d
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->g()V

    goto/16 :goto_0

    .line 1474
    :pswitch_1e
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1471
    :pswitch_1f
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1468
    :pswitch_20
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1352
    :pswitch_21
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    goto/16 :goto_0

    .line 1451
    :pswitch_22
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 14186
    iget-object v3, v3, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    .line 1451
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;->onRpcReturn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4613
    :pswitch_23
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4609
    :pswitch_24
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1455
    :pswitch_25
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->e()V

    goto/16 :goto_0

    .line 1385
    :pswitch_26
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v7, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1361
    :pswitch_27
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1364
    :pswitch_28
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    .line 11211
    iget-object v2, v4, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    .line 12036
    iget-object v4, v2, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v4, :cond_8

    .line 12038
    iget-object v2, v2, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 12040
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1365
    :cond_8
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/16 v2, 0x26

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    goto/16 :goto_0

    .line 1355
    :pswitch_29
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->b(I)V

    goto/16 :goto_0

    .line 1358
    :pswitch_2a
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->a(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1349
    :pswitch_2b
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/a;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1346
    :pswitch_2c
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cyjh/mobileanjian/ipc/a;->a(I)V

    goto/16 :goto_0

    .line 1331
    :pswitch_2d
    iget-object v2, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 5644
    :pswitch_2e
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 6316
    iget-object v3, v3, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v3, :cond_0

    .line 5646
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8671
    :pswitch_2f
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    .line 8672
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    shl-int/2addr v2, v7

    or-int/2addr v2, v4

    .line 8673
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 8674
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 9347
    iget-object v3, v3, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v3, :cond_0

    .line 8676
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 9680
    :pswitch_30
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 10347
    iget-object v3, v3, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v3, :cond_0

    .line 9682
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4621
    :pswitch_31
    iget-object v4, v3, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    .line 4622
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    .line 4624
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v4

    .line 4625
    iget-object v5, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 5228
    iput-boolean v2, v5, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v5, 0x69

    if-eq v4, v5, :cond_9

    if-nez v4, :cond_a

    .line 4628
    :cond_9
    sget v5, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {v3, v5}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 4639
    :cond_a
    iget-object v3, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1328
    :pswitch_32
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3603
    :pswitch_33
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 4228
    iput-boolean v0, v1, Lcom/cyjh/mq/c/b;->e:Z

    .line 3604
    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {v3, v1}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 3605
    iget-object v1, v3, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 202
    :cond_b
    iput-boolean v2, p0, Lcom/cyjh/mq/c/b;->b:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x40
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x62
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_a
        0x13 -> :sswitch_9
        0x15 -> :sswitch_8
        0x17 -> :sswitch_7
        0x19 -> :sswitch_6
        0x30 -> :sswitch_5
        0x51 -> :sswitch_4
        0x60 -> :sswitch_3
        0x81 -> :sswitch_2
        0x101 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
