.class Lcom/iflytek/voiceads/videolib/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZVPStandard;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/p;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iflytek/voiceads/videolib/p;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/videolib/JZVPStandard;->k()V

    return-void
.end method
