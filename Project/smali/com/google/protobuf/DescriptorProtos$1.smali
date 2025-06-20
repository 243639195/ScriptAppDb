.class Lcom/google/protobuf/DescriptorProtos$1;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 17

    .line 17572
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos;->access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 17574
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17573
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17576
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17577
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    const/4 v3, 0x1

    .line 17578
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "File"

    aput-object v5, v4, v1

    .line 17579
    const-class v5, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 17580
    const-class v6, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    .line 17575
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17582
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17581
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17584
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17585
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    const/16 v4, 0xb

    .line 17586
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "Name"

    aput-object v6, v5, v1

    const-string v6, "Package"

    aput-object v6, v5, v3

    const-string v6, "Dependency"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "PublicDependency"

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "WeakDependency"

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const-string v6, "MessageType"

    const/4 v10, 0x5

    aput-object v6, v5, v10

    const-string v6, "EnumType"

    const/4 v11, 0x6

    aput-object v6, v5, v11

    const-string v6, "Service"

    const/4 v12, 0x7

    aput-object v6, v5, v12

    const-string v6, "Extension"

    const/16 v13, 0x8

    aput-object v6, v5, v13

    const-string v6, "Options"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    const-string v6, "SourceCodeInfo"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    .line 17587
    const-class v6, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 17588
    const-class v4, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 17583
    invoke-direct {v0, v2, v5, v6, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17590
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17589
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17592
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17593
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17594
    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "Field"

    aput-object v5, v4, v3

    const-string v5, "Extension"

    aput-object v5, v4, v7

    const-string v5, "NestedType"

    aput-object v5, v4, v8

    const-string v5, "EnumType"

    aput-object v5, v4, v9

    const-string v5, "ExtensionRange"

    aput-object v5, v4, v10

    const-string v5, "Options"

    aput-object v5, v4, v11

    .line 17595
    const-class v5, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    .line 17596
    const-class v6, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 17591
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17598
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17597
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17600
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17601
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17602
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Start"

    aput-object v5, v4, v1

    const-string v5, "End"

    aput-object v5, v4, v3

    .line 17603
    const-class v5, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 17604
    const-class v6, Lcom/google/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    .line 17599
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17606
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17605
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17608
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17609
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17610
    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "Number"

    aput-object v5, v4, v3

    const-string v5, "Label"

    aput-object v5, v4, v7

    const-string v5, "Type"

    aput-object v5, v4, v8

    const-string v5, "TypeName"

    aput-object v5, v4, v9

    const-string v5, "Extendee"

    aput-object v5, v4, v10

    const-string v5, "DefaultValue"

    aput-object v5, v4, v11

    const-string v5, "Options"

    aput-object v5, v4, v12

    .line 17611
    const-class v5, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 17612
    const-class v6, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 17607
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17614
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17613
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$16(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17616
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17617
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17618
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "Value"

    aput-object v5, v4, v3

    const-string v5, "Options"

    aput-object v5, v4, v7

    .line 17619
    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 17620
    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    .line 17615
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$18(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17622
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17621
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$19(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17624
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17625
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17626
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "Number"

    aput-object v5, v4, v3

    const-string v5, "Options"

    aput-object v5, v4, v7

    .line 17627
    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 17628
    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17623
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$21(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17630
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17629
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$22(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17632
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17633
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$23()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17634
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "Method"

    aput-object v5, v4, v3

    const-string v5, "Options"

    aput-object v5, v4, v7

    .line 17635
    const-class v5, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 17636
    const-class v6, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    .line 17631
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$24(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17638
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17637
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$25(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17640
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17641
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17642
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "InputType"

    aput-object v5, v4, v3

    const-string v5, "OutputType"

    aput-object v5, v4, v7

    const-string v5, "Options"

    aput-object v5, v4, v8

    .line 17643
    const-class v5, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 17644
    const-class v6, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 17639
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$27(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17646
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17645
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$28(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17648
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17649
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$29()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17650
    new-array v4, v15, [Ljava/lang/String;

    const-string v5, "JavaPackage"

    aput-object v5, v4, v1

    const-string v5, "JavaOuterClassname"

    aput-object v5, v4, v3

    const-string v5, "JavaMultipleFiles"

    aput-object v5, v4, v7

    const-string v5, "JavaGenerateEqualsAndHash"

    aput-object v5, v4, v8

    const-string v5, "OptimizeFor"

    aput-object v5, v4, v9

    const-string v5, "GoPackage"

    aput-object v5, v4, v10

    const-string v5, "CcGenericServices"

    aput-object v5, v4, v11

    const-string v5, "JavaGenericServices"

    aput-object v5, v4, v12

    const-string v5, "PyGenericServices"

    aput-object v5, v4, v13

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v14

    .line 17651
    const-class v5, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17652
    const-class v6, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 17647
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$30(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17654
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17653
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$31(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17656
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17657
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$32()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17658
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "MessageSetWireFormat"

    aput-object v5, v4, v1

    const-string v5, "NoStandardDescriptorAccessor"

    aput-object v5, v4, v3

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v7

    .line 17659
    const-class v5, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 17660
    const-class v6, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 17655
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$33(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17662
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17661
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$34(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17664
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17665
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17666
    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "Ctype"

    aput-object v5, v4, v1

    const-string v5, "Packed"

    aput-object v5, v4, v3

    const-string v5, "Lazy"

    aput-object v5, v4, v7

    const-string v5, "Deprecated"

    aput-object v5, v4, v8

    const-string v5, "ExperimentalMapKey"

    aput-object v5, v4, v9

    const-string v5, "Weak"

    aput-object v5, v4, v10

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v11

    .line 17667
    const-class v5, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    .line 17668
    const-class v6, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 17663
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$36(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17670
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17669
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$37(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17672
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17673
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$38()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17674
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "AllowAlias"

    aput-object v5, v4, v1

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v3

    .line 17675
    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 17676
    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    .line 17671
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$39(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17678
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17677
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$40(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17680
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17681
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$41()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17682
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v1

    .line 17683
    const-class v5, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17684
    const-class v6, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    .line 17679
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$42(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17686
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xd

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17685
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$43(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17688
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17689
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$44()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17690
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v1

    .line 17691
    const-class v5, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    .line 17692
    const-class v6, Lcom/google/protobuf/DescriptorProtos$ServiceOptions$Builder;

    .line 17687
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$45(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17694
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xe

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17693
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$46(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17696
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17697
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$47()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17698
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "UninterpretedOption"

    aput-object v5, v4, v1

    .line 17699
    const-class v5, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 17700
    const-class v6, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;

    .line 17695
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$48(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17702
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xf

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17701
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$49(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17704
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17705
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17706
    new-array v4, v12, [Ljava/lang/String;

    const-string v5, "Name"

    aput-object v5, v4, v1

    const-string v5, "IdentifierValue"

    aput-object v5, v4, v3

    const-string v5, "PositiveIntValue"

    aput-object v5, v4, v7

    const-string v5, "NegativeIntValue"

    aput-object v5, v4, v8

    const-string v5, "DoubleValue"

    aput-object v5, v4, v9

    const-string v5, "StringValue"

    aput-object v5, v4, v10

    const-string v5, "AggregateValue"

    aput-object v5, v4, v11

    .line 17707
    const-class v5, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 17708
    const-class v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 17703
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$51(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17710
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17709
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$52(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17712
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17713
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$53()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17714
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "NamePart"

    aput-object v5, v4, v1

    const-string v5, "IsExtension"

    aput-object v5, v4, v3

    .line 17715
    const-class v5, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 17716
    const-class v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    .line 17711
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$54(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17718
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17717
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$55(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17720
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17721
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$56()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17722
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "Location"

    aput-object v5, v4, v1

    .line 17723
    const-class v5, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 17724
    const-class v6, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 17719
    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$57(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 17726
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$56()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17725
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$58(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 17728
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 17729
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$59()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    .line 17730
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Path"

    aput-object v5, v4, v1

    const-string v1, "Span"

    aput-object v1, v4, v3

    const-string v1, "LeadingComments"

    aput-object v1, v4, v7

    const-string v1, "TrailingComments"

    aput-object v1, v4, v8

    .line 17731
    const-class v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 17732
    const-class v3, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 17727
    invoke-direct {v0, v2, v4, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos;->access$60(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    const/4 v0, 0x0

    return-object v0
.end method
