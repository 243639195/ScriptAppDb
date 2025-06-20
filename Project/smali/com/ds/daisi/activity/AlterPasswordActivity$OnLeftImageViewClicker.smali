.class Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;
.super Ljava/lang/Object;
.source "AlterPasswordActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/AlterPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/AlterPasswordActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/AlterPasswordActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;->this$0:Lcom/ds/daisi/activity/AlterPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/AlterPasswordActivity;Lcom/ds/daisi/activity/AlterPasswordActivity$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;-><init>(Lcom/ds/daisi/activity/AlterPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/ds/daisi/activity/AlterPasswordActivity$OnLeftImageViewClicker;->this$0:Lcom/ds/daisi/activity/AlterPasswordActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/AlterPasswordActivity;->finish()V

    return-void
.end method
