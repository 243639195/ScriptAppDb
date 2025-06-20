.class Lmobi/oneway/export/Ad/OWInterstitialAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

.field final synthetic d:Lmobi/oneway/export/Ad/OWInterstitialAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWInterstitialAd;Ljava/lang/String;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->c:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialAd;

    new-instance v1, Lmobi/oneway/export/b/a/a;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-static {v2}, Lmobi/oneway/export/Ad/OWInterstitialAd;->a(Lmobi/oneway/export/Ad/OWInterstitialAd;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    iget-object v3, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lmobi/oneway/export/b/a/a;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmobi/oneway/export/Ad/OWInterstitialAd;->a(Lmobi/oneway/export/Ad/OWInterstitialAd;Lmobi/oneway/export/b/a/a;)Lmobi/oneway/export/b/a/a;

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->d:Lmobi/oneway/export/Ad/OWInterstitialAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWInterstitialAd;->b(Lmobi/oneway/export/Ad/OWInterstitialAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWInterstitialAd$1;->c:Lmobi/oneway/export/AdListener/OWInterstitialAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
