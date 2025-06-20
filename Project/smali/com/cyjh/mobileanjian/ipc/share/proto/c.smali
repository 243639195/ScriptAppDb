.class public abstract Lcom/cyjh/mobileanjian/ipc/share/proto/c;
.super Ljava/lang/Object;
.source "ProtoBufDataWraper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/nio/ByteBuffer;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v1, v0, 0x4

    .line 13
    new-array v1, v1, [B

    .line 14
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/c;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public abstract a()[B
.end method
