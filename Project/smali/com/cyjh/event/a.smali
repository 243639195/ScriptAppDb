.class public final Lcom/cyjh/event/a;
.super Ljava/lang/Object;
.source "DebugHelper.java"


# static fields
.field private static a:Z

.field private static b:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    const/4 p0, 0x0

    .line 18
    sput-boolean p0, Lcom/cyjh/event/a;->a:Z

    return-void
.end method

.method public static a()[B
    .locals 2

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x1

    .line 11
    sput-boolean v1, Lcom/cyjh/event/a;->a:Z

    .line 13
    sget-object v1, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
