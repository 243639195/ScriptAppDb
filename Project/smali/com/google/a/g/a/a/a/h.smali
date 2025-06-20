.class abstract Lcom/google/a/g/a/a/a/h;
.super Lcom/google/a/g/a/a/a/j;
.source "AI01decoder.java"


# static fields
.field static final a:I = 0x28


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/j;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    if-ge v1, v3, :cond_1

    add-int v3, v1, p1

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_0

    mul-int/lit8 v3, v3, 0x3

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 73
    rem-int/2addr v2, p1

    rsub-int/lit8 v1, v2, 0xa

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 78
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v1, v2, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v5, p2

    .line 53
    invoke-virtual {v2, v5, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    .line 54
    div-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_0

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    div-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_1

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xd

    if-ge p2, v2, :cond_4

    add-int v2, p2, p3

    .line 1069
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_3

    mul-int/lit8 v2, v2, 0x3

    :cond_3
    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1073
    :cond_4
    rem-int/2addr v1, v4

    rsub-int/lit8 p2, v1, 0xa

    if-ne p2, v4, :cond_5

    const/4 p2, 0x0

    .line 1078
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method final b(Ljava/lang/StringBuilder;I)V
    .locals 2

    const-string v0, "(01)"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x39

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/a/g/a/a/a/h;->a(Ljava/lang/StringBuilder;II)V

    return-void
.end method
