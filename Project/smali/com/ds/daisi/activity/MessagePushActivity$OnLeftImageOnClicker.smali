.class Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;
.super Ljava/lang/Object;
.source "MessagePushActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/MessagePushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/MessagePushActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/MessagePushActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;->this$0:Lcom/ds/daisi/activity/MessagePushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/MessagePushActivity;Lcom/ds/daisi/activity/MessagePushActivity$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;-><init>(Lcom/ds/daisi/activity/MessagePushActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/ds/daisi/activity/MessagePushActivity$OnLeftImageOnClicker;->this$0:Lcom/ds/daisi/activity/MessagePushActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/MessagePushActivity;->finish()V

    return-void
.end method
