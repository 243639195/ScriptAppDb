.class final Lcom/google/a/d/c/a;
.super Ljava/lang/Object;
.source "ASCIIEncoder.java"

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CC)C
    .locals 3

    .line 75
    invoke-static {p0}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    return p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not digits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .locals 7

    .line 1062
    iget-object v0, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 29
    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    .line 1428
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 1431
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    .line 1432
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ge v1, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 1436
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt v5, v0, :cond_4

    .line 2062
    iget-object v2, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 31
    iget v3, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3062
    iget-object v3, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 32
    iget v4, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3075
    invoke-static {v2}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x82

    int-to-char v1, v2

    .line 31
    invoke-virtual {p1, v1}, Lcom/google/a/d/c/h;->a(C)V

    .line 33
    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    .line 3079
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "not digits: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v2

    .line 4062
    iget-object v4, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    .line 36
    iget v5, p1, Lcom/google/a/d/c/h;->f:I

    invoke-static {v4, v5, v3}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v3

    if-eqz v3, :cond_5

    packed-switch v3, :pswitch_data_0

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal mode: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 v0, 0xe7

    .line 40
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x5

    .line 6098
    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_1
    const/16 v0, 0xf0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x4

    .line 10098
    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_2
    const/16 v0, 0xee

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x3

    .line 8098
    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_3
    const/16 v1, 0xef

    .line 52
    invoke-virtual {p1, v1}, Lcom/google/a/d/c/h;->a(C)V

    .line 9098
    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_4
    const/16 v0, 0xe6

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    .line 7098
    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    .line 62
    :cond_5
    invoke-static {v2}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xeb

    .line 63
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    add-int/lit8 v2, v2, -0x80

    add-int/2addr v2, v1

    int-to-char v0, v2

    .line 64
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    .line 65
    iget v0, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    :cond_6
    add-int/2addr v2, v1

    int-to-char v0, v2

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    .line 68
    iget v0, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
