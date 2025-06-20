.class Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;
.super Ljava/lang/Object;
.source "BindRegisterCodeActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnRightTextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/BindRegisterCodeActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;->this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicker(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;->this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    iget-object v0, p0, Lcom/ds/daisi/activity/BindRegisterCodeActivity$1;->this$0:Lcom/ds/daisi/activity/BindRegisterCodeActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/BindRegisterCodeActivity;->access$000(Lcom/ds/daisi/activity/BindRegisterCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ds/daisi/util/IntentUtils;->toUnbindRegistrationCodeActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
