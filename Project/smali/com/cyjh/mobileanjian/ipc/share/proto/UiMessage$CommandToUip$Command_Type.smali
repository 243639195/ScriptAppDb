.class public final enum Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;
.super Ljava/lang/Enum;
.source "UiMessage.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

.field public static final enum GET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

.field public static final GET_UIP_ATTRIBUTE_VALUE:I = 0x65

.field public static final enum SET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

.field public static final SET_UIP_ATTRIBUTE_VALUE:I = 0x66

.field private static final VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8470
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    const-string v1, "GET_UIP_ATTRIBUTE"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->GET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    .line 8474
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    const-string v1, "SET_UIP_ATTRIBUTE"

    const/4 v3, 0x1

    const/16 v4, 0x66

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->SET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    const/4 v0, 0x2

    .line 8461
    new-array v0, v0, [Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->GET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->SET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->$VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    .line 8506
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 8526
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->values()[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8540
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8541
    iput p3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->index:I

    .line 8542
    iput p4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 8523
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;",
            ">;"
        }
    .end annotation

    .line 8503
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 8496
    :pswitch_0
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->SET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    return-object p0

    .line 8495
    :pswitch_1
    sget-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->GET_UIP_ATTRIBUTE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;
    .locals 2

    .line 8530
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8531
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8534
    :cond_0
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;
    .locals 1

    .line 8461
    const-class v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;
    .locals 1

    .line 8461
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->$VALUES:[Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    invoke-virtual {v0}, [Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 8519
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 8491
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 8515
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUip$Command_Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
