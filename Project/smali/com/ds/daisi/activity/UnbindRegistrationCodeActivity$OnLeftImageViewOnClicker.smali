.class Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;
.super Ljava/lang/Object;
.source "UnbindRegistrationCodeActivity.java"

# interfaces
.implements Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLeftImageViewOnClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity$OnLeftImageViewOnClicker;->this$0:Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/UnbindRegistrationCodeActivity;->finish()V

    return-void
.end method
