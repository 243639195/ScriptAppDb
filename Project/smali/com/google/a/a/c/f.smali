.class final Lcom/google/a/a/c/f;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final a:Lcom/google/a/a/c/f;


# instance fields
.field final b:I

.field final c:I

.field final d:I

.field private final e:Lcom/google/a/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/google/a/a/c/f;

    sget-object v1, Lcom/google/a/a/c/g;->a:Lcom/google/a/a/c/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/a/a/c/f;-><init>(Lcom/google/a/a/c/g;III)V

    sput-object v0, Lcom/google/a/a/c/f;->a:Lcom/google/a/a/c/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/a/a/c/g;III)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    .line 46
    iput p2, p0, Lcom/google/a/a/c/f;->b:I

    .line 47
    iput p3, p0, Lcom/google/a/a/c/f;->c:I

    .line 48
    iput p4, p0, Lcom/google/a/a/c/f;->d:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/a/a/c/f;->b:I

    return v0
.end method

.method private b()Lcom/google/a/a/c/g;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    return-object v0
.end method

.method private c()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/a/a/c/f;->c:I

    return v0
.end method

.method private d()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/a/a/c/f;->d:I

    return v0
.end method


# virtual methods
.method final a(I)Lcom/google/a/a/c/f;
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    .line 105
    iget v1, p0, Lcom/google/a/a/c/f;->b:I

    .line 106
    iget v2, p0, Lcom/google/a/a/c/f;->d:I

    .line 107
    iget v3, p0, Lcom/google/a/a/c/f;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/google/a/a/c/f;->b:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 109
    :cond_0
    sget-object v3, Lcom/google/a/a/c/d;->g:[[I

    aget-object v1, v3, v1

    aget v1, v1, v4

    const v3, 0xffff

    and-int/2addr v3, v1

    shr-int/lit8 v1, v1, 0x10

    .line 110
    invoke-virtual {v0, v3, v1}, Lcom/google/a/a/c/g;->a(II)Lcom/google/a/a/c/g;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    .line 114
    :cond_1
    iget v3, p0, Lcom/google/a/a/c/f;->c:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/a/a/c/f;->c:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/google/a/a/c/f;->c:I

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v3, 0x12

    .line 117
    :goto_1
    new-instance v4, Lcom/google/a/a/c/f;

    iget v5, p0, Lcom/google/a/a/c/f;->c:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v1, v5, v2}, Lcom/google/a/a/c/f;-><init>(Lcom/google/a/a/c/g;III)V

    .line 118
    iget v0, v4, Lcom/google/a/a/c/f;->c:I

    const/16 v1, 0x81e

    if-ne v0, v1, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 120
    invoke-virtual {v4, p1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method final a(II)Lcom/google/a/a/c/f;
    .locals 4

    .line 77
    iget v0, p0, Lcom/google/a/a/c/f;->d:I

    .line 78
    iget-object v1, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    .line 79
    iget v2, p0, Lcom/google/a/a/c/f;->b:I

    if-eq p1, v2, :cond_0

    .line 80
    sget-object v2, Lcom/google/a/a/c/d;->g:[[I

    iget v3, p0, Lcom/google/a/a/c/f;->b:I

    aget-object v2, v2, v3

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    .line 81
    invoke-virtual {v1, v3, v2}, Lcom/google/a/a/c/g;->a(II)Lcom/google/a/a/c/g;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 85
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/google/a/a/c/g;->a(II)Lcom/google/a/a/c/g;

    move-result-object p2

    .line 86
    new-instance v1, Lcom/google/a/a/c/f;

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-direct {v1, p2, p1, v3, v0}, Lcom/google/a/a/c/f;-><init>(Lcom/google/a/a/c/g;III)V

    return-object v1
.end method

.method final a([B)Lcom/google/a/c/a;
    .locals 3

    .line 151
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 152
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/google/a/a/c/f;->b(I)Lcom/google/a/a/c/f;

    move-result-object v1

    iget-object v1, v1, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    :goto_0
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2032
    iget-object v1, v1, Lcom/google/a/a/c/g;->b:Lcom/google/a/a/c/g;

    goto :goto_0

    .line 155
    :cond_0
    new-instance v1, Lcom/google/a/c/a;

    invoke-direct {v1}, Lcom/google/a/c/a;-><init>()V

    .line 157
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/a/a/c/g;

    .line 158
    invoke-virtual {v2, v1, p1}, Lcom/google/a/a/c/g;->a(Lcom/google/a/c/a;[B)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method final a(Lcom/google/a/a/c/f;)Z
    .locals 3

    .line 140
    iget v0, p0, Lcom/google/a/a/c/f;->d:I

    sget-object v1, Lcom/google/a/a/c/d;->g:[[I

    iget v2, p0, Lcom/google/a/a/c/f;->b:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/google/a/a/c/f;->b:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 141
    iget v1, p1, Lcom/google/a/a/c/f;->c:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/a/a/c/f;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/a/a/c/f;->c:I

    iget v2, p1, Lcom/google/a/a/c/f;->c:I

    if-le v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 145
    :cond_1
    iget p1, p1, Lcom/google/a/a/c/f;->d:I

    if-gt v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final b(I)Lcom/google/a/a/c/f;
    .locals 4

    .line 128
    iget v0, p0, Lcom/google/a/a/c/f;->c:I

    if-nez v0, :cond_0

    return-object p0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    .line 132
    iget v1, p0, Lcom/google/a/a/c/f;->c:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/google/a/a/c/f;->c:I

    .line 1041
    new-instance v2, Lcom/google/a/a/c/b;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/a/a/c/b;-><init>(Lcom/google/a/a/c/g;II)V

    .line 134
    new-instance p1, Lcom/google/a/a/c/f;

    iget v0, p0, Lcom/google/a/a/c/f;->b:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/google/a/a/c/f;->d:I

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/google/a/a/c/f;-><init>(Lcom/google/a/a/c/g;III)V

    return-object p1
.end method

.method final b(II)Lcom/google/a/a/c/f;
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/google/a/a/c/f;->e:Lcom/google/a/a/c/g;

    .line 94
    iget v1, p0, Lcom/google/a/a/c/f;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 96
    :goto_0
    sget-object v3, Lcom/google/a/a/c/d;->h:[[I

    iget v4, p0, Lcom/google/a/a/c/f;->b:I

    aget-object v3, v3, v4

    aget p1, v3, p1

    invoke-virtual {v0, p1, v1}, Lcom/google/a/a/c/g;->a(II)Lcom/google/a/a/c/g;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p2, v2}, Lcom/google/a/a/c/g;->a(II)Lcom/google/a/a/c/g;

    move-result-object p1

    .line 98
    new-instance p2, Lcom/google/a/a/c/f;

    iget v0, p0, Lcom/google/a/a/c/f;->b:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/a/a/c/f;->d:I

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-direct {p2, p1, v0, v3, v4}, Lcom/google/a/a/c/f;-><init>(Lcom/google/a/a/c/g;III)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s bits=%d bytes=%d"

    const/4 v1, 0x3

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/a/a/c/d;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/google/a/a/c/f;->b:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/a/a/c/f;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/a/a/c/f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
