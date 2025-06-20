.class Lcom/iflytek/voiceads/download/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/a;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/b;->a:Lcom/iflytek/voiceads/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b;->a:Lcom/iflytek/voiceads/download/a;

    check-cast p2, Lcom/iflytek/voiceads/download/DownloadService$a;

    invoke-static {v0, p2}, Lcom/iflytek/voiceads/download/a;->a(Lcom/iflytek/voiceads/download/a;Lcom/iflytek/voiceads/download/DownloadService$a;)Lcom/iflytek/voiceads/download/DownloadService$a;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b;->a:Lcom/iflytek/voiceads/download/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/a;->b(Lcom/iflytek/voiceads/download/a;)Lcom/iflytek/voiceads/download/DownloadService$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/voiceads/download/b;->a:Lcom/iflytek/voiceads/download/a;

    invoke-static {v1}, Lcom/iflytek/voiceads/download/a;->a(Lcom/iflytek/voiceads/download/a;)Lcom/iflytek/voiceads/download/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/download/DownloadService$a;->a(Lcom/iflytek/voiceads/download/d/a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/voiceads/download/b;->a:Lcom/iflytek/voiceads/download/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/download/a;->a(Lcom/iflytek/voiceads/download/a;Lcom/iflytek/voiceads/download/DownloadService$a;)Lcom/iflytek/voiceads/download/DownloadService$a;

    return-void
.end method
