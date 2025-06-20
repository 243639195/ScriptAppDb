.class Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;
.super Ljava/lang/Object;
.source "ScriptLogDetailActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;Lcom/ds/daisi/activity/ScriptLogDetailActivity$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->finish()V

    return-void
.end method
