.class public final Lcom/b/a/p;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# static fields
.field public static final a:Lcom/b/a/p;

.field public static final b:Lcom/b/a/p;

.field public static final c:Lcom/b/a/p;

.field private static final h:[Lcom/b/a/l;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;

.field final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xf

    .line 45
    new-array v0, v0, [Lcom/b/a/l;

    sget-object v1, Lcom/b/a/l;->aW:Lcom/b/a/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/l;->ba:Lcom/b/a/l;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/l;->aX:Lcom/b/a/l;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/l;->bb:Lcom/b/a/l;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/l;->bh:Lcom/b/a/l;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/l;->bg:Lcom/b/a/l;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->ax:Lcom/b/a/l;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->aH:Lcom/b/a/l;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->ay:Lcom/b/a/l;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->aI:Lcom/b/a/l;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->af:Lcom/b/a/l;

    const/16 v7, 0xa

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->ag:Lcom/b/a/l;

    const/16 v7, 0xb

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->D:Lcom/b/a/l;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->H:Lcom/b/a/l;

    const/16 v7, 0xd

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/l;->h:Lcom/b/a/l;

    const/16 v7, 0xe

    aput-object v1, v0, v7

    sput-object v0, Lcom/b/a/p;->h:[Lcom/b/a/l;

    .line 68
    new-instance v0, Lcom/b/a/q;

    invoke-direct {v0, v3}, Lcom/b/a/q;-><init>(Z)V

    sget-object v1, Lcom/b/a/p;->h:[Lcom/b/a/l;

    .line 1277
    iget-boolean v7, v0, Lcom/b/a/q;->a:Z

    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_0
    array-length v7, v1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 1280
    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_1

    .line 1281
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/b/a/l;->bi:Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1283
    :cond_1
    invoke-virtual {v0, v7}, Lcom/b/a/q;->a([Ljava/lang/String;)Lcom/b/a/q;

    move-result-object v0

    .line 69
    new-array v1, v6, [Lcom/b/a/ax;

    sget-object v6, Lcom/b/a/ax;->a:Lcom/b/a/ax;

    aput-object v6, v1, v2

    sget-object v6, Lcom/b/a/ax;->b:Lcom/b/a/ax;

    aput-object v6, v1, v3

    sget-object v6, Lcom/b/a/ax;->c:Lcom/b/a/ax;

    aput-object v6, v1, v4

    sget-object v4, Lcom/b/a/ax;->d:Lcom/b/a/ax;

    aput-object v4, v1, v5

    .line 70
    invoke-virtual {v0, v1}, Lcom/b/a/q;->a([Lcom/b/a/ax;)Lcom/b/a/q;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/b/a/q;->a()Lcom/b/a/q;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/b/a/q;->b()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->a:Lcom/b/a/p;

    .line 75
    new-instance v0, Lcom/b/a/q;

    sget-object v1, Lcom/b/a/p;->a:Lcom/b/a/p;

    invoke-direct {v0, v1}, Lcom/b/a/q;-><init>(Lcom/b/a/p;)V

    new-array v1, v3, [Lcom/b/a/ax;

    sget-object v3, Lcom/b/a/ax;->d:Lcom/b/a/ax;

    aput-object v3, v1, v2

    .line 76
    invoke-virtual {v0, v1}, Lcom/b/a/q;->a([Lcom/b/a/ax;)Lcom/b/a/q;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/b/a/q;->a()Lcom/b/a/q;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/b/a/q;->b()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->b:Lcom/b/a/p;

    .line 81
    new-instance v0, Lcom/b/a/q;

    invoke-direct {v0, v2}, Lcom/b/a/q;-><init>(Z)V

    invoke-virtual {v0}, Lcom/b/a/q;->b()Lcom/b/a/p;

    move-result-object v0

    sput-object v0, Lcom/b/a/p;->c:Lcom/b/a/p;

    return-void
.end method

.method constructor <init>(Lcom/b/a/q;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iget-boolean v0, p1, Lcom/b/a/q;->a:Z

    iput-boolean v0, p0, Lcom/b/a/p;->d:Z

    .line 90
    iget-object v0, p1, Lcom/b/a/q;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/b/a/q;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    .line 92
    iget-boolean p1, p1, Lcom/b/a/q;->d:Z

    iput-boolean p1, p0, Lcom/b/a/p;->e:Z

    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 202
    array-length v1, p0

    if-eqz v1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 206
    invoke-static {p1, v3}, Lcom/b/a/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/ax;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    iget-object v1, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 122
    invoke-static {v4}, Lcom/b/a/ax;->a(Ljava/lang/String;)Lcom/b/a/ax;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/b/a/p;->e:Z

    return v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/b/a/p;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/b/a/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 214
    instance-of v0, p1, Lcom/b/a/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 217
    :cond_1
    check-cast p1, Lcom/b/a/p;

    .line 218
    iget-boolean v2, p0, Lcom/b/a/p;->d:Z

    iget-boolean v3, p1, Lcom/b/a/p;->d:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 220
    :cond_2
    iget-boolean v2, p0, Lcom/b/a/p;->d:Z

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/p;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    iget-object v3, p1, Lcom/b/a/p;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 223
    :cond_4
    iget-boolean v2, p0, Lcom/b/a/p;->e:Z

    iget-boolean p1, p1, Lcom/b/a/p;->e:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/b/a/p;->d:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 233
    iget-object v1, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 234
    iget-boolean v1, p0, Lcom/b/a/p;->e:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 240
    iget-boolean v0, p0, Lcom/b/a/p;->d:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1104
    iget-object v0, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1106
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1107
    iget-object v1, p0, Lcom/b/a/p;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1108
    invoke-static {v4}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/l;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1110
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 244
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "[all enabled]"

    .line 245
    :goto_2
    iget-object v1, p0, Lcom/b/a/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/b/a/p;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, "[all enabled]"

    .line 246
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/b/a/p;->e:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
