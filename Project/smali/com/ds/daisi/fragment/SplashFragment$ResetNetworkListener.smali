.class Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkListener"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/ds/daisi/fragment/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 487
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    .line 489
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-static {v0, p1}, Lcom/ds/daisi/fragment/SplashFragment;->access$1300(Lcom/ds/daisi/fragment/SplashFragment;Z)V

    return-void
.end method
