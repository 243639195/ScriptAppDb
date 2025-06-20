.class Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;
.super Ljava/lang/Object;
.source "ScriptLogActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ScriptLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ScriptLogActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ScriptLogActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ScriptLogActivity;Lcom/ds/daisi/activity/ScriptLogActivity$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;-><init>(Lcom/ds/daisi/activity/ScriptLogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogActivity$OnLeftImageViewListener;->this$0:Lcom/ds/daisi/activity/ScriptLogActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/ScriptLogActivity;->finish()V

    return-void
.end method
