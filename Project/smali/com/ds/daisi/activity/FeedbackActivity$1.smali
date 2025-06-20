.class Lcom/ds/daisi/activity/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/FeedbackActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/FeedbackActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ds/daisi/activity/FeedbackActivity$1;->this$0:Lcom/ds/daisi/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/ds/daisi/activity/FeedbackActivity$1;->this$0:Lcom/ds/daisi/activity/FeedbackActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/FeedbackActivity;->onBackPressed()V

    return-void
.end method
