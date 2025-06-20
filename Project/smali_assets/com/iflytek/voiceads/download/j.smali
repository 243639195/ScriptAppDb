.class Lcom/iflytek/voiceads/download/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/download/d$a;

.field final synthetic b:Lcom/iflytek/voiceads/download/d;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/download/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/download/j;->b:Lcom/iflytek/voiceads/download/d;

    iput-object p2, p0, Lcom/iflytek/voiceads/download/j;->a:Lcom/iflytek/voiceads/download/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/j;->a:Lcom/iflytek/voiceads/download/d$a;

    invoke-interface {v0}, Lcom/iflytek/voiceads/download/d$a;->a()V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/j;->b:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->b(Lcom/iflytek/voiceads/download/d;)Lcom/iflytek/voiceads/listener/DialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/j;->b:Lcom/iflytek/voiceads/download/d;

    invoke-static {v0}, Lcom/iflytek/voiceads/download/d;->b(Lcom/iflytek/voiceads/download/d;)Lcom/iflytek/voiceads/listener/DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/DialogListener;->onConfirm()V

    iget-object v0, p0, Lcom/iflytek/voiceads/download/j;->b:Lcom/iflytek/voiceads/download/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/download/d;->a(Lcom/iflytek/voiceads/download/d;Lcom/iflytek/voiceads/listener/DialogListener;)Lcom/iflytek/voiceads/listener/DialogListener;

    :cond_0
    return-void
.end method
