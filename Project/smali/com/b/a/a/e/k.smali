.class final Lcom/b/a/a/e/k;
.super Lcom/b/a/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/b/a/a/e/b;

.field final synthetic d:Lcom/b/a/a/e/j;


# direct methods
.method varargs constructor <init>(Lcom/b/a/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/e/b;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/b/a/a/e/k;->d:Lcom/b/a/a/e/j;

    iput p4, p0, Lcom/b/a/a/e/k;->a:I

    iput-object p5, p0, Lcom/b/a/a/e/k;->c:Lcom/b/a/a/e/b;

    invoke-direct {p0, p2, p3}, Lcom/b/a/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/e/k;->d:Lcom/b/a/a/e/j;

    iget v1, p0, Lcom/b/a/a/e/k;->a:I

    iget-object v2, p0, Lcom/b/a/a/e/k;->c:Lcom/b/a/a/e/b;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e/j;->b(ILcom/b/a/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method
