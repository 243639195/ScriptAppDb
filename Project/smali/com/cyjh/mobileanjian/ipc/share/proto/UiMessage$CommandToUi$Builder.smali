.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "UiMessage.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;",
        ">;",
        "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUiOrBuilder;"
    }
.end annotation


# instance fields
.field private alignType_:I

.field private bitField0_:I

.field private boolParam_:Z

.field private color_:Ljava/lang/Object;

.field private command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

.field private controlId_:Ljava/lang/Object;

.field private defaultCheckStatus_:Z

.field private defaultItemIndex_:I

.field private editInputType_:I

.field private enabledStatus_:Z

.field private fontSize_:I

.field private fontType_:Ljava/lang/Object;

.field private height_:I

.field private intParam_:I

.field private itemIndex_:I

.field private itemText_:Lcom/google/protobuf/LazyStringList;

.field private layoutStyle_:I

.field private left_:I

.field private paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

.field private parentId_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private strParam_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private top_:I

.field private uipData_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;

.field private visibleStatus_:I

.field private width_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3625
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    const-string v0, ""

    .line 3661
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    const-string v0, ""

    .line 3735
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    const-string v0, ""

    .line 3809
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 4015
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 4174
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    const-string v0, ""

    .line 4248
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    const-string v0, ""

    .line 4388
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4495
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    const-string v0, ""

    .line 4612
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    const-string v0, ""

    .line 4743
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    const-string v0, ""

    .line 4949
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 3246
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3625
    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    const-string p1, ""

    .line 3661
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    const-string p1, ""

    .line 3735
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    const-string p1, ""

    .line 3809
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 4015
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    .line 4174
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    const-string p1, ""

    .line 4248
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    const-string p1, ""

    .line 4388
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4495
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    const-string p1, ""

    .line 4612
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    const-string p1, ""

    .line 4743
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    const-string p1, ""

    .line 4949
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 3252
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .locals 0

    .line 3229
    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3229
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3260
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;-><init>()V

    return-object v0
.end method

