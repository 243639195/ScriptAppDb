.class Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;
.super Ljava/lang/Object;
.source "MessageDetailActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/MessageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageOnClickerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/MessageDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/MessageDetailActivity;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;->this$0:Lcom/ds/daisi/activity/MessageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/MessageDetailActivity;Lcom/ds/daisi/activity/MessageDetailActivity$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;-><init>(Lcom/ds/daisi/activity/MessageDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/ds/daisi/activity/MessageDetailActivity$OnLeftImageOnClickerListener;->this$0:Lcom/ds/daisi/activity/MessageDetailActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/MessageDetailActivity;->finish()V

    return-void
.end method
