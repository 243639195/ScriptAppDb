.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Ipc.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReturnValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALBOOLEAN_FIELD_NUMBER:I = 0x2

.field public static final VALDOUBLE_FIELD_NUMBER:I = 0x6

.field public static final VALFLOAT_FIELD_NUMBER:I = 0x5

.field public static final VALINT_FIELD_NUMBER:I = 0x3

.field public static final VALLONG_FIELD_NUMBER:I = 0x4

.field public static final VALSTRING_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private valBoolean_:Z

.field private valDouble_:D

.field private valFloat_:F

.field private valInt_:I

.field private valLong_:J

.field private valString_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 959
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 1724
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Z)V

    .line 1725
    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 874
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1123
    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    .line 1159
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    .line 875
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->initFields()V

    .line 878
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 882
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6

    const/16 v6, 0x18

    if-eq v3, v6, :cond_5

    const/16 v6, 0x20

    if-eq v3, v6, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    .line 888
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 931
    :cond_1
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 932
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    goto :goto_0

    .line 926
    :cond_2
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 927
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    goto :goto_0

    .line 921
    :cond_3
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 922
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    goto :goto_0

    .line 916
    :cond_4
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    goto :goto_0

    .line 911
    :cond_5
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    goto :goto_0

    .line 906
    :cond_6
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    goto :goto_0

    .line 895
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 896
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v4

    if-nez v4, :cond_8

    .line 898
    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 900
    :cond_8
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    .line 901
    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 940
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 941
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 938
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 944
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->makeExtensionsImmutable()V

    .line 945
    throw p1

    .line 943
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 944
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 846
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 851
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1123
    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    .line 1159
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    .line 852
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .locals 0

    .line 846
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 854
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1123
    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    .line 1159
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    .line 854
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 846
    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Z)Z
    .locals 0

    .line 846
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I
    .locals 0

    .line 846
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;J)J
    .locals 0

    .line 846
    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;F)F
    .locals 0

    .line 846
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    return p1
.end method

.method static synthetic access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;D)D
    .locals 0

    .line 846
    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Ljava/lang/Object;
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I
    .locals 0

    .line 846
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1

    .line 858
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 949
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 1115
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const/4 v0, 0x0

    .line 1116
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    .line 1117
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    const-wide/16 v0, 0x0

    .line 1118
    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    const/4 v0, 0x0

    .line 1119
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    const-wide/16 v0, 0x0

    .line 1120
    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    const-string v0, ""

    .line 1121
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .locals 1

    .line 1258
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->access$1300()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .locals 1

    .line 1261
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1238
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1244
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1208
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1214
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1218
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1224
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .locals 1

    .line 862
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            ">;"
        }
    .end annotation

    .line 971
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 1161
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1165
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    .line 1167
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1169
    :cond_1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1170
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    .line 1171
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1173
    :cond_2
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 1174
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    .line 1175
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1177
    :cond_3
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 1178
    iget-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    .line 1179
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1181
    :cond_4
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 1182
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    .line 1183
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v2, v0

    .line 1185
    :cond_5
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 1186
    iget-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    .line 1187
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v2, v0

    .line 1189
    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    .line 1191
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1193
    :cond_7
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 1194
    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    return v2
.end method

.method public final getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValBoolean()Z
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    return v0
.end method

.method public final getValDouble()D
    .locals 2

    .line 1068
    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    return-wide v0
.end method

.method public final getValFloat()F
    .locals 1

    .line 1052
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    return v0
.end method

.method public final getValInt()I
    .locals 1

    .line 1020
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    return v0
.end method

.method public final getValLong()J
    .locals 2

    .line 1036
    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    return-wide v0
.end method

.method public final getValString()Ljava/lang/String;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    .line 1085
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1086
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1088
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1090
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getValStringBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    .line 1103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1104
    check-cast v0, Ljava/lang/String;

    .line 1105
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1107
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object v0

    .line 1110
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final hasType()Z
    .locals 2

    .line 982
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValBoolean()Z
    .locals 2

    .line 998
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValDouble()Z
    .locals 2

    .line 1062
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValFloat()Z
    .locals 2

    .line 1046
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValInt()Z
    .locals 2

    .line 1014
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValLong()Z
    .locals 2

    .line 1030
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValString()Z
    .locals 2

    .line 1078
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

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

    .line 954
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    .line 955
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1125
    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1128
    :cond_1
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .locals 1

    .line 1259
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .locals 2

    .line 1268
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 846
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .locals 1

    .line 1263
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

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

    .line 1202
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getSerializedSize()I

    .line 1135
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1138
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1139
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1141
    :cond_1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1142
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1144
    :cond_2
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1145
    iget-wide v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1147
    :cond_3
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1148
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1150
    :cond_4
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1151
    iget-wide v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 1153
    :cond_5
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 1154
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1156
    :cond_6
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
