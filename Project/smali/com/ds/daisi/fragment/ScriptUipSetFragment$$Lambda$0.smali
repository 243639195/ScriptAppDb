.class final synthetic Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;


# instance fields
.field private final arg$1:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$0;->arg$1:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    return-void
.end method


# virtual methods
.method public onDialogClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$$Lambda$0;->arg$1:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->lambda$showRunFloatJudgeOperate$0$ScriptUipSetFragment(I)V

    return-void
.end method
