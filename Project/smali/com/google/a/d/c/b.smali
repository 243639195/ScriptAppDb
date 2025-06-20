.class final Lcom/google/a/d/c/b;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CI)C
    .locals 1

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    .line 66
    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .locals 7

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v2, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/a/d/c/h;->f:I

    .line 1062
    iget-object v2, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 36
    iget v4, p1, Lcom/google/a/d/c/h;->f:I

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 3098
    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    .line 4090
    iget-object v4, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 46
    invoke-virtual {p1, v4}, Lcom/google/a/d/c/h;->a(I)V

    .line 4118
    iget-object v5, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    .line 4212
    iget v5, v5, Lcom/google/a/d/c/k;->b:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_4

    int-to-char v2, v2

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x613

    if-gt v2, v5, :cond_8

    .line 52
    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 53
    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 59
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_7

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 5090
    iget-object v5, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x95

    const/16 v6, 0xff

    .line 6066
    rem-int/2addr v5, v6

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    if-gt v4, v6, :cond_6

    int-to-char v4, v4

    goto :goto_3

    :cond_6
    add-int/lit16 v4, v4, -0x100

    int-to-char v4, v4

    .line 60
    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/a/d/c/h;->a(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 55
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Message length not in valid ranges: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
