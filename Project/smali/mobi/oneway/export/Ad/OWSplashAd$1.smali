.class Lmobi/oneway/export/Ad/OWSplashAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OWSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lmobi/oneway/export/AdListener/OWSplashAdListener;

.field final synthetic d:J

.field final synthetic e:Lmobi/oneway/export/Ad/OWSplashAd;


# direct methods
.method constructor <init>(Lmobi/oneway/export/Ad/OWSplashAd;Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->e:Lmobi/oneway/export/Ad/OWSplashAd;

    iput-object p2, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->c:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    iput-wide p5, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->e:Lmobi/oneway/export/Ad/OWSplashAd;

    invoke-static {v0}, Lmobi/oneway/export/Ad/OWSplashAd;->a(Lmobi/oneway/export/Ad/OWSplashAd;)Lmobi/oneway/export/b/a/c;

    move-result-object v1

    iget-object v2, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->b:Landroid/view/ViewGroup;

    iget-object v4, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->c:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    iget-wide v5, p0, Lmobi/oneway/export/Ad/OWSplashAd$1;->d:J

    invoke-virtual/range {v1 .. v6}, Lmobi/oneway/export/b/a/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    return-void
.end method
