.class public abstract Lcom/google/a/j;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/a/j;->a:I

    .line 35
    iput p2, p0, Lcom/google/a/j;->b:I

    return-void
.end method

.method private g()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/a/j;->a:I

    return v0
.end method

.method private h()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/a/j;->b:I

    return v0
.end method


# virtual methods
.method public a(IIII)Lcom/google/a/j;
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This luminance source does not support cropping."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a()[B
.end method

.method public abstract a(I[B)[B
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/google/a/j;
    .locals 1

    .line 109
    new-instance v0, Lcom/google/a/i;

    invoke-direct {v0, p0}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public e()Lcom/google/a/j;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lcom/google/a/j;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 134
    iget v0, p0, Lcom/google/a/j;->a:I

    new-array v0, v0, [B

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/a/j;->b:I

    iget v3, p0, Lcom/google/a/j;->a:I

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget v4, p0, Lcom/google/a/j;->b:I

    if-ge v0, v4, :cond_4

    .line 137
    invoke-virtual {p0, v0, v3}, Lcom/google/a/j;->a(I[B)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 138
    :goto_1
    iget v5, p0, Lcom/google/a/j;->a:I

    if-ge v4, v5, :cond_3

    .line 139
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x40

    if-ge v5, v6, :cond_0

    const/16 v5, 0x23

    goto :goto_2

    :cond_0
    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    const/16 v5, 0x2b

    goto :goto_2

    :cond_1
    const/16 v6, 0xc0

    if-ge v5, v6, :cond_2

    const/16 v5, 0x2e

    goto :goto_2

    :cond_2
    const/16 v5, 0x20

    .line 150
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0xa

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
