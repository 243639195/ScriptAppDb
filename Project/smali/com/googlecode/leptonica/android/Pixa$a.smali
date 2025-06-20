.class final Lcom/googlecode/leptonica/android/Pixa$a;
.super Ljava/lang/Object;
.source "Pixa.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Pixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/googlecode/leptonica/android/Pix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/leptonica/android/Pixa;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/googlecode/leptonica/android/Pixa;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 465
    iput p1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/leptonica/android/Pixa;B)V
    .locals 0

    .line 461
    invoke-direct {p0, p1}, Lcom/googlecode/leptonica/android/Pixa$a;-><init>(Lcom/googlecode/leptonica/android/Pixa;)V

    return-void
.end method

.method private a()Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    .line 1276
    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v2, :cond_0

    .line 1277
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1279
    :cond_0
    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1285
    :cond_1
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    .line 1160
    iget-boolean v1, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v1, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget-wide v0, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetCount(J)I

    move-result v0

    if-lez v0, :cond_1

    .line 470
    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 5

    .line 1474
    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$a;->a:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$a;->b:I

    .line 2276
    iget-boolean v2, v0, Lcom/googlecode/leptonica/android/Pixa;->d:Z

    if-eqz v2, :cond_0

    .line 2277
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2279
    :cond_0
    iget-wide v2, v0, Lcom/googlecode/leptonica/android/Pixa;->a:J

    invoke-static {v2, v3, v1}, Lcom/googlecode/leptonica/android/Pixa;->nativeGetPix(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2285
    :cond_1
    new-instance v2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v2
.end method

.method public final remove()V
    .locals 1

    .line 478
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
