.class public final Lcom/google/a/r;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public d:[Lcom/google/a/t;

.field public final e:Lcom/google/a/a;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/a/s;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/a/r;->b:[B

    .line 61
    iput p3, p0, Lcom/google/a/r;->c:I

    .line 62
    iput-object p4, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    .line 63
    iput-object p5, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 65
    iput-wide p6, p0, Lcom/google/a/r;->g:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V
    .locals 7

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;J)V
    .locals 9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    .line 49
    :cond_0
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    move v4, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/a/r;-><init>(Ljava/lang/String;[BI[Lcom/google/a/t;Lcom/google/a/a;J)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a([Lcom/google/a/t;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    array-length v1, p1

    if-lez v1, :cond_1

    .line 137
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/google/a/t;

    .line 138
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v1, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    :cond_1
    return-void
.end method

.method private b()[B
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/a/r;->b:[B

    return-object v0
.end method

.method private c()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/a/r;->c:I

    return v0
.end method

.method private d()[Lcom/google/a/t;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    return-object v0
.end method

.method private e()Lcom/google/a/a;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/a/r;->e:Lcom/google/a/a;

    return-object v0
.end method

.method private f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/a/s;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    return-object v0
.end method

.method private g()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/google/a/r;->g:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/a/s;Ljava/lang/Object;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/a/s;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    return-object v0
.end method
