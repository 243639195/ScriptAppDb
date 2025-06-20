.class Lcom/ds/daisi/services/BootService$MyServiceHandler;
.super Landroid/os/Handler;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/services/BootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyServiceHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/services/BootService$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ds/daisi/services/BootService$MyServiceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x110

    if-ne p1, v0, :cond_0

    const-string p1, "zzz"

    const-string v0, "BootService\u5f00\u673a\u542f\u52a8\u8fd0\u884c\u811a\u672c--"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->showFloatView()V

    .line 35
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Lcom/ds/daisi/AppContext;->STATE_SCRIPT:I

    .line 36
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->runScript()V

    :cond_0
    return-void
.end method
