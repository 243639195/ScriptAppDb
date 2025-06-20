.class public Lmobi/oneway/export/g/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmobi/oneway/export/g/c;->c:I

    iput-boolean v0, p0, Lmobi/oneway/export/g/c;->d:Z

    iput-object p1, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v2, [I

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    iput-boolean v6, p0, Lmobi/oneway/export/g/c;->d:Z

    return-void

    :cond_2
    int-to-char v4, v4

    sget-object v7, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v5, :cond_4

    sget-char v7, Lmobi/oneway/export/g/q;->b:C

    if-ne v4, v7, :cond_3

    goto :goto_0

    :cond_3
    const/16 v7, 0xd

    if-eq v4, v7, :cond_5

    const/16 v7, 0xa

    if-eq v4, v7, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    add-int/lit8 v7, v3, 0x1

    aput-char v4, v1, v3

    move v3, v7

    :cond_5
    if-lt v3, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    aget-char v7, v1, v3

    sget-char v8, Lmobi/oneway/export/g/q;->b:C

    if-eq v7, v8, :cond_6

    if-eqz v4, :cond_7

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v4, :cond_7

    const/4 v4, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    aget-char v4, v1, v3

    sget-char v7, Lmobi/oneway/export/g/q;->b:C

    const/4 v8, 0x2

    if-ne v4, v7, :cond_b

    iget-object v4, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iput-boolean v6, p0, Lmobi/oneway/export/g/c;->d:Z

    aget-char v4, v1, v8

    sget-char v5, Lmobi/oneway/export/g/q;->b:C

    if-ne v4, v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x2

    goto :goto_2

    :cond_b
    const/4 v6, 0x3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v0, :cond_d

    aget-char v7, v1, v4

    sget-char v9, Lmobi/oneway/export/g/q;->b:C

    if-eq v7, v9, :cond_c

    sget-object v7, Lmobi/oneway/export/g/q;->a:Ljava/lang/String;

    aget-char v9, v1, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    rsub-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x6

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    new-array v0, v6, [I

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    :goto_4
    if-ge v2, v6, :cond_e

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    rsub-int/lit8 v1, v2, 0x2

    mul-int/lit8 v1, v1, 0x8

    ushr-int v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/g/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lmobi/oneway/export/g/c;->c:I

    iget-object v1, p0, Lmobi/oneway/export/g/c;->b:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    iget v1, p0, Lmobi/oneway/export/g/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/g/c;->c:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-boolean v0, p0, Lmobi/oneway/export/g/c;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lmobi/oneway/export/g/c;->a()V

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    array-length v0, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    return v1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lmobi/oneway/export/g/c;->c:I

    iget-object v0, p0, Lmobi/oneway/export/g/c;->b:[I

    iget v1, p0, Lmobi/oneway/export/g/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmobi/oneway/export/g/c;->c:I

    aget v0, v0, v1

    return v0
.end method
