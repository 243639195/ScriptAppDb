.class final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;
.super Ljava/lang/Object;
.source "UiMessage.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 11

    .line 10189
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10191
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10190
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10192
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10194
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Top"

    aput-object v4, v3, v0

    const-string v4, "Left"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Bottom"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "Right"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10192
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10197
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10196
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->b(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10198
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10200
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v3, 0x1b

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Command"

    aput-object v4, v3, v0

    const-string v4, "ControlId"

    aput-object v4, v3, v5

    const-string v4, "ParentId"

    aput-object v4, v3, v6

    const-string v4, "Text"

    aput-object v4, v3, v7

    const-string v4, "Width"

    aput-object v4, v3, v2

    const-string v4, "Height"

    const/4 v8, 0x5

    aput-object v4, v3, v8

    const-string v4, "LayoutStyle"

    const/4 v9, 0x6

    aput-object v4, v3, v9

    const-string v4, "DefaultCheckStatus"

    const/4 v10, 0x7

    aput-object v4, v3, v10

    const-string v4, "ItemText"

    const/16 v10, 0x8

    aput-object v4, v3, v10

    const-string v4, "ItemIndex"

    const/16 v10, 0x9

    aput-object v4, v3, v10

    const-string v4, "DefaultItemIndex"

    const/16 v10, 0xa

    aput-object v4, v3, v10

    const-string v4, "Path"

    const/16 v10, 0xb

    aput-object v4, v3, v10

    const-string v4, "Url"

    const/16 v10, 0xc

    aput-object v4, v3, v10

    const-string v4, "EnabledStatus"

    const/16 v10, 0xd

    aput-object v4, v3, v10

    const-string v4, "VisibleStatus"

    const/16 v10, 0xe

    aput-object v4, v3, v10

    const-string v4, "Color"

    const/16 v10, 0xf

    aput-object v4, v3, v10

    const-string v4, "AlignType"

    const/16 v10, 0x10

    aput-object v4, v3, v10

    const-string v4, "Padding"

    const/16 v10, 0x11

    aput-object v4, v3, v10

    const-string v4, "UipData"

    const/16 v10, 0x12

    aput-object v4, v3, v10

    const-string v4, "EditInputType"

    const/16 v10, 0x13

    aput-object v4, v3, v10

    const-string v4, "FontType"

    const/16 v10, 0x14

    aput-object v4, v3, v10

    const-string v4, "FontSize"

    const/16 v10, 0x15

    aput-object v4, v3, v10

    const-string v4, "Left"

    const/16 v10, 0x16

    aput-object v4, v3, v10

    const-string v4, "Top"

    const/16 v10, 0x17

    aput-object v4, v3, v10

    const-string v4, "IntParam"

    const/16 v10, 0x18

    aput-object v4, v3, v10

    const-string v4, "StrParam"

    const/16 v10, 0x19

    aput-object v4, v3, v10

    const-string v4, "BoolParam"

    const/16 v10, 0x1a

    aput-object v4, v3, v10

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10198
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->b(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10203
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10202
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->c(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10204
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10206
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ControlId"

    aput-object v4, v3, v0

    const-string v4, "Type"

    aput-object v4, v3, v5

    const-string v4, "EventArgs"

    aput-object v4, v3, v6

    const-string v4, "EventFunctionName"

    aput-object v4, v3, v7

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10204
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->c(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10209
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10208
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10210
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10212
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "ControlId"

    aput-object v4, v3, v0

    const-string v4, "Type"

    aput-object v4, v3, v5

    const-string v4, "BoolValue"

    aput-object v4, v3, v6

    const-string v4, "IntValue"

    aput-object v4, v3, v7

    const-string v4, "StringValue"

    aput-object v4, v3, v2

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10210
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10215
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10214
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->e(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10216
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10218
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Command"

    aput-object v4, v3, v0

    const-string v4, "Event"

    aput-object v4, v3, v5

    const-string v4, "IsSuccess"

    aput-object v4, v3, v6

    const-string v4, "VarTable"

    aput-object v4, v3, v7

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10216
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->e(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10221
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10220
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->f(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10222
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10224
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Command"

    aput-object v4, v3, v0

    const-string v4, "ControlId"

    aput-object v4, v3, v5

    const-string v4, "UipAttributeData"

    aput-object v4, v3, v6

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10222
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->f(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10227
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10226
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->g(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 10228
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10230
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Command"

    aput-object v3, v2, v0

    const-string v0, "Event"

    aput-object v0, v2, v5

    const-string v0, "IsSuccess"

    aput-object v0, v2, v6

    const-string v0, "UipAttributeData"

    aput-object v0, v2, v7

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 10228
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->g(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
