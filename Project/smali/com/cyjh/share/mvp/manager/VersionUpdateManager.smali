.class public Lcom/cyjh/share/mvp/manager/VersionUpdateManager;
.super Ljava/lang/Object;
.source "VersionUpdateManager.java"

# interfaces
.implements Lcom/cyjh/share/mvp/base/BaseManager;
.implements Lcom/cyjh/share/mvp/view/VersionUpdateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;
    }
.end annotation


# static fields
.field public static final HAS_VERSION_NEW_VALUE:I = 0x2

.field public static final PASS_OPERA_VALUE:I = 0x3

.field private static sInstance:Lcom/cyjh/share/mvp/manager/VersionUpdateManager;


# instance fields
.field private mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

.field private mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/cyjh/share/mvp/manager/VersionUpdateManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->sInstance:Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    invoke-direct {v0}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;-><init>()V

    sput-object v0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->sInstance:Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->sInstance:Lcom/cyjh/share/mvp/manager/VersionUpdateManager;

    return-object v0
.end method


# virtual methods
.method public onCancelUpdate()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onUpdateEmpty()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;->onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public onUpdateFailure(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;->onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V

    return-void
.end method

.method public onUpdateSuccessful(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

    invoke-interface {v0, p1}, Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;->onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V

    :cond_0
    return-void
.end method

.method public setDismissBack(Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;)Lcom/cyjh/share/mvp/manager/VersionUpdateManager;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mDismissBack:Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;

    return-object p0
.end method

.method public updateVersion(ZLandroid/content/Context;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    invoke-direct {v0, p2, p0, p1}, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;-><init>(Landroid/content/Context;Lcom/cyjh/share/mvp/view/VersionUpdateView;Z)V

    iput-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    .line 47
    iget-object p1, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    invoke-virtual {p1, p2}, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->updateVersion(Landroid/content/Context;)V

    return-void
.end method

.method public updateVersion(ZLandroid/content/Context;Lcom/cyjh/share/bean/request/UpdateRequestInfo;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;-><init>(Landroid/content/Context;Lcom/cyjh/share/mvp/view/VersionUpdateView;ZLcom/cyjh/share/bean/request/UpdateRequestInfo;)V

    iput-object v0, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    .line 52
    iget-object p1, p0, Lcom/cyjh/share/mvp/manager/VersionUpdateManager;->mUpdatePresenter:Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;

    invoke-virtual {p1, p2}, Lcom/cyjh/share/mvp/presenter/AppVersionUpdatePresenter;->updateVersion(Landroid/content/Context;)V

    return-void
.end method
