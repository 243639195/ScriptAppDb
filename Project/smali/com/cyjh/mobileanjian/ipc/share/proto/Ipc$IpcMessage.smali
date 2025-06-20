.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Ipc.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpcMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    }
.end annotation


# static fields
.field public static final ARG1_FIELD_NUMBER:I = 0x2

.field public static final ARG2_FIELD_NUMBER:I = 0x3

.field public static final ARG3_FIELD_NUMBER:I = 0x4

.field public static final ARG4_FIELD_NUMBER:I = 0x6

.field public static final CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final CMD_FIELD_NUMBER:I = 0x1

.field public static final ENCRYPT_FIELD_NUMBER:I = 0xf

.field public static final FILEDATA_FIELD_NUMBER:I = 0x5

.field public static final ISDEBUG_FIELD_NUMBER:I = 0x10

.field public static final ISSYNCCALL_FIELD_NUMBER:I = 0xc

.field public static final METHODNAME_FIELD_NUMBER:I = 0x9

.field public static final PARAMS_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKGNAME_FIELD_NUMBER:I = 0x7

.field public static final RETVALUE_FIELD_NUMBER:I = 0xe

.field public static final TYPES_FIELD_NUMBER:I = 0xa

.field public static final WAITID_FIELD_NUMBER:I = 0xd

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

.field private static final serialVersionUID:J


# instance fields
.field private arg1_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arg2_:Lcom/google/protobuf/LazyStringList;

.field private arg3_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private arg4_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private cmd_:I

.field private encrypt_:Z

.field private fileData_:Lcom/google/protobuf/ByteString;

.field private isDebug_:Z

.field private isSyncCall_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private methodName_:Ljava/lang/Object;

.field private params_:Lcom/google/protobuf/LazyStringList;

.field private pkgName_:Ljava/lang/Object;

.field private retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

