.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Ipc.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;",
        ">;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imei_:Ljava/lang/Object;

.field private mac_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 607
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    const-string v0, ""

    .line 681
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 495
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 607
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    const-string p1, ""

    .line 681
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 501
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 478
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 508
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 483
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 504
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$500()Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
    .locals 2

    .line 534
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
    .locals 4

    .line 542
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    .line 543
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 552
    :cond_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;I)I

    .line 554
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 513
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 514
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    const-string v0, ""

    .line 515
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 516
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearImei()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 661
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 662
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 663
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMac()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 735
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 736
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 737
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 2

    .line 521
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
    .locals 1

    .line 530
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 526
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 619
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 620
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 621
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 622
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    return-object v0

    .line 625
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 634
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 635
    check-cast v0, Ljava/lang/String;

    .line 636
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 638
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    return-object v0

    .line 641
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getMac()Ljava/lang/String;
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 693
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 694
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 695
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 696
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    return-object v0

    .line 699
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMacBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 708
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 709
    check-cast v0, Ljava/lang/String;

    .line 710
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 712
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    return-object v0

    .line 715
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final hasImei()Z
    .locals 2

    .line 612
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMac()Z
    .locals 2

    .line 686
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    const/4 v1, 0x2

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

    .line 488
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    .line 489
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 568
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 569
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->hasImei()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 571
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 572
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->hasMac()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 576
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->access$800(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 577
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    .line 579
    :cond_2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 593
    :try_start_0
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 595
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    .line 601
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    .line 559
    instance-of v0, p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    if-eqz v0, :cond_0

    .line 560
    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1

    .line 562
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setImei(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 650
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 652
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 653
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 654
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 672
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 674
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 675
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->imei_:Ljava/lang/Object;

    .line 676
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMac(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 724
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 726
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 727
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 728
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMacBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 746
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 748
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->bitField0_:I

    .line 749
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->mac_:Ljava/lang/Object;

    .line 750
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device$Builder;->onChanged()V

    return-object p0
.end method
