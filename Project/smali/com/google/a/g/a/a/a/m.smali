.class final Lcom/google/a/g/a/a/a/m;
.super Ljava/lang/Object;
.source "CurrentParsingState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/g/a/a/a/m$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/a/g/a/a/a/m;->a:I

    .line 45
    sget v0, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/a/g/a/a/a/m;->a:I

    return v0
.end method

.method private b(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/google/a/g/a/a/a/m;->a:I

    return-void
.end method

.method private b()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    sget v1, Lcom/google/a/g/a/a/a/m$a;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    sget v1, Lcom/google/a/g/a/a/a/m$a;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    sget v1, Lcom/google/a/g/a/a/a/m$a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 1

    .line 73
    sget v0, Lcom/google/a/g/a/a/a/m$a;->a:I

    iput v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    return-void
.end method

.method private f()V
    .locals 1

    .line 77
    sget v0, Lcom/google/a/g/a/a/a/m$a;->b:I

    iput v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    return-void
.end method

.method private g()V
    .locals 1

    .line 81
    sget v0, Lcom/google/a/g/a/a/a/m$a;->c:I

    iput v0, p0, Lcom/google/a/g/a/a/a/m;->b:I

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/a/g/a/a/a/m;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/a/g/a/a/a/m;->a:I

    return-void
.end method
