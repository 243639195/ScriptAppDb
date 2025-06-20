.class public final Lcom/google/a/k;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/google/a/p;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;"
        }
    .end annotation
.end field

.field private b:[Lcom/google/a/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/google/a/k;->a:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 98
    sget-object v2, Lcom/google/a/e;->d:Lcom/google/a/e;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 100
    :cond_1
    sget-object v3, Lcom/google/a/e;->c:Lcom/google/a/e;

    .line 101
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 102
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_a

    .line 104
    sget-object v5, Lcom/google/a/a;->o:Lcom/google/a/a;

    .line 105
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->p:Lcom/google/a/a;

    .line 106
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->h:Lcom/google/a/a;

    .line 107
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->g:Lcom/google/a/a;

    .line 108
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->b:Lcom/google/a/a;

    .line 109
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->c:Lcom/google/a/a;

    .line 110
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->d:Lcom/google/a/a;

    .line 111
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->e:Lcom/google/a/a;

    .line 112
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->i:Lcom/google/a/a;

    .line 113
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->m:Lcom/google/a/a;

    .line 114
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/google/a/a;->n:Lcom/google/a/a;

    .line 115
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 118
    new-instance v1, Lcom/google/a/g/p;

    invoke-direct {v1, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    sget-object v1, Lcom/google/a/a;->l:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    new-instance v1, Lcom/google/a/i/a;

    invoke-direct {v1}, Lcom/google/a/i/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_5
    sget-object v1, Lcom/google/a/a;->f:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    new-instance v1, Lcom/google/a/d/a;

    invoke-direct {v1}, Lcom/google/a/d/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    sget-object v1, Lcom/google/a/a;->a:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    new-instance v1, Lcom/google/a/a/b;

    invoke-direct {v1}, Lcom/google/a/a/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_7
    sget-object v1, Lcom/google/a/a;->k:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    new-instance v1, Lcom/google/a/h/b;

    invoke-direct {v1}, Lcom/google/a/h/b;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_8
    sget-object v1, Lcom/google/a/a;->j:Lcom/google/a/a;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 133
    new-instance v1, Lcom/google/a/e/a;

    invoke-direct {v1}, Lcom/google/a/e/a;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 137
    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_a
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v2, :cond_b

    .line 142
    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_b
    new-instance v0, Lcom/google/a/i/a;

    invoke-direct {v0}, Lcom/google/a/i/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/google/a/d/a;

    invoke-direct {v0}, Lcom/google/a/d/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/google/a/a/b;

    invoke-direct {v0}, Lcom/google/a/a/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/google/a/h/b;

    invoke-direct {v0}, Lcom/google/a/h/b;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/google/a/e/a;

    invoke-direct {v0}, Lcom/google/a/e/a;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_c

    .line 152
    new-instance v0, Lcom/google/a/g/p;

    invoke-direct {v0, p1}, Lcom/google/a/g/p;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_c
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/a/p;

    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/a/p;

    iput-object p1, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    return-void
.end method

.method private b(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 171
    :try_start_0
    iget-object v4, p0, Lcom/google/a/k;->a:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/a/q; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p2}, Lcom/google/a/k;->a(Ljava/util/Map;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/google/a/k;->c(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/a/k;->b:[Lcom/google/a/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 162
    invoke-interface {v3}, Lcom/google/a/p;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
