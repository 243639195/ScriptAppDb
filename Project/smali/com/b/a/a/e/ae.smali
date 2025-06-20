.class final Lcom/b/a/a/e/ae;
.super Lcom/b/b/a;
.source "Http2Stream.java"


# instance fields
.field final synthetic a:Lcom/b/a/a/e/ab;


# direct methods
.method constructor <init>(Lcom/b/a/a/e/ab;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/b/a/a/e/ae;->a:Lcom/b/a/a/e/ab;

    invoke-direct {p0}, Lcom/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 593
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected final a()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/b/a/a/e/ae;->a:Lcom/b/a/a/e/ab;

    sget-object v1, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/ab;->b(Lcom/b/a/a/e/b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/b/a/a/e/ae;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/e/ae;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method
