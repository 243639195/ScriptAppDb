.class Lcom/iflytek/voiceads/request/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/listener/DialogListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/request/IFLYBrowser;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/request/IFLYBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/request/d;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/d;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->finish()V

    return-void
.end method

.method public onConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/request/d;->a:Lcom/iflytek/voiceads/request/IFLYBrowser;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/request/IFLYBrowser;->finish()V

    return-void
.end method
