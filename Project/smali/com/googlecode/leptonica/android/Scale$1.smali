.class final synthetic Lcom/googlecode/leptonica/android/Scale$1;
.super Ljava/lang/Object;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Scale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/googlecode/leptonica/android/Scale$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/googlecode/leptonica/android/Scale$1;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/googlecode/leptonica/android/Scale$1;->a:[I

    sget v2, Lcom/googlecode/leptonica/android/Scale$a;->a:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/googlecode/leptonica/android/Scale$1;->a:[I

    sget v2, Lcom/googlecode/leptonica/android/Scale$a;->b:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/googlecode/leptonica/android/Scale$1;->a:[I

    sget v2, Lcom/googlecode/leptonica/android/Scale$a;->c:I

    sub-int/2addr v2, v0

    const/4 v0, 0x3

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
