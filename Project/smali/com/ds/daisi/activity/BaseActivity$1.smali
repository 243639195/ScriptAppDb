.class Lcom/ds/daisi/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/BaseActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ds/daisi/activity/BaseActivity$1;->this$0:Lcom/ds/daisi/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/ds/daisi/activity/BaseActivity$1;->this$0:Lcom/ds/daisi/activity/BaseActivity;

    const v0, 0x7f0900f1

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
