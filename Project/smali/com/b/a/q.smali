.class public final Lcom/b/a/q;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# instance fields
.field a:Z

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Lcom/b/a/p;)V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iget-boolean v0, p1, Lcom/b/a/p;->d:Z

    iput-boolean v0, p0, Lcom/b/a/q;->a:Z

    .line 265
    iget-object v0, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/q;->b:[Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/q;->c:[Ljava/lang/String;

    .line 267
    iget-boolean p1, p1, Lcom/b/a/p;->e:Z

    iput-boolean p1, p0, Lcom/b/a/q;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-boolean p1, p0, Lcom/b/a/q;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/q;
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/b/a/q;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/b/a/q;->d:Z

    return-object p0
.end method

.method public final varargs a([Lcom/b/a/ax;)Lcom/b/a/q;
    .locals 3

    .line 304
    iget-boolean v0, p0, Lcom/b/a/q;->a:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 307
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 308
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/b/a/ax;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0, v0}, Lcom/b/a/q;->b([Ljava/lang/String;)Lcom/b/a/q;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a([Ljava/lang/String;)Lcom/b/a/q;
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/b/a/q;->a:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 290
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/b/a/q;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/b/a/p;
    .locals 1

    .line 332
    new-instance v0, Lcom/b/a/p;

    invoke-direct {v0, p0}, Lcom/b/a/p;-><init>(Lcom/b/a/q;)V

    return-object v0
.end method

.method public final varargs b([Ljava/lang/String;)Lcom/b/a/q;
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/b/a/q;->a:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 318
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/b/a/q;->c:[Ljava/lang/String;

    return-object p0
.end method
