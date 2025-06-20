.class public final Lcom/b/b/f;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lcom/b/b/g;
.implements Lcom/b/b/h;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:Lcom/b/b/t;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/b/b/f;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 609
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    if-nez p3, :cond_0

    .line 610
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 612
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const-string p1, ""

    return-object p1

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 617
    iget v1, v0, Lcom/b/b/t;->b:I

    int-to-long v1, v1

    add-long v3, v1, p1

    iget v1, v0, Lcom/b/b/t;->c:I

    int-to-long v1, v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 619
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 622
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/b/b/t;->a:[B

    iget v3, v0, Lcom/b/b/t;->b:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    iget p3, v0, Lcom/b/b/t;->b:I

    int-to-long v2, p3

    add-long v4, v2, p1

    long-to-int p3, v4

    iput p3, v0, Lcom/b/b/t;->b:I

    .line 624
    iget-wide v2, p0, Lcom/b/b/f;->b:J

    sub-long v4, v2, p1

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    .line 626
    iget p1, v0, Lcom/b/b/t;->b:I

    iget p2, v0, Lcom/b/b/t;->c:I

    if-ne p1, p2, :cond_4

    .line 627
    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p1

    iput-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 628
    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_4
    return-object v1
.end method

.method private c([B)V
    .locals 10

    const/4 v0, 0x0

    .line 770
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 771
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 3778
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lcom/b/b/aa;->a(JJJ)V

    .line 3780
    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    .line 3782
    :cond_0
    iget v4, v2, Lcom/b/b/t;->c:I

    iget v5, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3783
    iget-object v4, v2, Lcom/b/b/t;->a:[B

    iget v5, v2, Lcom/b/b/t;->b:I

    invoke-static {v4, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3785
    iget v4, v2, Lcom/b/b/t;->b:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/b/b/t;->b:I

    .line 3786
    iget-wide v4, p0, Lcom/b/b/f;->b:J

    int-to-long v6, v1

    sub-long v8, v4, v6

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    .line 3788
    iget v4, v2, Lcom/b/b/t;->b:I

    iget v5, v2, Lcom/b/b/t;->c:I

    if-ne v4, v5, :cond_1

    .line 3789
    invoke-virtual {v2}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v4

    iput-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 3790
    invoke-static {v2}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_1
    :goto_1
    if-ne v1, v3, :cond_2

    .line 772
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private k(J)Ljava/lang/String;
    .locals 1

    .line 597
    sget-object v0, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(B)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1266
    invoke-virtual {p0, p1, v0, v1}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(BJ)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1274
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fromIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1282
    :cond_0
    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    return-wide v3

    .line 1286
    :cond_1
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v7, v5, p2

    cmp-long v5, v7, p2

    if-gez v5, :cond_2

    .line 1288
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    :goto_0
    cmp-long v5, v0, p2

    if-lez v5, :cond_3

    .line 1290
    iget-object v2, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 1291
    iget v5, v2, Lcom/b/b/t;->c:I

    iget v6, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long v7, v0, v5

    move-wide v0, v7

    goto :goto_0

    .line 1296
    :cond_2
    :goto_1
    iget v5, v2, Lcom/b/b/t;->c:I

    iget v6, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long v7, v0, v5

    cmp-long v5, v7, p2

    if-gez v5, :cond_3

    .line 1297
    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide v0, v7

    goto :goto_1

    .line 1304
    :cond_3
    :goto_2
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_6

    .line 1305
    iget-object v5, v2, Lcom/b/b/t;->a:[B

    .line 1306
    iget v6, v2, Lcom/b/b/t;->b:I

    int-to-long v6, v6

    add-long v8, v6, p2

    sub-long p2, v8, v0

    long-to-int p2, p2

    iget p3, v2, Lcom/b/b/t;->c:I

    :goto_3
    if-ge p2, p3, :cond_5

    .line 1307
    aget-byte v6, v5, p2

    if-ne v6, p1, :cond_4

    .line 1308
    iget p1, v2, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p1

    int-to-long p1, p2

    add-long v2, p1, v0

    return-wide v2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1313
    :cond_5
    iget p2, v2, Lcom/b/b/t;->c:I

    iget p3, v2, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long v5, v0, p2

    .line 1315
    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v5

    move-wide v0, p2

    goto :goto_2

    :cond_6
    return-wide v3
.end method

.method public final a(Lcom/b/b/f;J)J
    .locals 5

    if-nez p1, :cond_0

    .line 1257
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 1258
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1259
    :cond_1
    iget-wide v2, p0, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const-wide/16 p1, -0x1

    return-wide p1

    .line 1260
    :cond_2
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    iget-wide p2, p0, Lcom/b/b/f;->b:J

    .line 1261
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lcom/b/b/f;->a_(Lcom/b/b/f;J)V

    return-wide p2
.end method

.method public final a(Lcom/b/b/x;)J
    .locals 7

    if-nez p1, :cond_0

    .line 994
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 996
    invoke-interface {p1, p0, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    add-long v4, v0, v2

    move-wide v0, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a(I)Lcom/b/b/f;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 915
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 919
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 920
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_3

    const v1, 0xd800

    if-lt p1, v1, :cond_2

    const v1, 0xdfff

    if-gt p1, v1, :cond_2

    .line 924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 929
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 930
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 931
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_0

    :cond_3
    const v1, 0x10ffff

    if-gt p1, v1, :cond_4

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 935
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 936
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 937
    invoke-virtual {p0, v1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 938
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    :goto_0
    return-object p0

    .line 941
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/b/b/f;JJ)Lcom/b/b/f;
    .locals 8

    if-nez p1, :cond_0

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    return-object p0

    .line 174
    :cond_1
    iget-wide v2, p1, Lcom/b/b/f;->b:J

    add-long v4, v2, p4

    iput-wide v4, p1, Lcom/b/b/f;->b:J

    .line 177
    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 178
    :goto_0
    iget v3, v2, Lcom/b/b/t;->c:I

    iget v4, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    .line 179
    iget v3, v2, Lcom/b/b/t;->c:I

    iget v4, v2, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v5, p2, v3

    .line 178
    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v5

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_4

    .line 184
    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v2}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    .line 185
    iget v4, v3, Lcom/b/b/t;->b:I

    int-to-long v4, v4

    add-long v6, v4, p2

    long-to-int p2, v6

    iput p2, v3, Lcom/b/b/t;->b:I

    .line 186
    iget p2, v3, Lcom/b/b/t;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lcom/b/b/t;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lcom/b/b/t;->c:I

    .line 187
    iget-object p2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez p2, :cond_3

    .line 188
    iput-object v3, v3, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v3, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    goto :goto_2

    .line 190
    :cond_3
    iget-object p2, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object p2, p2, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {p2, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    .line 192
    :goto_2
    iget p2, v3, Lcom/b/b/t;->c:I

    iget p3, v3, Lcom/b/b/t;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long v3, p4, p2

    .line 183
    iget-object v2, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p2, v0

    move-wide p4, v3

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public final a(Lcom/b/b/i;)Lcom/b/b/f;
    .locals 1

    if-nez p1, :cond_0

    .line 827
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteString == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 828
    :cond_0
    invoke-virtual {p1, p0}, Lcom/b/b/i;->a(Lcom/b/b/f;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/b/f;
    .locals 2

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)Lcom/b/b/f;
    .locals 7

    if-nez p1, :cond_0

    .line 837
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-gez p2, :cond_1

    .line 838
    new-instance p1, Ljava/lang/IllegalAccessError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "beginIndex < 0: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ge p3, p2, :cond_2

    .line 840
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex < beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 842
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 843
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex > string.length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    if-ge p2, p3, :cond_c

    .line 849
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_5

    const/4 v2, 0x1

    .line 852
    invoke-virtual {p0, v2}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v2

    .line 853
    iget-object v3, v2, Lcom/b/b/t;->a:[B

    .line 854
    iget v4, v2, Lcom/b/b/t;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 855
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 858
    aput-byte v0, v3, p2

    :goto_1
    move p2, v6

    if-ge p2, v5, :cond_4

    .line 863
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_4

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 865
    aput-byte v0, v3, p2

    goto :goto_1

    :cond_4
    add-int/2addr v4, p2

    .line 868
    iget v0, v2, Lcom/b/b/t;->c:I

    sub-int/2addr v4, v0

    .line 869
    iget v0, v2, Lcom/b/b/t;->c:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/b/b/t;->c:I

    .line 870
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    int-to-long v2, v4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    goto :goto_0

    :cond_5
    const/16 v2, 0x800

    if-ge v0, v2, :cond_6

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 874
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 875
    invoke-virtual {p0, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b

    const v2, 0xdfff

    if-le v0, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_8

    .line 888
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    const v6, 0xdbff

    if-gt v0, v6, :cond_a

    const v6, 0xdc00

    if-lt v5, v6, :cond_a

    if-le v5, v2, :cond_9

    goto :goto_3

    :cond_9
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 901
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 902
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 903
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 904
    invoke-virtual {p0, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 890
    :cond_a
    :goto_3
    invoke-virtual {p0, v3}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move p2, v4

    goto/16 :goto_0

    :cond_b
    :goto_4
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 880
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 881
    invoke-virtual {p0, v2}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 882
    invoke-virtual {p0, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final a([B)Lcom/b/b/f;
    .locals 2

    if-nez p1, :cond_0

    .line 970
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 971
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final a([BII)Lcom/b/b/f;
    .locals 9

    if-nez p1, :cond_0

    .line 975
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 976
    :cond_0
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/b/b/aa;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    const/4 v0, 0x1

    .line 980
    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    sub-int v1, p3, p2

    .line 982
    iget v2, v0, Lcom/b/b/t;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 983
    iget-object v2, v0, Lcom/b/b/t;->a:[B

    iget v3, v0, Lcom/b/b/t;->c:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 986
    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/b/b/t;->c:I

    goto :goto_0

    .line 989
    :cond_1
    iget-wide p1, p0, Lcom/b/b/f;->b:J

    add-long v0, p1, v7

    iput-wide v0, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final a()Lcom/b/b/y;
    .locals 1

    .line 1512
    sget-object v0, Lcom/b/b/y;->b:Lcom/b/b/y;

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 602
    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 604
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .line 105
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method public final a_(Lcom/b/b/f;J)V
    .locals 8

    if-nez p1, :cond_0

    .line 1216
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-ne p1, p0, :cond_1

    .line 1217
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1218
    :cond_1
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_d

    .line 1222
    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->c:I

    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    const/4 v0, 0x0

    if-gez v2, :cond_8

    .line 1223
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1224
    iget-boolean v2, v1, Lcom/b/b/t;->e:Z

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/b/b/t;->c:I

    int-to-long v2, v2

    add-long v4, p2, v2

    iget-boolean v2, v1, Lcom/b/b/t;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget v2, v1, Lcom/b/b/t;->b:I

    :goto_2
    int-to-long v2, v2

    sub-long v6, v4, v2

    const-wide/16 v2, 0x2000

    cmp-long v4, v6, v2

    if-gtz v4, :cond_4

    .line 1227
    iget-object v0, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/b/b/t;->a(Lcom/b/b/t;I)V

    .line 1228
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    sub-long v2, v0, p2

    iput-wide v2, p1, Lcom/b/b/f;->b:J

    .line 1229
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    add-long v2, v0, p2

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-void

    .line 1234
    :cond_4
    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    long-to-int v2, p2

    if-lez v2, :cond_7

    .line 4113
    iget v3, v1, Lcom/b/b/t;->c:I

    iget v4, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    goto :goto_4

    :cond_5
    const/16 v3, 0x400

    if-lt v2, v3, :cond_6

    .line 4122
    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v1}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    goto :goto_3

    .line 4124
    :cond_6
    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object v3

    .line 4125
    iget-object v4, v1, Lcom/b/b/t;->a:[B

    iget v5, v1, Lcom/b/b/t;->b:I

    iget-object v6, v3, Lcom/b/b/t;->a:[B

    invoke-static {v4, v5, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4128
    :goto_3
    iget v4, v3, Lcom/b/b/t;->b:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/b/b/t;->c:I

    .line 4129
    iget v4, v1, Lcom/b/b/t;->b:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/b/b/t;->b:I

    .line 4130
    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v1, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    .line 1234
    iput-object v3, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    goto :goto_5

    .line 4113
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1239
    :cond_8
    :goto_5
    iget-object v1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1240
    iget v2, v1, Lcom/b/b/t;->c:I

    iget v3, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1241
    invoke-virtual {v1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v4

    iput-object v4, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1242
    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v4, :cond_9

    .line 1243
    iput-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1244
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v4, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_7

    .line 1246
    :cond_9
    iget-object v4, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v4, v4, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 1247
    invoke-virtual {v4, v1}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    move-result-object v1

    .line 4139
    iget-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    if-ne v4, v1, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4140
    :cond_a
    iget-object v4, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-boolean v4, v4, Lcom/b/b/t;->e:Z

    if-eqz v4, :cond_c

    .line 4141
    iget v4, v1, Lcom/b/b/t;->c:I

    iget v5, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v4, v5

    .line 4142
    iget-object v5, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v5, v5, Lcom/b/b/t;->c:I

    rsub-int v5, v5, 0x2000

    iget-object v6, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-boolean v6, v6, Lcom/b/b/t;->d:Z

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->b:I

    :goto_6
    add-int/2addr v5, v0

    if-gt v4, v5, :cond_c

    .line 4144
    iget-object v0, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    invoke-virtual {v1, v0, v4}, Lcom/b/b/t;->a(Lcom/b/b/t;I)V

    .line 4145
    invoke-virtual {v1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    .line 4146
    invoke-static {v1}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    .line 1250
    :cond_c
    :goto_7
    iget-wide v0, p1, Lcom/b/b/f;->b:J

    sub-long v4, v0, v2

    iput-wide v4, p1, Lcom/b/b/f;->b:J

    .line 1251
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    sub-long v0, p2, v2

    move-wide p2, v0

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final b(J)B
    .locals 6

    .line 298
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    .line 299
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 300
    :goto_0
    iget v1, v0, Lcom/b/b/t;->c:I

    iget v2, v0, Lcom/b/b/t;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 301
    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v0, v0, Lcom/b/b/t;->b:I

    long-to-int p1, p1

    add-int/2addr v0, p1

    aget-byte p1, v1, v0

    return p1

    :cond_0
    const/4 v3, 0x0

    sub-long v3, p1, v1

    .line 299
    iget-object v0, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    move-wide p1, v3

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    return-wide v0
.end method

.method public final b(I)Lcom/b/b/f;
    .locals 6

    const/4 v0, 0x1

    .line 1012
    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    .line 1013
    iget-object v1, v0, Lcom/b/b/t;->a:[B

    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/b/b/t;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1014
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/String;)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b([B)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/b/b/f;->a([B)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b([BII)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/b/b/f;->a([BII)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/b/b/i;)Z
    .locals 10

    .line 1458
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    .line 4462
    iget-wide v2, p0, Lcom/b/b/f;->b:J

    const-wide/16 v4, 0x0

    sub-long v6, v2, v4

    int-to-long v2, v0

    cmp-long v8, v6, v2

    if-ltz v8, :cond_3

    .line 4466
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v6, v2

    add-long v8, v6, v4

    .line 4470
    invoke-virtual {p0, v8, v9}, Lcom/b/b/f;->b(J)B

    move-result v3

    add-int/lit8 v6, v2, 0x0

    invoke-virtual {p1, v6}, Lcom/b/b/i;->a(I)B

    move-result v6

    if-eq v3, v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final c()Lcom/b/b/f;
    .locals 0

    return-object p0
.end method

.method public final c(I)Lcom/b/b/f;
    .locals 6

    const/4 v0, 0x2

    .line 1019
    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    .line 1020
    iget-object v1, v0, Lcom/b/b/t;->a:[B

    .line 1021
    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1022
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1023
    aput-byte p1, v1, v3

    .line 1024
    iput v2, v0, Lcom/b/b/t;->c:I

    .line 1025
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final c(J)Lcom/b/b/i;
    .locals 1

    .line 532
    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    .line 5640
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    .line 5641
    iget-wide v1, p0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 5643
    :cond_0
    new-instance v1, Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    invoke-direct {v1, v2}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    iput-object v1, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 5644
    iget-object v1, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v2, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v3, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 5645
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    :goto_0
    iget-object v1, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-eq v1, v2, :cond_1

    .line 5646
    iget-object v2, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v2, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    new-instance v3, Lcom/b/b/t;

    invoke-direct {v3, v1}, Lcom/b/b/t;-><init>(Lcom/b/b/t;)V

    invoke-virtual {v2, v3}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    goto :goto_0

    .line 5648
    :cond_1
    iget-wide v1, p0, Lcom/b/b/f;->b:J

    iput-wide v1, v0, Lcom/b/b/f;->b:J

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(I)Lcom/b/b/f;
    .locals 6

    const/4 v0, 0x4

    .line 1034
    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v0

    .line 1035
    iget-object v1, v0, Lcom/b/b/t;->a:[B

    .line 1036
    iget v2, v0, Lcom/b/b/t;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1037
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1038
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1039
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1040
    aput-byte p1, v1, v3

    .line 1041
    iput v2, v0, Lcom/b/b/t;->c:I

    .line 1042
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x4

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method final d(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x1

    if-lez v2, :cond_0

    sub-long v2, p1, v0

    .line 656
    invoke-virtual {p0, v2, v3}, Lcom/b/b/f;->b(J)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 658
    invoke-direct {p0, v2, v3}, Lcom/b/b/f;->k(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 659
    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->f(J)V

    return-object p1

    .line 664
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/b/b/f;->k(J)Ljava/lang/String;

    move-result-object p1

    .line 665
    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->f(J)V

    return-object p1
.end method

.method public final d()Z
    .locals 5

    .line 101
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()B
    .locals 11

    .line 276
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 279
    iget v1, v0, Lcom/b/b/t;->b:I

    .line 280
    iget v2, v0, Lcom/b/b/t;->c:I

    .line 282
    iget-object v3, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 283
    aget-byte v1, v3, v1

    .line 284
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    iput-wide v9, p0, Lcom/b/b/f;->b:J

    if-ne v4, v2, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 288
    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_0

    .line 290
    :cond_1
    iput v4, v0, Lcom/b/b/t;->b:I

    :goto_0
    return v1
.end method

.method final e(I)Lcom/b/b/t;
    .locals 3

    if-lez p1, :cond_4

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v1, :cond_1

    .line 1154
    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object p1

    iput-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1155
    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iput-object v1, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v1, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    return-object v1

    .line 1158
    :cond_1
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget-object v1, v1, Lcom/b/b/t;->g:Lcom/b/b/t;

    .line 1159
    iget v2, v1, Lcom/b/b/t;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_2

    iget-boolean p1, v1, Lcom/b/b/t;->e:Z

    if-nez p1, :cond_3

    .line 1160
    :cond_2
    invoke-static {}, Lcom/b/b/u;->a()Lcom/b/b/t;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/b/b/t;->a(Lcom/b/b/t;)Lcom/b/b/t;

    move-result-object v1

    :cond_3
    return-object v1

    .line 1151
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final e(J)[B
    .locals 6

    .line 754
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/b/b/aa;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int p1, p1

    .line 759
    new-array p1, p1, [B

    .line 760
    invoke-direct {p0, p1}, Lcom/b/b/f;->c([B)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1586
    :cond_0
    instance-of v1, p1, Lcom/b/b/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1587
    :cond_1
    check-cast p1, Lcom/b/b/f;

    .line 1588
    iget-wide v3, p0, Lcom/b/b/f;->b:J

    iget-wide v5, p1, Lcom/b/b/f;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 1589
    :cond_2
    iget-wide v3, p0, Lcom/b/b/f;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    return v0

    .line 1591
    :cond_3
    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1592
    iget-object p1, p1, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 1593
    iget v3, v1, Lcom/b/b/t;->b:I

    .line 1594
    iget v4, p1, Lcom/b/b/t;->b:I

    .line 1596
    :goto_0
    iget-wide v7, p0, Lcom/b/b/f;->b:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_8

    .line 1597
    iget v7, v1, Lcom/b/b/t;->c:I

    sub-int/2addr v7, v3

    iget v8, p1, Lcom/b/b/t;->c:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    int-to-long v10, v3

    cmp-long v12, v10, v7

    if-gez v12, :cond_5

    .line 1600
    iget-object v10, v1, Lcom/b/b/t;->a:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lcom/b/b/t;->a:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_1

    .line 1603
    :cond_5
    iget v3, v1, Lcom/b/b/t;->c:I

    if-ne v4, v3, :cond_6

    .line 1604
    iget-object v1, v1, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 1605
    iget v3, v1, Lcom/b/b/t;->b:I

    goto :goto_2

    :cond_6
    move v3, v4

    .line 1608
    :goto_2
    iget v4, p1, Lcom/b/b/t;->c:I

    if-ne v9, v4, :cond_7

    .line 1609
    iget-object p1, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 1610
    iget v4, p1, Lcom/b/b/t;->b:I

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    const/4 v9, 0x0

    add-long v9, v5, v7

    move-wide v5, v9

    goto :goto_0

    :cond_8
    return v0
.end method

.method public final synthetic f(I)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/b/b/f;->d(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final f()S
    .locals 10

    .line 307
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 310
    iget v1, v0, Lcom/b/b/t;->b:I

    .line 311
    iget v4, v0, Lcom/b/b/t;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 316
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 320
    :cond_1
    iget-object v5, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 321
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 323
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    if-ne v7, v4, :cond_2

    .line 326
    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 327
    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_0

    .line 329
    :cond_2
    iput v7, v0, Lcom/b/b/t;->b:I

    :goto_0
    int-to-short v0, v1

    return v0
.end method

.method public final f(J)V
    .locals 7

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 811
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v0, :cond_0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v0, v0, Lcom/b/b/t;->c:I

    iget-object v1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget v1, v1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 814
    iget-wide v1, p0, Lcom/b/b/f;->b:J

    int-to-long v3, v0

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v1, p1, v3

    .line 816
    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p2, p1, Lcom/b/b/t;->b:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/b/b/t;->b:I

    .line 818
    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p1, p1, Lcom/b/b/t;->b:I

    iget-object p2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    iget p2, p2, Lcom/b/b/t;->c:I

    if-ne p1, p2, :cond_1

    .line 819
    iget-object p1, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 820
    invoke-virtual {p1}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object p2

    iput-object p2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 821
    invoke-static {p1}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    :cond_1
    move-wide p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g()I
    .locals 10

    .line 336
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 339
    iget v1, v0, Lcom/b/b/t;->b:I

    .line 340
    iget v4, v0, Lcom/b/b/t;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 345
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 346
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lcom/b/b/f;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 350
    :cond_1
    iget-object v5, v0, Lcom/b/b/t;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 351
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 355
    iget-wide v5, p0, Lcom/b/b/f;->b:J

    sub-long v8, v5, v2

    iput-wide v8, p0, Lcom/b/b/f;->b:J

    if-ne v7, v4, :cond_2

    .line 358
    invoke-virtual {v0}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v2

    iput-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 359
    invoke-static {v0}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_0

    .line 361
    :cond_2
    iput v7, v0, Lcom/b/b/t;->b:I

    :goto_0
    return v1
.end method

.method public final g(J)Lcom/b/b/f;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1074
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    cmp-long v3, p1, v0

    const/4 v4, 0x1

    if-gez v3, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 1081
    invoke-virtual {p0, p1}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    cmp-long v3, p1, v5

    const-wide/16 v5, 0xa

    if-gez v3, :cond_a

    const-wide/16 v7, 0x2710

    cmp-long v3, p1, v7

    if-gez v3, :cond_6

    const-wide/16 v7, 0x64

    cmp-long v3, p1, v7

    if-gez v3, :cond_4

    cmp-long v3, p1, v5

    if-gez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v3, 0x3e8

    cmp-long v7, p1, v3

    if-gez v7, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0xf4240

    cmp-long v7, p1, v3

    if-gez v7, :cond_8

    const-wide/32 v3, 0x186a0

    cmp-long v7, p1, v3

    if-gez v7, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v3, 0x989680

    cmp-long v7, p1, v3

    if-gez v7, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v3, 0xe8d4a51000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_e

    const-wide v3, 0x2540be400L

    cmp-long v7, p1, v3

    if-gez v7, :cond_c

    const-wide/32 v3, 0x3b9aca00

    cmp-long v7, p1, v3

    if-gez v7, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v3, 0x174876e800L

    cmp-long v7, p1, v3

    if-gez v7, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_11

    const-wide v3, 0x9184e72a000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v3, 0x5af3107a4000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v3, 0x16345785d8a0000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_13

    const-wide v3, 0x2386f26fc10000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v7, p1, v3

    if-gez v7, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v2, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 1110
    :cond_15
    invoke-virtual {p0, v4}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v3

    .line 1111
    iget-object v7, v3, Lcom/b/b/t;->a:[B

    .line 1112
    iget v8, v3, Lcom/b/b/t;->c:I

    add-int/2addr v8, v4

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1114
    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    .line 1115
    sget-object v10, Lcom/b/b/f;->c:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1116
    div-long/2addr p1, v5

    goto :goto_1

    :cond_16
    if-eqz v2, :cond_17

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1119
    aput-byte p1, v7, v8

    .line 1122
    :cond_17
    iget p1, v3, Lcom/b/b/t;->c:I

    add-int/2addr p1, v4

    iput p1, v3, Lcom/b/b/t;->c:I

    .line 1123
    iget-wide p1, p0, Lcom/b/b/f;->b:J

    int-to-long v0, v4

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic g(I)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/b/b/f;->c(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final h(J)Lcom/b/b/f;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1130
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1

    .line 1133
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1135
    invoke-virtual {p0, v0}, Lcom/b/b/f;->e(I)Lcom/b/b/t;

    move-result-object v2

    .line 1136
    iget-object v3, v2, Lcom/b/b/t;->a:[B

    .line 1137
    iget v4, v2, Lcom/b/b/t;->c:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lcom/b/b/t;->c:I

    :goto_0
    if-lt v4, v5, :cond_1

    .line 1138
    sget-object v6, Lcom/b/b/f;->c:[B

    const-wide/16 v7, 0xf

    and-long v9, p1, v7

    long-to-int v7, v9

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1141
    :cond_1
    iget p1, v2, Lcom/b/b/t;->c:I

    add-int/2addr p1, v0

    iput p1, v2, Lcom/b/b/t;->c:I

    .line 1142
    iget-wide p1, p0, Lcom/b/b/f;->b:J

    int-to-long v0, v0

    add-long v2, p1, v0

    iput-wide v2, p0, Lcom/b/b/f;->b:J

    return-object p0
.end method

.method public final synthetic h(I)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final h()S
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/b/b/f;->f()S

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(S)S

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1618
    iget-object v0, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 1622
    :cond_1
    iget v2, v0, Lcom/b/b/t;->b:I

    iget v3, v0, Lcom/b/b/t;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 1623
    iget-object v4, v0, Lcom/b/b/t;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1625
    :cond_2
    iget-object v0, v0, Lcom/b/b/t;->f:Lcom/b/b/t;

    .line 1626
    iget-object v2, p0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public final i()I
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/b/b/f;->g()I

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(I)I

    move-result v0

    return v0
.end method

.method public final synthetic i(J)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final j()J
    .locals 17

    move-object/from16 v0, p0

    .line 472
    iget-wide v1, v0, Lcom/b/b/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "size == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    move-wide v5, v3

    const/4 v2, 0x0

    .line 479
    :cond_1
    iget-object v7, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 481
    iget-object v8, v7, Lcom/b/b/t;->a:[B

    .line 482
    iget v9, v7, Lcom/b/b/t;->b:I

    .line 483
    iget v10, v7, Lcom/b/b/t;->c:I

    :goto_0
    if-ge v9, v10, :cond_7

    .line 488
    aget-byte v11, v8, v9

    const/16 v12, 0x30

    if-lt v11, v12, :cond_2

    const/16 v12, 0x39

    if-gt v11, v12, :cond_2

    add-int/lit8 v12, v11, -0x30

    goto :goto_1

    :cond_2
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x66

    if-gt v11, v12, :cond_3

    add-int/lit8 v12, v11, -0x61

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    :cond_3
    const/16 v12, 0x41

    if-lt v11, v12, :cond_5

    const/16 v12, 0x46

    if-gt v11, v12, :cond_5

    add-int/lit8 v12, v11, -0x41

    add-int/lit8 v12, v12, 0xa

    :goto_1
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    and-long v15, v5, v13

    cmp-long v13, v15, v3

    if-eqz v13, :cond_4

    .line 507
    new-instance v1, Lcom/b/b/f;

    invoke-direct {v1}, Lcom/b/b/f;-><init>()V

    invoke-virtual {v1, v5, v6}, Lcom/b/b/f;->h(J)Lcom/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move-result-object v1

    .line 508
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v11, 0x4

    shl-long/2addr v5, v11

    int-to-long v11, v12

    or-long v13, v5, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v1, v1, 0x1

    move-wide v5, v13

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 497
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v2, 0x1

    :cond_7
    if-ne v9, v10, :cond_8

    .line 516
    invoke-virtual {v7}, Lcom/b/b/t;->a()Lcom/b/b/t;

    move-result-object v8

    iput-object v8, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    .line 517
    invoke-static {v7}, Lcom/b/b/u;->a(Lcom/b/b/t;)V

    goto :goto_2

    .line 519
    :cond_8
    iput v9, v7, Lcom/b/b/t;->b:I

    :goto_2
    if-nez v2, :cond_9

    .line 521
    iget-object v7, v0, Lcom/b/b/f;->a:Lcom/b/b/t;

    if-nez v7, :cond_1

    .line 523
    :cond_9
    iget-wide v2, v0, Lcom/b/b/f;->b:J

    int-to-long v7, v1

    sub-long v9, v2, v7

    iput-wide v9, v0, Lcom/b/b/f;->b:J

    return-wide v5
.end method

.method public final synthetic j(J)Lcom/b/b/g;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/b/b/f;->g(J)Lcom/b/b/f;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lcom/b/b/i;
    .locals 2

    .line 528
    new-instance v0, Lcom/b/b/i;

    invoke-virtual {p0}, Lcom/b/b/f;->n()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/b/i;-><init>([B)V

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 590
    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    sget-object v2, Lcom/b/b/aa;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lcom/b/b/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 592
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final m()Ljava/lang/String;
    .locals 11

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    .line 2266
    invoke-virtual {p0, v0, v1, v2}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 647
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x20

    .line 648
    iget-wide v3, p0, Lcom/b/b/f;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-object v5, p0

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/b/b/f;->a(Lcom/b/b/f;JJ)Lcom/b/b/f;

    .line 649
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3063
    iget-wide v3, p0, Lcom/b/b/f;->b:J

    .line 649
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Lcom/b/b/f;->k()Lcom/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()[B
    .locals 2

    .line 747
    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->e(J)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 749
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final o()V
    .locals 2

    .line 802
    :try_start_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/b/b/f;->f(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 804
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic p()Lcom/b/b/g;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 4654
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/b/b/f;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4657
    :cond_0
    iget-wide v0, p0, Lcom/b/b/f;->b:J

    long-to-int v0, v0

    if-nez v0, :cond_1

    .line 4664
    sget-object v0, Lcom/b/b/i;->b:Lcom/b/b/i;

    goto :goto_0

    .line 4665
    :cond_1
    new-instance v1, Lcom/b/b/v;

    invoke-direct {v1, p0, v0}, Lcom/b/b/v;-><init>(Lcom/b/b/f;I)V

    move-object v0, v1

    .line 1635
    :goto_0
    invoke-virtual {v0}, Lcom/b/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
