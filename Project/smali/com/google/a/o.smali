.class public final Lcom/google/a/o;
.super Lcom/google/a/j;
.source "RGBLuminanceSource.java"


# instance fields
.field private final c:[B

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/a/j;-><init>(II)V

    .line 37
    iput p1, p0, Lcom/google/a/o;->d:I

    .line 38
    iput p2, p0, Lcom/google/a/o;->e:I

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/a/o;->f:I

    .line 40
    iput v0, p0, Lcom/google/a/o;->g:I

    mul-int p1, p1, p2

    .line 47
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/a/o;->c:[B

    :goto_0
    if-ge v0, p1, :cond_0

    .line 49
    aget p2, p3, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x7

    and-int/lit16 v2, v2, 0x1fe

    and-int/lit16 p2, p2, 0xff

    .line 54
    iget-object v3, p0, Lcom/google/a/o;->c:[B

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x4

    int-to-byte p2, v1

    aput-byte p2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 0

    .line 65
    invoke-direct {p0, p6, p7}, Lcom/google/a/j;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_1

    add-int/2addr p7, p5

    if-le p7, p3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/google/a/o;->c:[B

    .line 70
    iput p2, p0, Lcom/google/a/o;->d:I

    .line 71
    iput p3, p0, Lcom/google/a/o;->e:I

    .line 72
    iput p4, p0, Lcom/google/a/o;->f:I

    .line 73
    iput p5, p0, Lcom/google/a/o;->g:I

    return-void

    .line 67
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(IIII)Lcom/google/a/j;
    .locals 9

    .line 127
    new-instance v8, Lcom/google/a/o;

    iget-object v1, p0, Lcom/google/a/o;->c:[B

    iget v2, p0, Lcom/google/a/o;->d:I

    iget v3, p0, Lcom/google/a/o;->e:I

    iget v0, p0, Lcom/google/a/o;->f:I

    add-int v4, v0, p1

    iget p1, p0, Lcom/google/a/o;->g:I

    add-int v5, p1, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/a/o;-><init>([BIIIIII)V

    return-object v8
.end method

.method public final a()[B
    .locals 7

    .line 3066
    iget v0, p0, Lcom/google/a/j;->a:I

    .line 3073
    iget v1, p0, Lcom/google/a/j;->b:I

    .line 97
    iget v2, p0, Lcom/google/a/o;->d:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/google/a/o;->e:I

    if-ne v1, v2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/a/o;->c:[B

    return-object v0

    :cond_0
    mul-int v2, v0, v1

    .line 102
    new-array v3, v2, [B

    .line 103
    iget v4, p0, Lcom/google/a/o;->g:I

    iget v5, p0, Lcom/google/a/o;->d:I

    mul-int v4, v4, v5

    iget v5, p0, Lcom/google/a/o;->f:I

    add-int/2addr v4, v5

    .line 106
    iget v5, p0, Lcom/google/a/o;->d:I

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/a/o;->c:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    .line 114
    iget-object v5, p0, Lcom/google/a/o;->c:[B

    invoke-static {v5, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v2, p0, Lcom/google/a/o;->d:I

    add-int/2addr v4, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public final a(I[B)[B
    .locals 3

    if-ltz p1, :cond_3

    .line 1073
    iget v0, p0, Lcom/google/a/j;->b:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2066
    :cond_0
    iget v0, p0, Lcom/google/a/j;->a:I

    if-eqz p2, :cond_1

    .line 82
    array-length v1, p2

    if-ge v1, v0, :cond_2

    .line 83
    :cond_1
    new-array p2, v0, [B

    .line 85
    :cond_2
    iget v1, p0, Lcom/google/a/o;->g:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/a/o;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/a/o;->f:I

    add-int/2addr p1, v1

    .line 86
    iget-object v1, p0, Lcom/google/a/o;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 79
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested row is outside the image: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
