.class public Lcom/ds/daisi/fragment/LicenseFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "LicenseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/ds/daisi/fragment/LicenseFragment;
    .locals 1

    .line 25
    new-instance v0, Lcom/ds/daisi/fragment/LicenseFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/LicenseFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040064

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 32
    const-class v0, Lcom/ds/daisi/fragment/LicenseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 38
    const-class v0, Lcom/ds/daisi/fragment/LicenseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method
