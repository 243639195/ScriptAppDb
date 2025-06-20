.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$2;
.super Ljava/lang/Object;
.source "ScriptUipSetFragment.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;->onClickBottomImg()V
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

    .line 294
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$2;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackSuc(Ljava/lang/Object;)V
    .locals 1

    .line 297
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->getStatisticsPresenter()Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/share/mvp/presenter/AppStatisticsPresenter;->cleanCallback()V

    .line 298
    invoke-static {}, Lcom/ds/daisi/entity/ParamsWrap;->getParamsWrap()Lcom/ds/daisi/entity/ParamsWrap;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$2;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$300(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Lcom/ds/daisi/activity/ElfinPayActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/entity/ParamsWrap;->onClickBackgroundAdOpera(Landroid/content/Context;)V

    return-void
.end method
