.class public final Lcom/google/a/i;
.super Lcom/google/a/j;
.source "InvertedLuminanceSource.java"


# instance fields
.field private final c:Lcom/google/a/j;


# direct methods
.method public constructor <init>(Lcom/google/a/j;)V
    .locals 2

    .line 1066
    iget v0, p1, Lcom/google/a/j;->a:I

    .line 1073
    iget v1, p1, Lcom/google/a/j;->b:I

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/google/a/j;-><init>(II)V

    .line 31
    iput-object p1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    return-void
.end method


# virtual methods
.method public final a(IIII)Lcom/google/a/j;
    .locals 2

    .line 62
    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/a/j;->a(IIII)Lcom/google/a/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final a()[B
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->a()[B

    move-result-object v0

    .line 3066
    iget v1, p0, Lcom/google/a/j;->a:I

    .line 3073
    iget v2, p0, Lcom/google/a/j;->b:I

    mul-int v1, v1, v2

    .line 48
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 50
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final a(I[B)[B
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/j;->a(I[B)[B

    move-result-object p1

    .line 2066
    iget p2, p0, Lcom/google/a/j;->a:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 39
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/a/j;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    return-object v0
.end method

.method public final e()Lcom/google/a/j;
    .locals 2

    .line 80
    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1}, Lcom/google/a/j;->e()Lcom/google/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final f()Lcom/google/a/j;
    .locals 2

    .line 85
    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1}, Lcom/google/a/j;->f()Lcom/google/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method
