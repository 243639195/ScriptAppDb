.class final Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;
.super Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularMessageFieldAccessor"
.end annotation


# instance fields
.field private final getBuilderMethodBuilder:Ljava/lang/reflect/Method;

.field private final newBuilderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    .line 1851
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1853
    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    const-string p3, "newBuilder"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-static {p1, p3, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    .line 1855
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "get"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Builder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Class;

    invoke-static {p4, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->access$1(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1854
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->getBuilderMethodBuilder:Ljava/lang/reflect/Method;

    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1862
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage;->access$2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message$Builder;

    .line 1870
    check-cast p1, Lcom/google/protobuf/Message;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getBuilder(Lcom/google/protobuf/GeneratedMessage$Builder;)Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 1884
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->getBuilderMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessage;->access$2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Message$Builder;

    return-object p1
.end method

.method public final newBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 3

    .line 1880
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessage;->access$2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message$Builder;

    return-object v0
.end method

.method public final set(Lcom/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1876
    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-void
.end method
