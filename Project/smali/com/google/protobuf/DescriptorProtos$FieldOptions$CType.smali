.class public final enum Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum CORD:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final CORD_VALUE:I = 0x1

.field private static final synthetic ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum STRING_PIECE:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final STRING_PIECE_VALUE:I = 0x2

.field public static final STRING_VALUE:I

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11320
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 11321
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "CORD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 11322
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "STRING_PIECE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v5, v1, v2

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v5, v1, v3

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v5, v1, v4

    sput-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 11347
    new-instance v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType$1;

    invoke-direct {v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType$1;-><init>()V

    .line 11346
    sput-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 11366
    new-array v0, v0, [Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 11367
    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v4

    .line 11366
    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 11382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11383
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->index:I

    .line 11384
    iput p4, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 11363
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation

    .line 11343
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 11336
    :pswitch_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0

    .line 11335
    :pswitch_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0

    .line 11334
    :pswitch_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->STRING:Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 2

    .line 11372
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11373
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11376
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->ENUM$VALUES:[Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 11359
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 11330
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 11355
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
