.class Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;
.super Ljava/lang/Object;
.source "UnBindRegisterCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;->this$0:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment$1;->this$0:Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;->access$102(Lcom/ds/daisi/fragment/UnBindRegisterCodeFragment;Z)Z

    return-void
.end method