.field private types_:Lcom/google/protobuf/LazyStringList;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private waitId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2213
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 4291
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Z)V

    .line 4292
    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2006
    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v4, -0x1

    .line 2673
    iput-byte v4, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    .line 2736
    iput v4, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    .line 2007
    invoke-direct/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->initFields()V

    .line 2010
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    const/16 v8, 0x400

    const/4 v9, 0x4

    const/16 v10, 0x200

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/16 v13, 0x20

    if-nez v5, :cond_15

    .line 2014
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    const/4 v8, 0x1

    .line 2020
    invoke-virtual {v1, v2, v4, v3, v14}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    goto/16 :goto_7

    .line 2167
    :sswitch_0
    iget v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v14, v10

    iput v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2168
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    iput-boolean v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 2162
    :sswitch_1
    iget v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit16 v14, v14, 0x100

    iput v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    iput-boolean v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    goto :goto_1

    .line 2150
    :sswitch_2
    iget v15, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v14, 0x80

    and-int/2addr v15, v14

    if-ne v15, v14, :cond_1

    .line 2151
    iget-object v15, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {v15}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v15

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 2153
    :goto_2
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v2, v6, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    if-eqz v15, :cond_2

    .line 2155
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {v15, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    .line 2156
    invoke-virtual {v15}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    .line 2158
    :cond_2
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v14

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    goto :goto_1

    .line 2144
    :sswitch_3
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2145
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    goto :goto_1

    .line 2139
    :sswitch_4
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v13

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2140
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    goto :goto_1

    :sswitch_5
    and-int/lit16 v6, v7, 0x400

    if-eq v6, v8, :cond_3

    .line 2132
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v6, v7, 0x400

    move v7, v6

    .line 2135
    :cond_3
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v14

    invoke-interface {v6, v14}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    :sswitch_6
    and-int/lit16 v6, v7, 0x200

    if-eq v6, v10, :cond_4

    .line 2124
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v6, v7, 0x200

    move v7, v6

    .line 2127
    :cond_4
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v14

    invoke-interface {v6, v14}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 2118
    :sswitch_7
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2119
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2113
    :sswitch_8
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v12

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2114
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2108
    :sswitch_9
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v9

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2109
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2095
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 2096
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v14, v7, 0x20

    if-eq v14, v13, :cond_5

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_5

    .line 2098
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    .line 2101
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 2102
    iget-object v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x400

    const/4 v9, 0x4

    goto :goto_3

    .line 2104
    :cond_6
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v6, v7, 0x20

    if-eq v6, v13, :cond_7

    .line 2088
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x20

    move v7, v6

    .line 2091
    :cond_7
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2082
    :sswitch_c
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v11

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2083
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :sswitch_d
    and-int/lit8 v6, v7, 0x8

    if-eq v6, v12, :cond_8

    .line 2062
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x8

    move v7, v6

    .line 2065
    :cond_8
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2069
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 2070
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v8, v7, 0x8

    if-eq v8, v12, :cond_9

    .line 2071
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_9

    .line 2072
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x8

    .line 2075
    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_a

    .line 2076
    iget-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2078
    :cond_a
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_f
    and-int/lit8 v6, v7, 0x4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_b

    .line 2054
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v6, v7, 0x4

    move v7, v6

    .line 2057
    :cond_b
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 2040
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 2041
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v8, v7, 0x2

    if-eq v8, v11, :cond_c

    .line 2042
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_c

    .line 2043
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x2

    .line 2046
    :cond_c
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_d

    .line 2047
    iget-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2049
    :cond_d
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_11
    and-int/lit8 v6, v7, 0x2

    if-eq v6, v11, :cond_e

    .line 2033
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x2

    move v7, v6

    .line 2036
    :cond_e
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2027
    :sswitch_12
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v8, 0x1

    or-int/2addr v6, v8

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    .line 2028
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :sswitch_13
    const/4 v8, 0x1

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    :goto_7
    if-nez v6, :cond_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2176
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2177
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 2174
    invoke-virtual {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    and-int/lit8 v3, v7, 0x2

    if-ne v3, v11, :cond_f

    .line 2180
    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    :cond_f
    and-int/lit8 v3, v7, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_10

    .line 2183
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 v3, v7, 0x8

    if-ne v3, v12, :cond_11

    .line 2186
    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    :cond_11
    and-int/lit8 v3, v7, 0x20

    if-ne v3, v13, :cond_12

    .line 2189
    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    :cond_12
    and-int/lit16 v3, v7, 0x200

    if-ne v3, v10, :cond_13

    .line 2192
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_13
    const/16 v3, 0x400

    and-int/lit16 v5, v7, 0x400

    if-ne v5, v3, :cond_14

    .line 2195
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    .line 2197
    :cond_14
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->makeExtensionsImmutable()V

    .line 2199
    throw v2

    :cond_15
    and-int/lit8 v2, v7, 0x2

    if-ne v2, v11, :cond_16

    .line 2180
    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    :cond_16
    and-int/lit8 v2, v7, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17

    .line 2183
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    :cond_17
    and-int/lit8 v2, v7, 0x8

    if-ne v2, v12, :cond_18

    .line 2186
    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    :cond_18
    and-int/lit8 v2, v7, 0x20

    if-ne v2, v13, :cond_19

    .line 2189
    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    :cond_19
    and-int/lit16 v2, v7, 0x200

    if-ne v2, v10, :cond_1a

    .line 2192
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_1a
    const/16 v2, 0x400

    and-int/lit16 v3, v7, 0x400

    if-ne v3, v2, :cond_1b

    .line 2195
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    .line 2197
    :cond_1b
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x12 -> :sswitch_10
        0x1a -> :sswitch_f
        0x22 -> :sswitch_e
        0x25 -> :sswitch_d
        0x2a -> :sswitch_c
        0x30 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x68 -> :sswitch_3
        0x72 -> :sswitch_2
        0x78 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1978
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1983
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 2673
    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    .line 2736
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    .line 1984
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .locals 0

    .line 1978
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1986
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 2673
    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    .line 2736
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    .line 1986
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 1978
    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .locals 0

    .line 1978
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .locals 0

    .line 1978
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .locals 0

    .line 1978
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 0

    .line 1978
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .locals 0

    .line 1978
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .locals 0

    .line 1978
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .locals 0

    .line 1978
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1

    .line 1990
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2203
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 2656
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    .line 2657
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    .line 2658
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    .line 2659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    .line 2660
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    .line 2661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    const-string v1, ""

    .line 2662
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    const-string v1, ""

    .line 2663
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    const-string v1, ""

    .line 2664
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    .line 2665
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    .line 2666
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    .line 2667
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    .line 2668
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    .line 2669
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    .line 2670
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    .line 2671
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .locals 1

    .line 2898
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->access$2800()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .locals 1

    .line 2901
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2878
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2884
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2848
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2854
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2889
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2895
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2868
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2874
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2858
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2864
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method


# virtual methods
.method public final getArg1(I)I
    .locals 1

    .line 2265
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getArg1Count()I
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg1List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2253
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object v0
.end method

.method public final getArg2(I)Ljava/lang/String;
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getArg2Bytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2295
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getArg2Count()I
    .locals 1

    .line 2282
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getArg2List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2276
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getArg3(I)F
    .locals 1

    .line 2318
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final getArg3Count()I
    .locals 1

    .line 2312
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg3List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2306
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object v0
.end method

.method public final getArg4(I)J
    .locals 2

    .line 2357
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getArg4Count()I
    .locals 1

    .line 2351
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg4List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2345
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 2

    .line 2428
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    .line 2429
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2430
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2432
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2434
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2435
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2436
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2446
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    .line 2447
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2448
    check-cast v0, Ljava/lang/String;

    .line 2449
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2451
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object v0

    .line 2454
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCmd()I
    .locals 1

    .line 2242
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .locals 1

    .line 1994
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getEncrypt()Z
    .locals 1

    .line 2636
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    return v0
.end method

.method public final getFileData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getIsDebug()Z
    .locals 1

    .line 2652
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return v0
.end method

.method public final getIsSyncCall()Z
    .locals 1

    .line 2574
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    return v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 2

    .line 2471
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    .line 2472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2473
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2475
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2477
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2478
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2489
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    .line 2490
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2491
    check-cast v0, Ljava/lang/String;

    .line 2492
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2494
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object v0

    .line 2497
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getParams(I)Ljava/lang/String;
    .locals 1

    .line 2551
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getParamsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2558
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getParamsCount()I
    .locals 1

    .line 2545
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2539
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation

    .line 2225
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 2

    .line 2381
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    .line 2382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2383
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2385
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2387
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2388
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2389
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getPkgNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2403
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    .line 2404
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2405
    check-cast v0, Ljava/lang/String;

    .line 2406
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2408
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object v0

    .line 2411
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getRetValueOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;
    .locals 1

    .line 2612
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 8

    .line 2738
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2742
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2743
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    .line 2744
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2748
    :goto_1
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 2749
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    .line 2750
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 2753
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2757
    :goto_2
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2758
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    .line 2759
    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 2762
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 2766
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 2768
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 2770
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_4

    const/4 v3, 0x5

    .line 2771
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    .line 2772
    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2776
    :goto_3
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 2777
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    .line 2778
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v5

    .line 2781
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg4List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 2783
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x7

    .line 2785
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2787
    :cond_6
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 2789
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2791
    :cond_7
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    const/16 v3, 0x9

    .line 2793
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2797
    :goto_4
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 2798
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    .line 2799
    invoke-interface {v6, v3}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    add-int/2addr v0, v5

    .line 2802
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 2806
    :goto_5
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 2807
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    .line 2808
    invoke-interface {v5, v2}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    add-int/2addr v0, v3

    .line 2811
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2813
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xc

    .line 2814
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    .line 2815
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2817
    :cond_b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    const/16 v1, 0xd

    .line 2818
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    .line 2819
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2821
    :cond_c
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    const/16 v1, 0xe

    .line 2822
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    .line 2823
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2825
    :cond_d
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0xf

    .line 2826
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    .line 2827
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2829
    :cond_e
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    .line 2830
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    .line 2831
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2833
    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2834
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    return v0
.end method

.method public final getTypes(I)Ljava/lang/String;
    .locals 1

    .line 2521
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2528
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getTypesCount()I
    .locals 1

    .line 2515
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2509
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2001
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWaitId()I
    .locals 1

    .line 2590
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    return v0
.end method

.method public final hasClassName()Z
    .locals 2

    .line 2422
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCmd()Z
    .locals 2

    .line 2236
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEncrypt()Z
    .locals 2

    .line 2626
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFileData()Z
    .locals 2

    .line 2328
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsDebug()Z
    .locals 2

    .line 2646
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsSyncCall()Z
    .locals 2

    .line 2568
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMethodName()Z
    .locals 2

    .line 2465
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPkgName()Z
    .locals 2

    .line 2371
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetValue()Z
    .locals 2

    .line 2600
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWaitId()Z
    .locals 2

    .line 2584
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 2208
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    .line 2209
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2675
    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2678
    :cond_1
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .locals 1

    .line 2899
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .locals 2

    .line 2908
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1978
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .locals 1

    .line 2903
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1978
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2842
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2684
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getSerializedSize()I

    .line 2685
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2686
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2688
    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 2689
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2691
    :goto_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 2692
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2694
    :goto_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ge v1, v2, :cond_3

    .line 2695
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2697
    :cond_3
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x5

    .line 2698
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    const/4 v1, 0x0

    .line 2700
    :goto_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 2701
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v2, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2703
    :cond_5
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x7

    .line 2704
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2706
    :cond_6
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 2707
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2709
    :cond_7
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0x9

    .line 2710
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_8
    const/4 v1, 0x0

    .line 2712
    :goto_4
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    const/16 v3, 0xa

    .line 2713
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2715
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 2716
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2718
    :cond_a
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    .line 2719
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2721
    :cond_b
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    .line 2722
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2724
    :cond_c
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    .line 2725
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2727
    :cond_d
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    const/16 v0, 0xf

    .line 2728
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2730
    :cond_e
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    .line 2731
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2733
    :cond_f
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
