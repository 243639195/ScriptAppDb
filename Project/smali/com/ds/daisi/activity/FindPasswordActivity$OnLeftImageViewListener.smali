.class Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/FindPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/FindPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/FindPasswordActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/FindPasswordActivity;Lcom/ds/daisi/activity/FindPasswordActivity$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/FindPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/FindPasswordActivity;->access$200(Lcom/ds/daisi/activity/FindPasswordActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment\u9000\u51fa\u7ba1\u7406:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/FindPasswordActivity;->access$200(Lcom/ds/daisi/activity/FindPasswordActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/FindPasswordActivity;->access$200(Lcom/ds/daisi/activity/FindPasswordActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/FindPasswordActivity;->finish()V

    :goto_0
    return-void
.end method
