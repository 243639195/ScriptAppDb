.class Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRightTextViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/RegisterActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/RegisterActivity;Lcom/ds/daisi/activity/RegisterActivity$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/RegisterActivity;)V

    return-void
.end method


# virtual methods
.method public onClicker(Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/RegisterActivity;

    const-class v1, Lcom/ds/daisi/activity/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/ds/daisi/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/ds/daisi/activity/RegisterActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
