.class final synthetic Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final arg$1:Lcom/ds/daisi/dialog/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/UpdateDialog;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->lambda$new$0$UpdateDialog(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
