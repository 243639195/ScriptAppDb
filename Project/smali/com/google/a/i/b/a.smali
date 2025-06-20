.class public final Lcom/google/a/i/b/a;
.super Lcom/google/a/t;
.source "AlignmentPattern.java"


# instance fields
.field final c:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/a/t;-><init>(FF)V

    .line 33
    iput p3, p0, Lcom/google/a/i/b/a;->c:F

    return-void
.end method

.method private a(FFF)Z
    .locals 1

    .line 1042
    iget v0, p0, Lcom/google/a/t;->b:F

    sub-float/2addr p2, v0

    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    const/4 v0, 0x0

    if-gtz p2, :cond_2

    .line 2038
    iget p2, p0, Lcom/google/a/t;->a:F

    sub-float/2addr p3, p2

    .line 41
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2

    .line 42
    iget p2, p0, Lcom/google/a/i/b/a;->c:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_1

    .line 43
    iget p2, p0, Lcom/google/a/i/b/a;->c:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private b(FFF)Lcom/google/a/i/b/a;
    .locals 2

    .line 3038
    iget v0, p0, Lcom/google/a/t;->a:F

    add-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    .line 3042
    iget v1, p0, Lcom/google/a/t;->b:F

    add-float/2addr v1, p1

    div-float/2addr v1, p2

    .line 55
    iget p1, p0, Lcom/google/a/i/b/a;->c:F

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    .line 56
    new-instance p2, Lcom/google/a/i/b/a;

    invoke-direct {p2, v0, v1, p1}, Lcom/google/a/i/b/a;-><init>(FFF)V

    return-object p2
.end method
