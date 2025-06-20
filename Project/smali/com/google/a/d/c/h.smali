.class final Lcom/google/a/d/c/h;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/google/a/d/c/l;

.field c:Lcom/google/a/f;

.field d:Lcom/google/a/f;

.field final e:Ljava/lang/StringBuilder;

.field f:I

.field g:I

.field h:Lcom/google/a/d/c/k;

.field i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 40
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_0

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_0

    .line 42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/google/a/d/c/l;->a:Lcom/google/a/d/c/l;

    iput-object v0, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private a(Lcom/google/a/d/c/l;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    return-void
.end method

.method private a(Lcom/google/a/f;Lcom/google/a/f;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/a/d/c/h;->c:Lcom/google/a/f;

    .line 58
    iput-object p2, p0, Lcom/google/a/d/c/h;->d:Lcom/google/a/f;

    return-void
.end method

.method private b(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x2

    .line 66
    iput v0, p0, Lcom/google/a/d/c/h;->i:I

    return-void
.end method

.method private g()C
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/StringBuilder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private i()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private j()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/a/d/c/h;->g:I

    return v0
.end method

.method private k()V
    .locals 1

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private l()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/a/d/c/h;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private m()Lcom/google/a/d/c/k;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    return-object v0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    return-void
.end method


# virtual methods
.method public final a()C
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final a(C)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    .line 1212
    iget v0, v0, Lcom/google/a/d/c/k;->b:I

    if-le p1, v0, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    iget-object v1, p0, Lcom/google/a/d/c/h;->c:Lcom/google/a/f;

    iget-object v2, p0, Lcom/google/a/d/c/h;->d:Lcom/google/a/f;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/a/d/c/k;->a(ILcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;Z)Lcom/google/a/d/c/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/google/a/d/c/h;->f:I

    invoke-direct {p0}, Lcom/google/a/d/c/h;->l()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/google/a/d/c/h;->l()I

    move-result v0

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/a/d/c/h;->a(I)V

    return-void
.end method
