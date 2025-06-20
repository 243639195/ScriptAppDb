.class Lcom/iflytek/voiceads/videolib/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/videolib/JZVPStandard;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/videolib/JZVPStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/videolib/q;->a:Lcom/iflytek/voiceads/videolib/JZVPStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
