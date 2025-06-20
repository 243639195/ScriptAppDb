.class Lkiller/elfin/update/ScriptDownload$1$1;
.super Ljava/lang/Object;
.source "ScriptDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkiller/elfin/update/ScriptDownload$1;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkiller/elfin/update/ScriptDownload$1;


# direct methods
.method constructor <init>(Lkiller/elfin/update/ScriptDownload$1;)V
    .locals 0
    .param p1, "this$1"    # Lkiller/elfin/update/ScriptDownload$1;

    .prologue
    .line 71
    iput-object p1, p0, Lkiller/elfin/update/ScriptDownload$1$1;->this$1:Lkiller/elfin/update/ScriptDownload$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 75
    sget-object v0, Lkiller/elfin/Free;->runner:Lkiller/elfin/runner/ScriptRunner;

    invoke-interface {v0}, Lkiller/elfin/runner/ScriptRunner;->runScript()V

    .line 76
    return-void
.end method
