.class Lcom/iflytek/voiceads/download/DownloadService$a;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/DownloadService$a;->a:Lcom/iflytek/voiceads/download/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/download/DownloadService$a;->a:Lcom/iflytek/voiceads/download/DownloadService;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/voiceads/download/a;->a(Landroid/content/Context;)Lcom/iflytek/voiceads/download/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/voiceads/download/a/b;->b(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method
