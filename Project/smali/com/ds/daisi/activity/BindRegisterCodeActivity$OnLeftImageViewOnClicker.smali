.class Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;
.super Ljava/lang/Object;
.source "BindRegisterCodeActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/BindRegisterCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->finish()V

    return-void
.end method
