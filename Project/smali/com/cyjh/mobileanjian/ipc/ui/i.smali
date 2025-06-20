.class public final Lcom/cyjh/mobileanjian/ipc/ui/i;
.super Ljava/lang/Object;
.source "UiManagerLite.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/ui/i$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

.field private static final h:I = 0x20


# instance fields
.field public a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

.field public b:I

.field public c:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:[Ljava/util/HashMap;

.field public f:I

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 61
    new-array v1, v0, [Lcom/cyjh/mobileanjian/ipc/ui/k;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    .line 67
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    .line 73
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3

    .line 1078
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 1079
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v2, p1, p2, p3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p2

    aput-object p2, v0, v1

    .line 1080
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, p2, p3

    .line 1084
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 9395
    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    .line 1100
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget p3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p2, p2, p3

    new-instance p3, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {p3, p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 10390
    iput-object p3, p2, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 312
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 313
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1150
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1151
    sget p2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/i;)[Lcom/cyjh/mobileanjian/ipc/ui/k;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    return-object p0
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/i;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    return p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 1204
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1205
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 1207
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 1208
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1209
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1210
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1211
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 1212
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 1213
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    const/4 v1, 0x1

    .line 91
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 94
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 8

    .line 101
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 8784
    :pswitch_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 8785
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8789
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 8790
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8792
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8796
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    .line 8797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8801
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 8802
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8763
    :pswitch_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 8764
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8768
    :cond_2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 8769
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8771
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 8775
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 8776
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 8777
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8779
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8780
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7866
    :pswitch_2
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v4

    if-nez v0, :cond_4

    .line 7867
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7871
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 7874
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 7875
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7879
    :cond_5
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 7901
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7891
    :pswitch_3
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 7892
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_6

    .line 7894
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7897
    :cond_6
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 7887
    :pswitch_4
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 7888
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 7883
    :pswitch_5
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7884
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    :goto_0
    const-string v4, "%02X%02X%02X"

    .line 7907
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7909
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 7910
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 7911
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 7912
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 7913
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 7914
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 7915
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 7917
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 7832
    :pswitch_6
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_7

    .line 7833
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7837
    :cond_7
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    .line 7839
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7843
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x3

    .line 7854
    :cond_b
    :goto_1
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 7855
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 7856
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 7857
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 7858
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 7859
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 7860
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 7862
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 7806
    :pswitch_7
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_c

    .line 7807
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7811
    :cond_c
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    .line 7813
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7816
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 7817
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v1, v2, :cond_e

    .line 7818
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    .line 7820
    :cond_e
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 7821
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 7822
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 7823
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 7824
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 7825
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 7826
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 7828
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 277
    :pswitch_8
    invoke-virtual {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i;->e(Ljava/lang/String;)V

    return-void

    .line 7720
    :pswitch_9
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_f

    .line 7721
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7725
    :cond_f
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 7726
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    .line 7728
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7732
    :cond_10
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 7733
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 7734
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 7735
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_11
    const-string v2, "#"

    .line 7739
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 7740
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7741
    :cond_12
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 7742
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 7743
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_14

    .line 7744
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 7745
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 7746
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p1

    int-to-float p1, p1

    .line 7747
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7748
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt p1, v2, :cond_13

    .line 7749
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 7751
    :cond_13
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7753
    :goto_2
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7756
    :cond_14
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_15

    .line 7757
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7759
    :cond_15
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7650
    :pswitch_a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    .line 7651
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7655
    :cond_16
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 7656
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 7658
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 7659
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 7660
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_17
    const-string v2, "#"

    .line 7664
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 7665
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7666
    :cond_18
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 7667
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v1

    .line 7670
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 7671
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    goto :goto_3

    .line 7676
    :cond_19
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 7678
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7682
    :cond_1a
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_2

    .line 7712
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7703
    :pswitch_b
    check-cast v2, Landroid/widget/Spinner;

    .line 7704
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1c

    .line 7705
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7694
    :pswitch_c
    check-cast v2, Landroid/widget/RadioGroup;

    .line 7695
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_1b

    .line 7697
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 7700
    :cond_1b
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_3

    .line 7690
    :pswitch_d
    check-cast v2, Landroid/widget/CheckBox;

    .line 7691
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_3

    .line 7686
    :pswitch_e
    check-cast v2, Landroid/widget/TextView;

    .line 7687
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7716
    :cond_1c
    :goto_3
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6949
    :pswitch_f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1d

    .line 6950
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6954
    :cond_1d
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 6957
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 6958
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6962
    :cond_1e
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    .line 6993
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6983
    :pswitch_10
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 6984
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_1f

    .line 6985
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6988
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6989
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    .line 6974
    :pswitch_11
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 6975
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_20

    .line 6977
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6980
    :cond_20
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 6970
    :pswitch_12
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 6971
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 6966
    :pswitch_13
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6967
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6997
    :goto_4
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 6998
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 6999
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 7000
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 7001
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 7002
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 7003
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 7005
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 6556
    :pswitch_14
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_21

    .line 6557
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6561
    :cond_21
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 6562
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 6564
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_22

    .line 6566
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6570
    :cond_22
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v2, :cond_23

    .line 6571
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6575
    :cond_23
    check-cast v1, Landroid/widget/EditText;

    .line 6576
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6577
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 261
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 258
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V

    return-void

    .line 6476
    :pswitch_17
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 6479
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_5

    .line 6483
    :cond_24
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_25

    .line 6484
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    goto/16 :goto_5

    .line 6488
    :cond_25
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 6489
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 6490
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 6491
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 252
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z

    move-result v7

    goto/16 :goto_5

    .line 235
    :pswitch_19
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 236
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_5

    .line 230
    :pswitch_1a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 231
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 222
    :pswitch_1b
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 223
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;I)Landroid/widget/Spinner;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_5

    .line 214
    :pswitch_1c
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 215
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;IILjava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 205
    :pswitch_1d
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 206
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(ILjava/lang/String;IILjava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 197
    :pswitch_1e
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 198
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/widget/CheckBox;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 189
    :pswitch_1f
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 190
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/util/List;III)Landroid/widget/RadioGroup;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 181
    :pswitch_20
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 182
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 173
    :pswitch_21
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 174
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->d(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 177
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/i$a;

    invoke-direct {p1, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$a;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_5

    .line 166
    :pswitch_22
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 167
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 157
    :pswitch_23
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 159
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/g;->b(Ljava/lang/String;II)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 6179
    :pswitch_24
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 6180
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 6182
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_26

    .line 6183
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 6184
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_26
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 6188
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 6189
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 6190
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_27
    const-string v1, "#"

    .line 6194
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 6195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6196
    :cond_28
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6197
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 6198
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 6199
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 6200
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6160
    :pswitch_25
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_29

    .line 6161
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 6162
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 6166
    :cond_29
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object p1

    .line 6167
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 6168
    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 6169
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 6170
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 6171
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 6172
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 6173
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 6175
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 146
    :pswitch_26
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object p1

    .line 6150
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 6151
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 6155
    :cond_2a
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 140
    :pswitch_27
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    .line 141
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a()I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-virtual {v0, v6, v1, v2, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_5

    .line 137
    :pswitch_28
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->c()V

    goto/16 :goto_5

    .line 134
    :pswitch_29
    invoke-virtual {p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i;->d(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_5

    .line 5204
    :pswitch_2a
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 5205
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLOSE_CONTINUE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 5206
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 5207
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 5208
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 5209
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 5210
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 5211
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 5212
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 5213
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_5

    .line 4123
    :pswitch_2b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 4124
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v6, v0, v3

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 4125
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 4129
    :cond_2b
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    .line 4260
    iget-boolean p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz p1, :cond_2c

    .line 4130
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 4134
    :cond_2c
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 4135
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    .line 4136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 4137
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 4138
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 4139
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 4140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 4141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 4142
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 4143
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 4144
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 4145
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 125
    :pswitch_2c
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    .line 2078
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 2079
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->c:Lcom/cyjh/mobileanjian/ipc/ui/g;

    invoke-virtual {v3, v6, v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Ljava/lang/String;II)Lcom/cyjh/mobileanjian/ipc/ui/k;

    move-result-object p1

    aput-object p1, v1, v2

    .line 2080
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, p1, v0

    .line 2084
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/i$1;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 2395
    iput-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->b:Landroid/view/View$OnClickListener;

    .line 2100
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/ui/i$2;

    invoke-direct {v0, p0, v6}, Lcom/cyjh/mobileanjian/ipc/ui/i$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/i;Ljava/lang/String;)V

    .line 3390
    iput-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/k;->a:Landroid/view/View$OnClickListener;

    goto :goto_5

    .line 117
    :pswitch_2d
    :try_start_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 121
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 108
    :pswitch_2e
    :try_start_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 112
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 308
    :cond_2d
    :goto_5
    :pswitch_2f
    invoke-static {v7}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_2f
        :pswitch_1
        :pswitch_2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 556
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 557
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 561
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    .line 564
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 566
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 570
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v3, :cond_2

    .line 571
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 575
    :cond_2
    check-cast v2, Landroid/widget/EditText;

    .line 576
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEditInputType()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x1

    .line 577
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 8

    .line 650
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 651
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 658
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 659
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 660
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1
    const-string v3, "#"

    .line 664
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 666
    :cond_2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 667
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v2

    .line 670
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 671
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(I)V

    .line 672
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 676
    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    .line 678
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 682
    :cond_4
    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    .line 712
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 703
    :pswitch_0
    check-cast v3, Landroid/widget/Spinner;

    .line 704
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 705
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 694
    :pswitch_1
    check-cast v3, Landroid/widget/RadioGroup;

    .line 695
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_5

    .line 697
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 700
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_0

    .line 690
    :pswitch_2
    check-cast v3, Landroid/widget/CheckBox;

    .line 691
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    .line 686
    :pswitch_3
    check-cast v3, Landroid/widget/TextView;

    .line 687
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 716
    :cond_6
    :goto_0
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 479
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 484
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 490
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 721
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 725
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 726
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 728
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 732
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    const-string v3, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 733
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 734
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 735
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_2
    const-string v1, "#"

    .line 739
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 742
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 743
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5

    .line 744
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 745
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 746
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result p1

    int-to-float p1, p1

    .line 747
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 748
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_4

    .line 749
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 751
    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    :goto_0
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 756
    :cond_5
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v1, :cond_6

    .line 757
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 759
    :cond_6
    invoke-static {v4}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 807
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 813
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 816
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 817
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v2, v3, :cond_2

    .line 818
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v1

    .line 820
    :cond_2
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 822
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 823
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 824
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 825
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 826
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 828
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 764
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 768
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 769
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 771
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 775
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 776
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getAlignType()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 777
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set gravity ok; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 780
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 833
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 839
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 843
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 854
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    .line 855
    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 856
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 857
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 858
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 859
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 860
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 862
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private i(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 785
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 789
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 792
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 796
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object p1

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getBottom()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 802
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    .line 921
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 922
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 928
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 931
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSolidColor()I

    move-result v0

    .line 932
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result v0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0xffffff

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 938
    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 939
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 940
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 941
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 942
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 943
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 945
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private j(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 866
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 867
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 874
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 875
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 879
    :cond_1
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 901
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 891
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 892
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_2

    .line 894
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 897
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 887
    :pswitch_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 888
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 884
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result p1

    :goto_0
    const-string v2, "%02X%02X%02X"

    const/4 v3, 0x3

    .line 907
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 911
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 912
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 913
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 914
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 915
    invoke-virtual {v0, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 917
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)V
    .locals 4

    .line 1123
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1124
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 1125
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 11260
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v0, :cond_1

    .line 1130
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->c()V

    .line 1135
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    .line 1136
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1137
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_SHOW:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1138
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1139
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1140
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1141
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1142
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1143
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1144
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1145
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private k(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 5

    .line 949
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 950
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 954
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 957
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 958
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 962
    :cond_1
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 993
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 983
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 984
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 985
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 988
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Spinner Get pos: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 974
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 975
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_3

    .line 977
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 980
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 970
    :pswitch_2
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 971
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 966
    :pswitch_3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 967
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 997
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 998
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 999
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v0

    .line 1000
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1001
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1002
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1003
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1005
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private k(Ljava/lang/String;)V
    .locals 3

    .line 1160
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1161
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 1162
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 1167
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    .line 1168
    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    .line 1169
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    .line 1170
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    .line 1171
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1172
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1173
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1175
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private l(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 4

    .line 1179
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 1180
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 1182
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1183
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 1184
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_0
    const-string v1, "^#*([0-9A-Fa-f]{6})|([0-9A-Fa-f]{3})"

    .line 1188
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1189
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_invalid_color_value:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 1190
    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :cond_1
    const-string v1, "#"

    .line 1194
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1196
    :cond_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1197
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 1198
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/c;->a(I)I

    move-result p1

    .line 1199
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(I)V

    .line 1200
    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->f:I

    return v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdac

    invoke-static {v0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/cyjh/mobileanjian/ipc/view/ExToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/view/ExToast;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1012
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1013
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1014
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1015
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1021
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1022
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 1025
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1026
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 1029
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1030
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1017
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1018
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1035
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Z
    .locals 8

    .line 322
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 329
    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    .line 334
    :cond_1
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 456
    :pswitch_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getVisibleStatus()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 466
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x8

    .line 462
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    const/4 p1, 0x4

    .line 459
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 434
    :pswitch_3
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->i:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_2

    return v1

    .line 436
    :cond_2
    check-cast v2, Landroid/widget/LinearLayout;

    .line 437
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 440
    :pswitch_4
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v4, v5, :cond_3

    .line 441
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 442
    check-cast v2, Landroid/widget/RadioGroup;

    .line 443
    :goto_0
    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_11

    .line 444
    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v1, v1, v4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-ne v0, v1, :cond_4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set edittext enabled. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 448
    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 449
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_2

    .line 451
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getEnabledStatus()Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 420
    :pswitch_5
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->f:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_5

    return v1

    .line 423
    :cond_5
    check-cast v2, Landroid/widget/Spinner;

    .line 427
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v0

    .line 428
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 429
    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 430
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v0

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    .line 431
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2

    .line 395
    :pswitch_6
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->e:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_7

    return v1

    .line 398
    :cond_7
    move-object v0, v2

    check-cast v0, Landroid/widget/RadioGroup;

    .line 399
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 401
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 403
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 407
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 408
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 409
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$layout;->ui_show_radio_button:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 410
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 411
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 412
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result v6

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/i;->b()I

    move-result v7

    invoke-virtual {v5, v1, v6, v1, v7}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 414
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 416
    :cond_8
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultItemIndex()I

    move-result v1

    .line 417
    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 382
    :pswitch_7
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->h:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_a

    return v1

    .line 385
    :cond_a
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_b
    check-cast v2, Landroid/webkit/WebView;

    .line 391
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 392
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 370
    :pswitch_8
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->g:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_c

    return v1

    .line 373
    :cond_c
    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    .line 374
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 376
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 360
    :pswitch_9
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->d:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_d

    return v1

    .line 363
    :cond_d
    check-cast v2, Landroid/widget/CheckBox;

    .line 364
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultCheckStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 365
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 367
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    .line 352
    :pswitch_a
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->c:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_e

    return v1

    .line 355
    :cond_e
    check-cast v2, Landroid/widget/Button;

    .line 356
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 344
    :pswitch_b
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->b:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_f

    return v1

    .line 347
    :cond_f
    check-cast v2, Landroid/widget/EditText;

    .line 348
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 336
    :pswitch_c
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/m;->a:Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eq v0, v4, :cond_10

    return v1

    .line 339
    :cond_10
    check-cast v2, Landroid/widget/TextView;

    .line 340
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 84
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final b(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 9

    .line 495
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SET FONT type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-nez v2, :cond_1

    .line 504
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 507
    :cond_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    if-gez v3, :cond_2

    const/16 v3, 0xe

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontSize()I

    move-result v3

    .line 509
    :goto_0
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_3

    .line 510
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1, v2, v3}, Lcom/cyjh/mobileanjian/ipc/ui/k;->a(Landroid/graphics/Typeface;I)V

    .line 511
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 515
    :cond_3
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4

    .line 517
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 521
    :cond_4
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 522
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 526
    :cond_5
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v8, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_0

    .line 549
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 540
    :pswitch_0
    check-cast v4, Landroid/widget/RadioGroup;

    .line 541
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    .line 542
    :goto_1
    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 543
    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 544
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float v0, v3

    .line 545
    invoke-virtual {p1, v6, v0}, Landroid/widget/RadioButton;->setTextSize(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :pswitch_1
    check-cast v4, Landroid/widget/CheckBox;

    .line 536
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    .line 537
    invoke-virtual {v4, v6, p1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    goto :goto_2

    .line 530
    :pswitch_2
    check-cast v4, Landroid/widget/TextView;

    .line 531
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p1, v3

    .line 532
    invoke-virtual {v4, v6, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 552
    :cond_6
    :goto_2
    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1042
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 1045
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1046
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1047
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1049
    sget-object v2, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1055
    :pswitch_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 1056
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1059
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1062
    :pswitch_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1063
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1066
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1069
    :pswitch_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1070
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 1051
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1052
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    const/16 v0, 0x1f

    :goto_0
    if-lez v0, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 13260
    iget-boolean v2, v1, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-eqz v2, :cond_0

    .line 1245
    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
    .locals 7

    .line 581
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 582
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlId()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getText()Ljava/lang/String;

    move-result-object v2

    .line 589
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 591
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 595
    :cond_1
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 596
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 600
    :cond_2
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/ui/m;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 642
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 621
    :pswitch_0
    check-cast v3, Landroid/widget/Spinner;

    .line 622
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 623
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 627
    :cond_3
    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 629
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 630
    :goto_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 631
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_4
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 635
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->i:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_spinner_dropdown_item:I

    invoke-direct {p1, v0, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 636
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 637
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 612
    :pswitch_1
    check-cast v3, Landroid/widget/RadioGroup;

    .line 613
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemIndex()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_5

    .line 615
    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    .line 618
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 608
    :pswitch_2
    check-cast v3, Landroid/widget/CheckBox;

    .line 609
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 604
    :pswitch_3
    check-cast v3, Landroid/widget/TextView;

    .line 605
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    .line 646
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    .line 1218
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1219
    sget v0, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_ui:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    return v1

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    .line 12260
    iget-boolean v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/k;->c:Z

    if-nez v0, :cond_1

    return v1

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/k;->e()V

    .line 1228
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-ne p1, v0, :cond_3

    .line 1229
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    .line 1230
    :goto_0
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    aget-object p1, p1, v0

    if-nez p1, :cond_2

    .line 1231
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    goto :goto_0

    .line 1233
    :cond_2
    iget p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    if-gez p1, :cond_3

    .line 1234
    iput v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->b:I

    :cond_3
    return v2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 8

    .line 1271
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1272
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1273
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1274
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v4, v6, :cond_1

    .line 1279
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    .line 1281
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->e:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cyjh/mobileanjian/ipc/ui/m;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1287
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; tempIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    .line 1290
    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_show_not_found_widget:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/i;->a(I[Ljava/lang/Object;)V

    .line 1292
    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    .line 1295
    :cond_2
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/ui/i$3;->b:[I

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/ui/m;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 1323
    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto/16 :goto_2

    .line 1317
    :pswitch_0
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 1318
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1319
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1320
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1311
    :pswitch_1
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 1312
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->INT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1313
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setIntValue(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1314
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1305
    :pswitch_2
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 1306
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->BOOL:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1307
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setBoolValue(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1308
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    goto :goto_2

    .line 1299
    :pswitch_3
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/i;->a:[Lcom/cyjh/mobileanjian/ipc/ui/k;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/ui/k;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1300
    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;->STRING:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Data_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    move-result-object v1

    .line 1301
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->setStringValue(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;

    .line 1302
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->addVarTable(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlVar;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    .line 1327
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Ui.getValue result: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->a(Lcom/google/protobuf/ByteString;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1256
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 1257
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1258
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1261
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1262
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object v0

    .line 1263
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 1264
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1265
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1267
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1334
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    .line 1335
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1336
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    .line 1337
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    .line 1338
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    .line 1340
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 1341
    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p2

    .line 1342
    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1343
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 1344
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p1

    .line 1346
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/event/c;->b(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
