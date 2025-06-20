.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$2;
.super Ljava/lang/Object;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$2;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$2;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->access$202(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Z)Z

    return-void
.end method
