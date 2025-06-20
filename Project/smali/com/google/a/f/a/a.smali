.class public final Lcom/google/a/f/a/a;
.super Lcom/google/a/i/a;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/f/a/a$a;
    }
.end annotation


# static fields
.field private static final b:[Lcom/google/a/r;

.field private static final c:[Lcom/google/a/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    new-array v1, v0, [Lcom/google/a/r;

    sput-object v1, Lcom/google/a/f/a/a;->b:[Lcom/google/a/r;

    .line 51
    new-array v0, v0, [Lcom/google/a/t;

    sput-object v0, Lcom/google/a/f/a/a;->c:[Lcom/google/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/a/i/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/a/r;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/r;

    .line 7112
    iget-object v1, v1, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 104
    sget-object v3, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object p0

    .line 114
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/r;

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8112
    iget-object v4, v3, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 118
    sget-object v5, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_4
    new-instance p0, Lcom/google/a/f/a/a$a;

    invoke-direct {p0, v2}, Lcom/google/a/f/a/a$a;-><init>(B)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/a/r;

    .line 9072
    iget-object v7, v6, Lcom/google/a/r;->a:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9079
    iget-object v7, v6, Lcom/google/a/r;->b:[B

    .line 129
    array-length v7, v7

    add-int/2addr v4, v7

    .line 9112
    iget-object v7, v6, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 130
    sget-object v8, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 10112
    iget-object v6, v6, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 133
    sget-object v7, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 135
    array-length v7, v7

    add-int/2addr v5, v7

    goto :goto_2

    .line 139
    :cond_6
    new-array v3, v4, [B

    .line 140
    new-array v4, v5, [B

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/a/r;

    .line 11079
    iget-object v9, v8, Lcom/google/a/r;->b:[B

    .line 12079
    iget-object v10, v8, Lcom/google/a/r;->b:[B

    .line 144
    array-length v10, v10

    invoke-static {v9, v2, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13079
    iget-object v9, v8, Lcom/google/a/r;->b:[B

    .line 145
    array-length v9, v9

    add-int/2addr v6, v9

    .line 13112
    iget-object v9, v8, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 146
    sget-object v10, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 14112
    iget-object v8, v8, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 149
    sget-object v9, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 151
    array-length v10, v9

    invoke-static {v9, v2, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_3

    .line 156
    :cond_8
    new-instance v1, Lcom/google/a/r;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/google/a/f/a/a;->c:[Lcom/google/a/t;

    sget-object v6, Lcom/google/a/a;->l:Lcom/google/a/a;

    invoke-direct {v1, p0, v3, v2, v6}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    if-lez v5, :cond_9

    .line 158
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v2, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-virtual {v1, v2, p0}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 162
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a_(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/a/f/a/a;->b(Lcom/google/a/c;)[Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/a/c;)[Lcom/google/a/r;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            ")[",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lcom/google/a/f/a/a/a;

    invoke-virtual {p1}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/a/f/a/a/a;-><init>(Lcom/google/a/c/b;)V

    invoke-virtual {v1}, Lcom/google/a/f/a/a/a;->a()[Lcom/google/a/c/g;

    move-result-object p1

    .line 62
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 1051
    :try_start_0
    iget-object v4, p0, Lcom/google/a/i/a;->a:Lcom/google/a/i/a/e;

    .line 2039
    iget-object v5, v3, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    const/4 v6, 0x0

    .line 64
    invoke-virtual {v4, v5, v6}, Lcom/google/a/i/a/e;->a(Lcom/google/a/c/b;Ljava/util/Map;)Lcom/google/a/c/e;

    move-result-object v4

    .line 2043
    iget-object v3, v3, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    .line 2133
    iget-object v5, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    .line 67
    instance-of v5, v5, Lcom/google/a/i/a/i;

    if-eqz v5, :cond_0

    .line 3133
    iget-object v5, v4, Lcom/google/a/c/e;->h:Ljava/lang/Object;

    .line 68
    check-cast v5, Lcom/google/a/i/a/i;

    invoke-virtual {v5, v3}, Lcom/google/a/i/a/i;->a([Lcom/google/a/t;)V

    .line 70
    :cond_0
    new-instance v5, Lcom/google/a/r;

    .line 4090
    iget-object v6, v4, Lcom/google/a/c/e;->c:Ljava/lang/String;

    .line 5067
    iget-object v7, v4, Lcom/google/a/c/e;->a:[B

    .line 70
    sget-object v8, Lcom/google/a/a;->l:Lcom/google/a/a;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 5097
    iget-object v3, v4, Lcom/google/a/c/e;->d:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 74
    sget-object v6, Lcom/google/a/s;->c:Lcom/google/a/s;

    invoke-virtual {v5, v6, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 5104
    :cond_1
    iget-object v3, v4, Lcom/google/a/c/e;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 78
    sget-object v6, Lcom/google/a/s;->d:Lcom/google/a/s;

    invoke-virtual {v5, v6, v3}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 80
    :cond_2
    invoke-virtual {v4}, Lcom/google/a/c/e;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget-object v3, Lcom/google/a/s;->j:Lcom/google/a/s;

    .line 5149
    iget v6, v4, Lcom/google/a/c/e;->j:I

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v3, v6}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 83
    sget-object v3, Lcom/google/a/s;->k:Lcom/google/a/s;

    .line 6145
    iget v4, v4, Lcom/google/a/c/e;->i:I

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 83
    invoke-virtual {v5, v3, v4}, Lcom/google/a/r;->a(Lcom/google/a/s;Ljava/lang/Object;)V

    .line 86
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/q; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 92
    sget-object p1, Lcom/google/a/f/a/a;->b:[Lcom/google/a/r;

    return-object p1

    .line 94
    :cond_5
    invoke-static {v0}, Lcom/google/a/f/a/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/r;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/r;

    return-object p1
.end method
