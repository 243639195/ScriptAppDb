.class final synthetic Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/ds/daisi/dialog/UpdateDialog;

.field private final arg$2:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;->arg$1:Lcom/ds/daisi/dialog/UpdateDialog;

    iput-object p2, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;->arg$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;->arg$1:Lcom/ds/daisi/dialog/UpdateDialog;

    iget-object v1, p0, Lcom/ds/daisi/dialog/UpdateDialog$$Lambda$2;->arg$2:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/ds/daisi/dialog/UpdateDialog;->lambda$installApkOperate$2$UpdateDialog(Ljava/io/File;)V

    return-void
.end method
