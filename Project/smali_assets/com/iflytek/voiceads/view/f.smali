.class Lcom/iflytek/voiceads/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/voiceads/view/InterstitialAdView;


# direct methods
.method constructor <init>(Lcom/iflytek/voiceads/view/InterstitialAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/voiceads/view/f;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/voiceads/view/f;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/InterstitialAdView;->k:Lcom/iflytek/voiceads/listener/InternalListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/InternalListener;->onAdDestroy()Z

    iget-object v0, p0, Lcom/iflytek/voiceads/view/f;->a:Lcom/iflytek/voiceads/view/InterstitialAdView;

    iget-object v0, v0, Lcom/iflytek/voiceads/view/InterstitialAdView;->j:Lcom/iflytek/voiceads/listener/IFLYAdListener;

    invoke-interface {v0}, Lcom/iflytek/voiceads/listener/IFLYAdListener;->onAdClose()V

    return-void
.end method
