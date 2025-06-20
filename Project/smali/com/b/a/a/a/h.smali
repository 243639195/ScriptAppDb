.class final Lcom/b/a/a/a/h;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lcom/b/a/a/a/g;


# virtual methods
.method final a(Lcom/b/b/g;)V
    .locals 6

    .line 1009
    iget-object v0, p0, Lcom/b/a/a/a/h;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 1010
    invoke-interface {p1, v5}, Lcom/b/b/g;->h(I)Lcom/b/b/g;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/b/b/g;->j(J)Lcom/b/b/g;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
