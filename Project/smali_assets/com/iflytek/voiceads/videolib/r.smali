.class Lcom/iflytek/voiceads/videolib/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZVPStandard;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/r;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
