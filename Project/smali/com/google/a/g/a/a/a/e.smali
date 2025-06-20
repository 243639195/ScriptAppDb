.class public final Lcom/google/a/g/a/a/a/e;
.super Lcom/google/a/g/a/a/a/i;
.source "AI013x0x1xDecoder.java"


# static fields
.field private static final d:I = 0x8

.field private static final e:I = 0x14

.field private static final f:I = 0x10


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/i;-><init>(Lcom/google/a/c/a;)V

    .line 47
    iput-object p3, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/a/g/a/a/a/e;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 4052
    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v1, 0x44

    const/16 v2, 0x10

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v0

    const v1, 0x9600

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x28

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    rem-int/lit8 v1, v0, 0x20

    .line 77
    div-int/lit8 v0, v0, 0x20

    .line 78
    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v2, v2, 0x1

    .line 79
    div-int/lit8 v0, v0, 0xc

    .line 82
    div-int/lit8 v3, v0, 0xa

    const/16 v4, 0x30

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    div-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    div-int/lit8 v0, v1, 0xa

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 1

    const v0, 0x186a0

    .line 106
    rem-int/2addr p1, v0

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    .line 2048
    iget v0, v0, Lcom/google/a/c/a;->b:I

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 54
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/google/a/g/a/a/a/e;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x14

    const/16 v2, 0x30

    .line 60
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/a/g/a/a/a/e;->b(Ljava/lang/StringBuilder;II)V

    .line 3052
    iget-object v1, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v3, 0x44

    const/16 v4, 0x10

    .line 2067
    invoke-virtual {v1, v3, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const v3, 0x9600

    if-eq v1, v3, :cond_4

    const/16 v3, 0x28

    .line 2072
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2073
    iget-object v3, p0, Lcom/google/a/g/a/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    .line 2074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2076
    rem-int/lit8 v3, v1, 0x20

    .line 2077
    div-int/lit8 v1, v1, 0x20

    .line 2078
    rem-int/lit8 v4, v1, 0xc

    add-int/lit8 v4, v4, 0x1

    .line 2079
    div-int/lit8 v1, v1, 0xc

    .line 2082
    div-int/lit8 v5, v1, 0xa

    if-nez v5, :cond_1

    .line 2083
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2085
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2086
    div-int/lit8 v1, v4, 0xa

    if-nez v1, :cond_2

    .line 2087
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2089
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2090
    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_3

    .line 2091
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2093
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x28

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/google/a/g/a/a/a/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x186a0

    .line 100
    div-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
