.class Lcom/ds/daisi/activity/ElfinPayActivity$3;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$3;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$3;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$202(Lcom/ds/daisi/activity/ElfinPayActivity;Z)Z

    return-void
.end method
