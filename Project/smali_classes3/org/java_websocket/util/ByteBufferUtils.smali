.class public Lorg/java_websocket/util/ByteBufferUtils;
.super Ljava/lang/Object;
.source "ByteBufferUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getEmptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "dest"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 53
    .local v0, "fremain":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 54
    .local v2, "toremain":I
    if-le v0, v2, :cond_2

    .line 55
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 56
    .local v1, "limit":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    .end local v1    # "limit":I
    :goto_0
    return v1

    .line 60
    :cond_2
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move v1, v0

    .line 61
    goto :goto_0
.end method
