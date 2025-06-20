.class final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;
.super Ljava/lang/Object;
.source "Ipc.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 11

    .line 4345
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4347
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4346
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4348
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4350
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Imei"

    aput-object v4, v3, v0

    const-string v4, "Mac"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 4348
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4353
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4352
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->b(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4354
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4356
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    const-string v6, "Type"

    aput-object v6, v4, v0

    const-string v6, "ValBoolean"

    aput-object v6, v4, v5

    const-string v6, "ValInt"

    aput-object v6, v4, v2

    const-string v6, "ValLong"

    const/4 v7, 0x3

    aput-object v6, v4, v7

    const-string v6, "ValFloat"

    const/4 v8, 0x4

    aput-object v6, v4, v8

    const-string v6, "ValDouble"

    const/4 v9, 0x5

    aput-object v6, v4, v9

    const-string v6, "ValString"

    const/4 v10, 0x6

    aput-object v6, v4, v10

    invoke-direct {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 4354
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->b(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4359
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4358
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->c(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4360
    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 4362
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "Cmd"

    aput-object v6, v4, v0

    const-string v0, "Arg1"

    aput-object v0, v4, v5

    const-string v0, "Arg2"

    aput-object v0, v4, v2

    const-string v0, "Arg3"

    aput-object v0, v4, v7

    const-string v0, "FileData"

    aput-object v0, v4, v8

    const-string v0, "Arg4"

    aput-object v0, v4, v9

    const-string v0, "PkgName"

    aput-object v0, v4, v10

    const-string v0, "ClassName"

    aput-object v0, v4, v3

    const-string v0, "MethodName"

    const/16 v2, 0x8

    aput-object v0, v4, v2

    const-string v0, "Types"

    const/16 v2, 0x9

    aput-object v0, v4, v2

    const-string v0, "Params"

    const/16 v2, 0xa

    aput-object v0, v4, v2

    const-string v0, "IsSyncCall"

    const/16 v2, 0xb

    aput-object v0, v4, v2

    const-string v0, "WaitId"

    const/16 v2, 0xc

    aput-object v0, v4, v2

    const-string v0, "RetValue"

    const/16 v2, 0xd

    aput-object v0, v4, v2

    const-string v0, "Encrypt"

    const/16 v2, 0xe

    aput-object v0, v4, v2

    const-string v0, "IsDebug"

    const/16 v2, 0xf

    aput-object v0, v4, v2

    invoke-direct {p1, v1, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 4360
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->c(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
