.class Lcom/ds/daisi/dialog/UpdateDialog$1;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/UpdateDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetConnected(I)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/ds/daisi/dialog/UpdateDialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onNetConnected --> "

    invoke-static {p1, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$100(Lcom/ds/daisi/dialog/UpdateDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$200(Lcom/ds/daisi/dialog/UpdateDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ds/daisi/dialog/UpdateDialog;->access$202(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z

    .line 160
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$300(Lcom/ds/daisi/dialog/UpdateDialog;)V

    :cond_0
    return-void
.end method

.method public onNetDisConnect()V
    .locals 2

    .line 166
    invoke-static {}, Lcom/ds/daisi/dialog/UpdateDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNetDisConnect --> "

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$202(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z

    .line 168
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$1;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {v0, v1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$402(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z

    return-void
.end method
