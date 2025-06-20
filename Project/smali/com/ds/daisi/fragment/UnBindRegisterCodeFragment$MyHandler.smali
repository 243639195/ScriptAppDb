.class Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;
.super Landroid/os/Handler;
.source "UnBindRegisterCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
