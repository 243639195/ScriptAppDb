.class public final enum Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final enum TYPE_BOOL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_BOOL_VALUE:I = 0x8

.field public static final enum TYPE_BYTES:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_BYTES_VALUE:I = 0xc

.field public static final enum TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_DOUBLE_VALUE:I = 0x1

.field public static final enum TYPE_ENUM:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_ENUM_VALUE:I = 0xe

.field public static final enum TYPE_FIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FIXED32_VALUE:I = 0x7

.field public static final enum TYPE_FIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FIXED64_VALUE:I = 0x6

.field public static final enum TYPE_FLOAT:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_FLOAT_VALUE:I = 0x2

.field public static final enum TYPE_GROUP:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_GROUP_VALUE:I = 0xa

.field public static final enum TYPE_INT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_INT32_VALUE:I = 0x5

.field public static final enum TYPE_INT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_INT64_VALUE:I = 0x3

.field public static final enum TYPE_MESSAGE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_MESSAGE_VALUE:I = 0xb

.field public static final enum TYPE_SFIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SFIXED32_VALUE:I = 0xf

.field public static final enum TYPE_SFIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SFIXED64_VALUE:I = 0x10

.field public static final enum TYPE_SINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SINT32_VALUE:I = 0x11

.field public static final enum TYPE_SINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_SINT64_VALUE:I = 0x12

.field public static final enum TYPE_STRING:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_STRING_VALUE:I = 0x9

.field public static final enum TYPE_UINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_UINT32_VALUE:I = 0xd

.field public static final enum TYPE_UINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field public static final TYPE_UINT64_VALUE:I = 0x4

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 5212
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_DOUBLE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5213
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FLOAT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5214
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT64"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5215
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT64"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5216
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_INT32"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5217
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED64"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5218
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_FIXED32"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5219
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_BOOL"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5220
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_STRING"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v9, v10}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5221
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_GROUP"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v10, v11}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5222
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_MESSAGE"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v11, v12}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5223
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_BYTES"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v12, v13}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5224
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_UINT32"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v13, v14}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5225
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_ENUM"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v14, v15}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5226
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED32"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v15, v14}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5227
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED64"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v14, v15}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5228
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT32"

    const/16 v14, 0x10

    const/16 v13, 0x11

    invoke-direct {v0, v1, v15, v14, v13}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5229
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const-string v1, "TYPE_SINT64"

    const/16 v14, 0x11

    const/16 v15, 0x12

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/4 v13, 0x0

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0xc

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0xd

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0xe

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0xf

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0x10

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v13, 0x11

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5284
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type$1;-><init>()V

    .line 5283
    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    const/16 v0, 0x12

    .line 5303
    new-array v0, v0, [Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 5304
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/4 v13, 0x0

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 5303
    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 5319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5320
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->index:I

    .line 5321
    iput p4, p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 5300
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation

    .line 5280
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 5273
    :pswitch_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5272
    :pswitch_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5271
    :pswitch_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5270
    :pswitch_3
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5269
    :pswitch_4
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5268
    :pswitch_5
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5267
    :pswitch_6
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5266
    :pswitch_7
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5265
    :pswitch_8
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5264
    :pswitch_9
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5263
    :pswitch_a
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5262
    :pswitch_b
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5261
    :pswitch_c
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5260
    :pswitch_d
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT32:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5259
    :pswitch_e
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5258
    :pswitch_f
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_INT64:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5257
    :pswitch_10
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    .line 5256
    :pswitch_11
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 2

    .line 5309
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5310
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5313
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 5296
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 5252
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 5292
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
