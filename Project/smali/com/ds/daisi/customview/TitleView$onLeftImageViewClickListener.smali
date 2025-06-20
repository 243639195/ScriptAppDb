.class Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;
.super Ljava/lang/Object;
.source "TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/customview/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onLeftImageViewClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/customview/TitleView;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/customview/TitleView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;->this$0:Lcom/ds/daisi/customview/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/customview/TitleView;Lcom/ds/daisi/customview/TitleView$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;-><init>(Lcom/ds/daisi/customview/TitleView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;->this$0:Lcom/ds/daisi/customview/TitleView;

    invoke-static {v0}, Lcom/ds/daisi/customview/TitleView;->access$300(Lcom/ds/daisi/customview/TitleView;)Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ds/daisi/customview/TitleView$onLeftImageViewClickListener;->this$0:Lcom/ds/daisi/customview/TitleView;

    invoke-static {v0}, Lcom/ds/daisi/customview/TitleView;->access$300(Lcom/ds/daisi/customview/TitleView;)Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
