.class Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;
.super Ljava/lang/Object;
.source "H5LinkJumpPageActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftBackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;->this$0:Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;-><init>(Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity$OnLeftBackListener;->this$0:Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/news/H5LinkJumpPageActivity;->finish()V

    return-void
.end method
