.class public final Lcom/google/a/i/a/i;
.super Ljava/lang/Object;
.source "QRCodeDecoderMetaData.java"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    return v0
.end method


# virtual methods
.method public final a([Lcom/google/a/t;)V
    .locals 4

    .line 48
    iget-boolean v0, p0, Lcom/google/a/i/a/i;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    aget-object v1, p1, v0

    const/4 v2, 0x2

    .line 52
    aget-object v3, p1, v2

    aput-object v3, p1, v0

    .line 53
    aput-object v1, p1, v2

    return-void

    :cond_1
    :goto_0
    return-void
.end method
