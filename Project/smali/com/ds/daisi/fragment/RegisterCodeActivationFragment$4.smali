.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;
.super Ljava/lang/Object;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->onBindFailure(Lcom/cyjh/share/bean/response/BaseResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

.field final synthetic val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/ds/daisi/dialog/TipsDialog;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    iput-object p2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;->val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$4;->val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/TipsDialog;->dismiss()V

    return-void
.end method
