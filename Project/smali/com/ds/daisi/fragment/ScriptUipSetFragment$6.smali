.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$6;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onReceiveScriptUIEvent(Lcom/ds/daisi/entity/ScriptUIEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$6;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 994
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/entity/ElfinFloatViewEvent;

    invoke-direct {v1}, Lcom/ds/daisi/entity/ElfinFloatViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
