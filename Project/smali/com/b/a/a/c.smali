.class public final Lcom/b/a/a/c;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lcom/b/a/au;

.field public static final d:Lcom/b/a/aq;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/util/TimeZone;

.field private static final g:Lcom/b/b/i;

.field private static final h:Lcom/b/b/i;

.field private static final i:Lcom/b/b/i;

.field private static final j:Lcom/b/b/i;

.field private static final k:Lcom/b/b/i;

.field private static final l:Ljava/nio/charset/Charset;

.field private static final m:Ljava/nio/charset/Charset;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    new-array v1, v0, [B

    sput-object v1, Lcom/b/a/a/c;->a:[B

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/a/c;->b:[Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/b/a/a/c;->a:[B

    invoke-static {v0}, Lcom/b/a/au;->a([B)Lcom/b/a/au;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->c:Lcom/b/a/au;

    .line 49
    sget-object v0, Lcom/b/a/a/c;->a:[B

    invoke-static {v0}, Lcom/b/a/aq;->a([B)Lcom/b/a/aq;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->d:Lcom/b/a/aq;

    const-string v0, "efbbbf"

    .line 51
    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    const-string v0, "feff"

    .line 52
    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    const-string v0, "fffe"

    .line 53
    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    const-string v0, "0000ffff"

    .line 54
    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    const-string v0, "ffff0000"

    .line 55
    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    const-string v0, "UTF-8"

    .line 57
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    .line 58
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->l:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    .line 59
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->m:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->n:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    .line 61
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->o:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    .line 64
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->f:Ljava/util/TimeZone;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return p1

    :sswitch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 263
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 264
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/b/a/ac;Z)Ljava/lang/String;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/b/a/ac;->g()I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/b/a/ac;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 353
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1368
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 1369
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x1f

    if-le v3, v5, :cond_4

    const/16 v5, 0x7f

    if-lt v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, " #%/:?@[\\]"

    .line 1379
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    return-object v0

    :cond_5
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 408
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/b/b/h;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2

    .line 412
    sget-object v0, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    sget-object p1, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    .line 414
    sget-object p0, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    return-object p0

    .line 416
    :cond_0
    sget-object v0, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    sget-object p1, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    .line 418
    sget-object p0, Lcom/b/a/a/c;->l:Ljava/nio/charset/Charset;

    return-object p0

    .line 420
    :cond_1
    sget-object v0, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    sget-object p1, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    .line 422
    sget-object p0, Lcom/b/a/a/c;->m:Ljava/nio/charset/Charset;

    return-object p0

    .line 424
    :cond_2
    sget-object v0, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    sget-object p1, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    .line 426
    sget-object p0, Lcom/b/a/a/c;->n:Ljava/nio/charset/Charset;

    return-object p0

    .line 428
    :cond_3
    sget-object v0, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 429
    sget-object p1, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    .line 430
    sget-object p0, Lcom/b/a/a/c;->o:Ljava/nio/charset/Charset;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 191
    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    or-long v2, p2, v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    sub-long v2, p0, v0

    cmp-long p0, v2, p2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 84
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 100
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 102
    throw p0

    :catch_1
    :cond_0
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception p0

    .line 119
    throw p0

    :catch_1
    move-exception p0

    .line 117
    invoke-static {p0}, Lcom/b/a/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-nez v0, :cond_0

    throw p0

    :cond_0
    return-void

    :catch_2
    :cond_1
    return-void
.end method

.method public static a(Lcom/b/b/x;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 159
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/b/y;->c_()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/b/y;->d()J

    move-result-wide v5

    sub-long v7, v5, v0

    goto :goto_0

    :cond_0
    move-wide v7, v3

    .line 162
    :goto_0
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    int-to-long v5, p1

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long v5, v0, p1

    invoke-virtual {v2, v5, v6}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    .line 164
    :try_start_0
    new-instance p1, Lcom/b/b/f;

    invoke-direct {p1}, Lcom/b/b/f;-><init>()V

    :goto_1
    const-wide/16 v5, 0x2000

    .line 165
    invoke-interface {p0, p1, v5, v6}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long p2, v5, v9

    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/b/b/f;->o()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    cmp-long p1, v7, v3

    if-nez p1, :cond_2

    .line 173
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_2

    .line 175
    :cond_2
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    cmp-long p2, v7, v3

    if-nez p2, :cond_3

    .line 173
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_3

    .line 175
    :cond_3
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long v2, v0, v7

    invoke-virtual {p0, v2, v3}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_3
    throw p1

    :catch_0
    cmp-long p1, v7, v3

    if-nez p1, :cond_4

    .line 173
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_4

    .line 175
    :cond_4
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/b/b/x;Ljava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/16 v0, 0x64

    .line 147
    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/b/a/a/c;->a(Lcom/b/b/x;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 1217
    array-length v5, p2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    .line 1218
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1219
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 270
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 271
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 393
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/String;II)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lt p2, p1, :cond_0

    .line 302
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :sswitch_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 318
    invoke-static {p0, p1, p2}, Lcom/b/a/a/c;->a(Ljava/lang/String;II)I

    move-result p1

    .line 319
    invoke-static {p0, p1, p2}, Lcom/b/a/a/c;->b(Ljava/lang/String;II)I

    move-result p2

    .line 320
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 403
    sget-object v0, Lcom/b/a/a/c;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
