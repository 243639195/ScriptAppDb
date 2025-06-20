.class Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingNetworkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/SplashFragment;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/SplashFragment;Lcom/ds/daisi/fragment/SplashFragment$1;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;-><init>(Lcom/ds/daisi/fragment/SplashFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 473
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;->this$0:Lcom/ds/daisi/fragment/SplashFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ds/daisi/fragment/SplashFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
