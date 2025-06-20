.class public Lcom/google/a/t;
.super Ljava/lang/Object;
.source "ResultPoint.java"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/a/t;->a:F

    .line 34
    iput p2, p0, Lcom/google/a/t;->b:F

    return-void
.end method

.method private a()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/a/t;->a:F

    return v0
.end method

.method public static a(Lcom/google/a/t;Lcom/google/a/t;)F
    .locals 2

    .line 116
    iget v0, p0, Lcom/google/a/t;->a:F

    iget p0, p0, Lcom/google/a/t;->b:F

    iget v1, p1, Lcom/google/a/t;->a:F

    iget p1, p1, Lcom/google/a/t;->b:F

    invoke-static {v0, p0, v1, p1}, Lcom/google/a/c/a/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/a/t;Lcom/google/a/t;Lcom/google/a/t;)F
    .locals 3

    .line 125
    iget v0, p1, Lcom/google/a/t;->a:F

    .line 126
    iget p1, p1, Lcom/google/a/t;->b:F

    .line 127
    iget v1, p2, Lcom/google/a/t;->a:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/google/a/t;->b:F

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    iget p2, p2, Lcom/google/a/t;->b:F

    sub-float/2addr p2, p1

    iget p0, p0, Lcom/google/a/t;->a:F

    sub-float/2addr p0, v0

    mul-float p2, p2, p0

    sub-float/2addr v1, p2

    return v1
.end method

.method public static a([Lcom/google/a/t;)V
    .locals 11

    const/4 v0, 0x0

    .line 73
    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v1, v3}, Lcom/google/a/t;->a(Lcom/google/a/t;Lcom/google/a/t;)F

    move-result v1

    .line 74
    aget-object v3, p0, v2

    const/4 v4, 0x2

    aget-object v5, p0, v4

    invoke-static {v3, v5}, Lcom/google/a/t;->a(Lcom/google/a/t;Lcom/google/a/t;)F

    move-result v3

    .line 75
    aget-object v5, p0, v0

    aget-object v6, p0, v4

    invoke-static {v5, v6}, Lcom/google/a/t;->a(Lcom/google/a/t;Lcom/google/a/t;)F

    move-result v5

    cmpl-float v6, v3, v1

    if-ltz v6, :cond_0

    cmpl-float v6, v3, v5

    if-ltz v6, :cond_0

    .line 82
    aget-object v1, p0, v0

    .line 83
    aget-object v3, p0, v2

    .line 84
    aget-object v5, p0, v4

    goto :goto_0

    :cond_0
    cmpl-float v3, v5, v3

    if-ltz v3, :cond_1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1

    .line 86
    aget-object v1, p0, v2

    .line 87
    aget-object v3, p0, v0

    .line 88
    aget-object v5, p0, v4

    goto :goto_0

    .line 90
    :cond_1
    aget-object v1, p0, v4

    .line 91
    aget-object v3, p0, v0

    .line 92
    aget-object v5, p0, v2

    .line 1125
    :goto_0
    iget v6, v1, Lcom/google/a/t;->a:F

    .line 1126
    iget v7, v1, Lcom/google/a/t;->b:F

    .line 1127
    iget v8, v5, Lcom/google/a/t;->a:F

    sub-float/2addr v8, v6

    iget v9, v3, Lcom/google/a/t;->b:F

    sub-float/2addr v9, v7

    mul-float v8, v8, v9

    iget v9, v5, Lcom/google/a/t;->b:F

    sub-float/2addr v9, v7

    iget v7, v3, Lcom/google/a/t;->a:F

    sub-float/2addr v7, v6

    mul-float v9, v9, v7

    sub-float/2addr v8, v9

    const/4 v6, 0x0

    cmpg-float v6, v8, v6

    if-gez v6, :cond_2

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    .line 105
    :cond_2
    aput-object v3, p0, v0

    .line 106
    aput-object v1, p0, v2

    .line 107
    aput-object v5, p0, v4

    return-void
.end method

.method private b()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/a/t;->b:F

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    instance-of v0, p1, Lcom/google/a/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Lcom/google/a/t;

    .line 49
    iget v0, p0, Lcom/google/a/t;->a:F

    iget v2, p1, Lcom/google/a/t;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/a/t;->b:F

    iget p1, p1, Lcom/google/a/t;->b:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/a/t;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/a/t;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/a/t;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/t;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