.method private ensureItemTextIsMutable()V
    .locals 3

    .line 4017
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4018
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    .line 4019
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3234
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4600
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4601
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4604
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 4605
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 4606
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4608
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 3255
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3256
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllItemText(Ljava/lang/Iterable;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;"
        }
    .end annotation

    .line 4079
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    .line 4080
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4081
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final addItemText(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4067
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4069
    :cond_0
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    .line 4070
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4071
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final addItemTextBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4099
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4101
    :cond_0
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    .line 4102
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4103
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .locals 2

    .line 3340
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    .line 3341
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3342
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .locals 5

    .line 3348
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V

    .line 3349
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3354
    :goto_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3358
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3362
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3366
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 3370
    :cond_4
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 3374
    :cond_5
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 3378
    :cond_6
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 3382
    :cond_7
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    .line 3383
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 3384
    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    .line 3386
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3388
    :cond_8
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 3392
    :cond_9
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 3396
    :cond_a
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 3400
    :cond_b
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 3404
    :cond_c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 3408
    :cond_d
    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x2000

    .line 3412
    :cond_e
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x4000

    .line 3416
    :cond_f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_10

    const v2, 0x8000

    or-int/2addr v3, v2

    .line 3420
    :cond_10
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000

    if-ne v2, v4, :cond_11

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    .line 3424
    :cond_11
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_12

    .line 3425
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_1

    .line 3427
    :cond_12
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    :goto_1
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/high16 v4, 0x40000

    if-ne v2, v4, :cond_13

    const/high16 v2, 0x20000

    or-int/2addr v3, v2

    .line 3432
    :cond_13
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    const/high16 v4, 0x80000

    if-ne v2, v4, :cond_14

    const/high16 v2, 0x40000

    or-int/2addr v3, v2

    .line 3436
    :cond_14
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    const/high16 v4, 0x100000

    if-ne v2, v4, :cond_15

    const/high16 v2, 0x80000

    or-int/2addr v3, v2

    .line 3440
    :cond_15
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    const/high16 v4, 0x200000

    if-ne v2, v4, :cond_16

    const/high16 v2, 0x100000

    or-int/2addr v3, v2

    .line 3444
    :cond_16
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    const/high16 v4, 0x400000

    if-ne v2, v4, :cond_17

    const/high16 v2, 0x200000

    or-int/2addr v3, v2

    .line 3448
    :cond_17
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    const/high16 v4, 0x800000

    if-ne v2, v4, :cond_18

    const/high16 v2, 0x400000

    or-int/2addr v3, v2

    .line 3452
    :cond_18
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x1000000

    and-int/2addr v2, v1

    const/high16 v4, 0x1000000

    if-ne v2, v4, :cond_19

    const/high16 v2, 0x800000

    or-int/2addr v3, v2

    .line 3456
    :cond_19
    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    const/high16 v4, 0x2000000

    if-ne v2, v4, :cond_1a

    const/high16 v2, 0x1000000

    or-int/2addr v3, v2

    .line 3460
    :cond_1a
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b

    const/high16 v1, 0x2000000

    or-int/2addr v3, v1

    .line 3464
    :cond_1b
    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z

    .line 3465
    invoke-static {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I

    .line 3466
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 3

    .line 3264
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3265
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    .line 3266
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    .line 3267
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3268
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    .line 3269
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3270
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v0, ""

    .line 3271
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3272
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3273
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    .line 3274
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3275
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    .line 3276
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3277
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    .line 3278
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3279
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    .line 3280
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3281
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    .line 3282
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3283
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    .line 3284
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3285
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    .line 3286
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3287
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 3288
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3289
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 3290
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3291
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    .line 3292
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3293
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    .line 3294
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3295
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 3296
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3297
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    .line 3298
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3299
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_0

    .line 3300
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_0

    .line 3302
    :cond_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3304
    :goto_0
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3305
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 3306
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3307
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    .line 3308
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3309
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 3310
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3311
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    .line 3312
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3313
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    .line 3314
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3315
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    .line 3316
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3317
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    .line 3318
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const-string v1, ""

    .line 3319
    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 3320
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3321
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    .line 3322
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clear()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearAlignType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4488
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4489
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    .line 4490
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBoolParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 5049
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 5050
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    .line 5051
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearColor()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4442
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4443
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4444
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3654
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3655
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    .line 3656
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearControlId()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3715
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3716
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3717
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDefaultCheckStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4008
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4009
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    .line 4010
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDefaultItemIndex()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4167
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4168
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    .line 4169
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEditInputType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4736
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4737
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    .line 4738
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearEnabledStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4348
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4349
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    .line 4350
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFontSize()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4843
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4844
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    .line 4845
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFontType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4797
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4798
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 4799
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHeight()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3942
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3943
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    .line 3944
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIntParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4942
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4943
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    .line 4944
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItemIndex()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4134
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4135
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    .line 4136
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearItemText()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4088
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    .line 4089
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4090
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLayoutStyle()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3975
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3976
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    .line 3977
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLeft()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4876
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4877
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    .line 4878
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4567
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4568
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4569
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_0

    .line 4571
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4573
    :goto_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearParentId()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3789
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3790
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3791
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPath()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4228
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4229
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 4230
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearStrParam()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 5003
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 5004
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 5005
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearText()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3863
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3864
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3865
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTop()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4909
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4910
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    .line 4911
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUipData()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4686
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4687
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUipData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 4688
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrl()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4302
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4303
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 4304
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearVisibleStatus()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4381
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 4382
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    .line 4383
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWidth()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3909
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3910
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    .line 3911
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 3327
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->clone()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAlignType()I
    .locals 1

    .line 4473
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    return v0
.end method

.method public final getBoolParam()Z
    .locals 1

    .line 5034
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 2

    .line 4399
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4400
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4401
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4402
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4403
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    return-object v0

    .line 4406
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4414
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4415
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4416
    check-cast v0, Ljava/lang/String;

    .line 4417
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4419
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    return-object v0

    .line 4422
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    .locals 1

    .line 3636
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    return-object v0
.end method

.method public final getControlId()Ljava/lang/String;
    .locals 2

    .line 3672
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3673
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3674
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3675
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3676
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    return-object v0

    .line 3679
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getControlIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3687
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3688
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3689
    check-cast v0, Ljava/lang/String;

    .line 3690
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3692
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    return-object v0

    .line 3695
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultCheckStatus()Z
    .locals 1

    .line 3993
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .locals 1

    .line 3336
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3229
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultItemIndex()I
    .locals 1

    .line 4152
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    return v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3332
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getEditInputType()I
    .locals 1

    .line 4721
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    return v0
.end method

.method public final getEnabledStatus()Z
    .locals 1

    .line 4333
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    return v0
.end method

.method public final getFontSize()I
    .locals 1

    .line 4828
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    return v0
.end method

.method public final getFontType()Ljava/lang/String;
    .locals 2

    .line 4754
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 4755
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4756
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4757
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4758
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    return-object v0

    .line 4761
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFontTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4769
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 4770
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4771
    check-cast v0, Ljava/lang/String;

    .line 4772
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4774
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    return-object v0

    .line 4777
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 3927
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    return v0
.end method

.method public final getIntParam()I
    .locals 1

    .line 4927
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    return v0
.end method

.method public final getItemIndex()I
    .locals 1

    .line 4119
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    return v0
.end method

.method public final getItemText(I)Ljava/lang/String;
    .locals 1

    .line 4039
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getItemTextBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4046
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getItemTextCount()I
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemTextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4027
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutStyle()I
    .locals 1

    .line 3960
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 4861
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    return v0
.end method

.method public final getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;
    .locals 1

    .line 4508
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4509
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0

    .line 4511
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getPaddingBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;
    .locals 2

    .line 4580
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4581
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 4582
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPaddingFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    return-object v0
.end method

.method public final getPaddingOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;
    .locals 1

    .line 4588
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4589
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;

    return-object v0

    .line 4591
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 2

    .line 3746
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3747
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3748
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3749
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3750
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    return-object v0

    .line 3753
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getParentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3761
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3762
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3763
    check-cast v0, Ljava/lang/String;

    .line 3764
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3766
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    return-object v0

    .line 3769
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .line 4185
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 4186
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4187
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4188
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4189
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 4192
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4200
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 4201
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4202
    check-cast v0, Ljava/lang/String;

    .line 4203
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4205
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    return-object v0

    .line 4208
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getStrParam()Ljava/lang/String;
    .locals 2

    .line 4960
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 4961
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4963
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4964
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    return-object v0

    .line 4967
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStrParamBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4975
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 4976
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4977
    check-cast v0, Ljava/lang/String;

    .line 4978
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4980
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    return-object v0

    .line 4983
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .line 3820
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3821
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3822
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3823
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3824
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    return-object v0

    .line 3827
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3835
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3836
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3837
    check-cast v0, Ljava/lang/String;

    .line 3838
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3840
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    return-object v0

    .line 3843
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getTop()I
    .locals 1

    .line 4894
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    return v0
.end method

.method public final getUipData()Ljava/lang/String;
    .locals 2

    .line 4631
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 4632
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4633
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4634
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4635
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    return-object v0

    .line 4638
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUipDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4650
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 4651
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4652
    check-cast v0, Ljava/lang/String;

    .line 4653
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4655
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    return-object v0

    .line 4658
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 4259
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 4260
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4261
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4262
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4263
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 4266
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4274
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 4275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4276
    check-cast v0, Ljava/lang/String;

    .line 4277
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4279
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 4282
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getVisibleStatus()I
    .locals 1

    .line 4366
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 3894
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    return v0
.end method

.method public final hasAlignType()Z
    .locals 2

    .line 4467
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasBoolParam()Z
    .locals 2

    .line 5028
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasColor()Z
    .locals 2

    .line 4393
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCommand()Z
    .locals 2

    .line 3630
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasControlId()Z
    .locals 2

    .line 3666
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultCheckStatus()Z
    .locals 2

    .line 3987
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultItemIndex()Z
    .locals 2

    .line 4146
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEditInputType()Z
    .locals 2

    .line 4715
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnabledStatus()Z
    .locals 2

    .line 4327
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontSize()Z
    .locals 2

    .line 4822
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontType()Z
    .locals 2

    .line 4748
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasHeight()Z
    .locals 2

    .line 3921
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIntParam()Z
    .locals 2

    .line 4921
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasItemIndex()Z
    .locals 2

    .line 4113
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLayoutStyle()Z
    .locals 2

    .line 3954
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLeft()Z
    .locals 2

    .line 4855
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPadding()Z
    .locals 2

    .line 4502
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasParentId()Z
    .locals 2

    .line 3740
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPath()Z
    .locals 2

    .line 4179
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStrParam()Z
    .locals 2

    .line 4954
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasText()Z
    .locals 2

    .line 3814
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTop()Z
    .locals 2

    .line 4888
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUipData()Z
    .locals 2

    .line 4621
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .locals 2

    .line 4253
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVisibleStatus()Z
    .locals 2

    .line 4360
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWidth()Z
    .locals 2

    .line 3888
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/16 v1, 0x10

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

    .line 3239
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3240
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3592
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->hasCommand()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3596
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->hasPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3597
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 3480
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3481
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3482
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3484
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasControlId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3485
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3486
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3487
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3489
    :cond_2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasParentId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3490
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3491
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3492
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3494
    :cond_3
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3495
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3496
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2200(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3497
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3499
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3500
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setWidth(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3502
    :cond_5
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3503
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setHeight(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3505
    :cond_6
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3506
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLayoutStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setLayoutStyle(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3508
    :cond_7
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasDefaultCheckStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3509
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setDefaultCheckStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3511
    :cond_8
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3512
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3513
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    .line 3514
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    goto :goto_0

    .line 3516
    :cond_9
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    .line 3517
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 3519
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3521
    :cond_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasItemIndex()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3522
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3524
    :cond_b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasDefaultItemIndex()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3525
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setDefaultItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3527
    :cond_c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasPath()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3528
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3529
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 3530
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3532
    :cond_d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3533
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3534
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 3535
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3537
    :cond_e
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasEnabledStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3538
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setEnabledStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3540
    :cond_f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasVisibleStatus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3541
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setVisibleStatus(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3543
    :cond_10
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasColor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3544
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3545
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 3546
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3548
    :cond_11
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasAlignType()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3549
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setAlignType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3551
    :cond_12
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasPadding()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3552
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergePadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3554
    :cond_13
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasUipData()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3555
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3556
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 3557
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3559
    :cond_14
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasEditInputType()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3560
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setEditInputType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3562
    :cond_15
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasFontType()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3563
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3564
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3567
    :cond_16
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasFontSize()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3568
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setFontSize(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3570
    :cond_17
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3571
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setLeft(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3573
    :cond_18
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasTop()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3574
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setTop(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3576
    :cond_19
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasIntParam()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3577
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getIntParam()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setIntParam(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3579
    :cond_1a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasStrParam()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3580
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3581
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->access$4400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 3582
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    .line 3584
    :cond_1b
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasBoolParam()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3585
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getBoolParam()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->setBoolParam(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3587
    :cond_1c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3611
    :try_start_0
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3617
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3613
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3614
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3617
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    .line 3619
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3471
    instance-of v0, p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    if-eqz v0, :cond_0

    .line 3472
    check-cast p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1

    .line 3474
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

    .line 3229
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3229
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    .line 3229
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    .line 3229
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3229
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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

    .line 3229
    invoke-virtual {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergePadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 3

    .line 4548
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 4549
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4550
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4551
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4552
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    goto :goto_0

    .line 4554
    :cond_0
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4556
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_1

    .line 4558
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4560
    :goto_1
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setAlignType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4479
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4480
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->alignType_:I

    .line 4481
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBoolParam(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 5040
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 5041
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->boolParam_:Z

    .line 5042
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setColor(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4431
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4433
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4434
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4435
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setColorBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4453
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4455
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4456
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->color_:Ljava/lang/Object;

    .line 4457
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3643
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3645
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3646
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    .line 3647
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3704
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3706
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3707
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3708
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setControlIdBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3726
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3728
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3729
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->controlId_:Ljava/lang/Object;

    .line 3730
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultCheckStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3999
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4000
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultCheckStatus_:Z

    .line 4001
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4158
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4159
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->defaultItemIndex_:I

    .line 4160
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEditInputType(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4727
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4728
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->editInputType_:I

    .line 4729
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setEnabledStatus(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4339
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4340
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->enabledStatus_:Z

    .line 4341
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontSize(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4834
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4835
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontSize_:I

    .line 4836
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontType(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4786
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4788
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4789
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 4790
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFontTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4808
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4810
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4811
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->fontType_:Ljava/lang/Object;

    .line 4812
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeight(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3933
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3934
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->height_:I

    .line 3935
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIntParam(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4933
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4934
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->intParam_:I

    .line 4935
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItemIndex(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4125
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4126
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemIndex_:I

    .line 4127
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setItemText(ILjava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 4054
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4056
    :cond_0
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->ensureItemTextIsMutable()V

    .line 4057
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4058
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLayoutStyle(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3966
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3967
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->layoutStyle_:I

    .line 3968
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLeft(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4867
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4868
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->left_:I

    .line 4869
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4535
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4536
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4537
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_0

    .line 4539
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4541
    :goto_0
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setPadding(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4518
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 4520
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4522
    :cond_0
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    .line 4523
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    goto :goto_0

    .line 4525
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->paddingBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 4527
    :goto_0
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setParentId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3778
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3780
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3781
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3782
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3800
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3802
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3803
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->parentId_:Ljava/lang/Object;

    .line 3804
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4217
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4219
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4220
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 4221
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4239
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4241
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4242
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->path_:Ljava/lang/Object;

    .line 4243
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStrParam(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4992
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4994
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4995
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 4996
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setStrParamBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 5014
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5016
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 5017
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->strParam_:Ljava/lang/Object;

    .line 5018
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3852
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3854
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3855
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3856
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 3874
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3876
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3877
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->text_:Ljava/lang/Object;

    .line 3878
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTop(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    .line 4900
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4901
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->top_:I

    .line 4902
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUipData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4671
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4673
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4674
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 4675
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUipDataBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 2

    if-nez p1, :cond_0

    .line 4701
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4703
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4704
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->uipData_:Ljava/lang/Object;

    .line 4705
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4291
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4293
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4294
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 4295
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 4313
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4315
    :cond_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4316
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->url_:Ljava/lang/Object;

    .line 4317
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setVisibleStatus(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 4372
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 4373
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->visibleStatus_:I

    .line 4374
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method

.method public final setWidth(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .locals 1

    .line 3900
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->bitField0_:I

    .line 3901
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->width_:I

    .line 3902
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->onChanged()V

    return-object p0
.end method
