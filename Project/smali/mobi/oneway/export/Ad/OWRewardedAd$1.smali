.class Lmobi/oneway/export/Ad/OWRewardedAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWRewardedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

.field final synthetic d:Lmobi/oneway/export/Ad/OWRewardedAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWRewardedAd;Ljava/lang/String;Landroid/app/Activity;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->d:Lmobi/oneway/export/Ad/OWRewardedAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->b:Landroid/app/Activity;

    iput-object p4, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->d:Lmobi/oneway/export/Ad/OWRewardedAd;

    new-instance v1, Lmobi/oneway/export/b/a/a;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->d:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v2}, Lmobi/oneway/export/Ad/OWRewardedAd;->a(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/enums/AdType;

    move-result-object v2

    iget-object v3, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lmobi/oneway/export/b/a/a;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmobi/oneway/export/Ad/OWRewardedAd;->a(Lmobi/oneway/export/Ad/OWRewardedAd;Lmobi/oneway/export/b/a/a;)Lmobi/oneway/export/b/a/a;

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->d:Lmobi/oneway/export/Ad/OWRewardedAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWRewardedAd;->b(Lmobi/oneway/export/Ad/OWRewardedAd;)Lmobi/oneway/export/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWRewardedAd$1;->c:Lmobi/oneway/export/AdListener/OWRewardedAdListener;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a/a;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
