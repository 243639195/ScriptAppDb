.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;
.super Ljava/lang/Object;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->initAfterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

.field final synthetic val$buyRegCodeConfigInfo:Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    iput-object p2, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->val$buyRegCodeConfigInfo:Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->val$buyRegCodeConfigInfo:Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/response/BuyRegCodeConfigInfo;->BuyLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->access$000(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.browser"

    const-string v1, "com.android.browser.BrowserActivity"

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 144
    iget-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$1;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
