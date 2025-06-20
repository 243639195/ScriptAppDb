.class final Lcom/b/b/s;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/b/b/h;


# instance fields
.field public final a:Lcom/b/b/f;

.field public final b:Lcom/b/b/x;

.field c:Z


# direct methods
.method constructor <init>(Lcom/b/b/x;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    return-void
.end method

.method private b(J)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(B)J
    .locals 10

    .line 3318
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 3321
    :goto_0
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, p1, v0, v1}, Lcom/b/b/f;->a(BJ)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    return-wide v2

    .line 3324
    :cond_1
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    .line 3325
    iget-object v6, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v7, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_2

    return-wide v4

    .line 3328
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lcom/b/b/f;J)J
    .locals 5

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteCount < 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    iget-boolean v2, p0, Lcom/b/b/s;->c:Z

    if-eqz v2, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 45
    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    return-wide v2

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v0, v0, Lcom/b/b/f;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 50
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/b/f;->a(Lcom/b/b/f;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a()Lcom/b/b/y;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-interface {v0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 187
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-object v1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-virtual {v0, v1}, Lcom/b/b/f;->a(Lcom/b/b/x;)J

    .line 190
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1}, Lcom/b/b/f;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/b/b/s;->b(J)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method public final b(Lcom/b/b/i;)Z
    .locals 9

    .line 371
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v0

    .line 3377
    iget-boolean v1, p0, Lcom/b/b/s;->c:Z

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_5

    .line 3382
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    const-wide/16 v3, 0x0

    int-to-long v5, v2

    add-long v7, v5, v3

    const-wide/16 v3, 0x1

    add-long v5, v7, v3

    .line 3387
    invoke-direct {p0, v5, v6}, Lcom/b/b/s;->b(J)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 3388
    :cond_2
    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v3, v7, v8}, Lcom/b/b/f;->b(J)B

    move-result v3

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {p1, v4}, Lcom/b/b/i;->a(I)B

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final c()Lcom/b/b/f;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    return-object v0
.end method

.method public final c(J)Lcom/b/b/i;
    .locals 1

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/b/b/s;->a(J)V

    .line 83
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->c(J)Lcom/b/b/i;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/b/b/s;->c:Z

    .line 434
    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-interface {v0}, Lcom/b/b/x;->close()V

    .line 435
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->o()V

    return-void
.end method

.method public final d()Z
    .locals 5

    .line 54
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()B
    .locals 2

    const-wide/16 v0, 0x1

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    .line 73
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->e()B

    move-result v0

    return v0
.end method

.method public final e(J)[B
    .locals 1

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/b/b/s;->a(J)V

    .line 112
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/b/b/f;->e(J)[B

    move-result-object p1

    return-object p1
.end method

.method public final f()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    .line 237
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->f()S

    move-result v0

    return v0
.end method

.method public final f(J)V
    .locals 5

    .line 302
    iget-boolean v0, p0, Lcom/b/b/s;->c:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    iget-wide v2, v2, Lcom/b/b/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    iget-object v1, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 305
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    .line 3063
    iget-wide v0, v0, Lcom/b/b/f;->b:J

    .line 307
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, v0, v1}, Lcom/b/b/f;->f(J)V

    sub-long v2, p1, v0

    move-wide p1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    .line 247
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->g()I

    move-result v0

    return v0
.end method

.method public final h()S
    .locals 2

    const-wide/16 v0, 0x2

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    .line 242
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    .line 2402
    invoke-virtual {v0}, Lcom/b/b/f;->f()S

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(S)S

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 2

    const-wide/16 v0, 0x4

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    .line 252
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    .line 2406
    invoke-virtual {v0}, Lcom/b/b/f;->g()I

    move-result v0

    invoke-static {v0}, Lcom/b/b/aa;->a(I)I

    move-result v0

    return v0
.end method

.method public final j()J
    .locals 6

    const-wide/16 v0, 0x1

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/b/b/s;->a(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    .line 286
    invoke-direct {p0, v3, v4}, Lcom/b/b/s;->b(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/b/b/f;->b(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 291
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 292
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v0

    .line 291
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v0}, Lcom/b/b/f;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Ljava/lang/String;
    .locals 11

    const/16 v0, 0xa

    .line 210
    invoke-virtual {p0, v0}, Lcom/b/b/s;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 212
    new-instance v0, Lcom/b/b/f;

    invoke-direct {v0}, Lcom/b/b/f;-><init>()V

    .line 213
    iget-object v5, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x20

    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    .line 1063
    iget-wide v3, v3, Lcom/b/b/f;->b:J

    .line 213
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-object v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/b/b/f;->a(Lcom/b/b/f;JJ)Lcom/b/b/f;

    .line 214
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    .line 2063
    iget-wide v3, v3, Lcom/b/b/f;->b:J

    .line 214
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
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

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/b/b/s;->a:Lcom/b/b/f;

    invoke-virtual {v2, v0, v1}, Lcom/b/b/f;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/b/s;->b:Lcom/b/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
