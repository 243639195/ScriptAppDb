.class Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/FindPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRightTextViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/FindPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/FindPasswordActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/FindPasswordActivity;Lcom/ds/daisi/activity/FindPasswordActivity$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;-><init>(Lcom/ds/daisi/activity/FindPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public onClicker(Landroid/view/View;)V
    .locals 2

    .line 64
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    const-class v1, Lcom/ds/daisi/activity/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v0, p0, Lcom/ds/daisi/activity/FindPasswordActivity$OnRightTextViewOnClicker;->this$0:Lcom/ds/daisi/activity/FindPasswordActivity;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/activity/FindPasswordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
