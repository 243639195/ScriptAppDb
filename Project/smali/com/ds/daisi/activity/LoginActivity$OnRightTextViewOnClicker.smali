.class Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRightTextViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/LoginActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/LoginActivity;Lcom/ds/daisi/activity/LoginActivity$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onClicker(Landroid/view/View;)V
    .locals 2

    .line 58
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/LoginActivity;

    const-class v1, Lcom/ds/daisi/activity/RegisterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/ds/daisi/activity/RegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/ds/daisi/activity/LoginActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
