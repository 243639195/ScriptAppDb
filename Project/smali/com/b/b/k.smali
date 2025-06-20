.class public final Lcom/b/b/k;
.super Lcom/b/b/y;
.source "ForwardingTimeout.java"


# instance fields
.field private a:Lcom/b/b/y;


# direct methods
.method public constructor <init>(Lcom/b/b/y;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/b/b/y;-><init>()V

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/b/y;)Lcom/b/b/k;
    .locals 1

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-object p0
.end method

.method public final a()Lcom/b/b/y;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    return-object v0
.end method

.method public final a(J)Lcom/b/b/y;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;

    move-result-object p1

    return-object p1
.end method

.method public final b_()J
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c_()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->c_()Z

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d_()Lcom/b/b/y;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->d_()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Lcom/b/b/y;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final f_()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/b/b/k;->a:Lcom/b/b/y;

    invoke-virtual {v0}, Lcom/b/b/y;->f_()V

    return-void
.end method
