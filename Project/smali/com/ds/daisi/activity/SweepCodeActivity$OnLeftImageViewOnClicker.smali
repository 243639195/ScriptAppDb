.class Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;
.super Ljava/lang/Object;
.source "SweepCodeActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/SweepCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/SweepCodeActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;Lcom/ds/daisi/activity/SweepCodeActivity$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/SweepCodeActivity;->finish()V

    return-void
.end method
