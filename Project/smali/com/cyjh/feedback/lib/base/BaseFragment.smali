.class public abstract Lcom/cyjh/feedback/lib/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field private static final LOGGER_TAG:Ljava/lang/String; = "ELFIN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFragmentLayoutId()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->isOutputLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ELFIN"

    .line 29
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object p1

    sget-object v0, Lcom/orhanobut/logger/LogLevel;->FULL:Lcom/orhanobut/logger/LogLevel;

    invoke-virtual {p1, v0}, Lcom/orhanobut/logger/Settings;->setLogLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;

    goto :goto_0

    :cond_0
    const-string p1, "ELFIN"

    .line 32
    invoke-static {p1}, Lcom/orhanobut/logger/Logger;->init(Ljava/lang/String;)Lcom/orhanobut/logger/Settings;

    move-result-object p1

    sget-object v0, Lcom/orhanobut/logger/LogLevel;->NONE:Lcom/orhanobut/logger/LogLevel;

    invoke-virtual {p1, v0}, Lcom/orhanobut/logger/Settings;->setLogLevel(Lcom/orhanobut/logger/LogLevel;)Lcom/orhanobut/logger/Settings;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->getFragmentLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
