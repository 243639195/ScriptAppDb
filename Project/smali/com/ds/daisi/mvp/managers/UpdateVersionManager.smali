.class public Lcom/ds/daisi/mvp/managers/UpdateVersionManager;
.super Ljava/lang/Object;
.source "UpdateVersionManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;
.implements Lcom/ds/daisi/mvp/views/UpdateVersionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ds/daisi/mvp/managers/UpdateVersionManager;


# instance fields
.field private isDismiss:Z

.field private isPop:Z

.field private mDismissBack:Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;

.field private mUpdateVersionPresenter:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isPop:Z

    .line 61
    iput-boolean v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isDismiss:Z

    .line 21
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mUpdateVersionPresenter:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;-><init>(Landroid/content/Context;Lcom/ds/daisi/mvp/views/UpdateVersionView;)V

    iput-object v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mUpdateVersionPresenter:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    :cond_0
    return-void
.end method

.method public static builder()Lcom/ds/daisi/mvp/managers/UpdateVersionManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->sInstance:Lcom/ds/daisi/mvp/managers/UpdateVersionManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;

    invoke-direct {v0}, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;-><init>()V

    sput-object v0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->sInstance:Lcom/ds/daisi/mvp/managers/UpdateVersionManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->sInstance:Lcom/ds/daisi/mvp/managers/UpdateVersionManager;

    return-object v0
.end method


# virtual methods
.method public onUpdateSuccessful(Lcom/ds/daisi/entity/UpdateInfo;)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isPop:Z

    iput-boolean v0, p1, Lcom/ds/daisi/entity/UpdateInfo;->isFloat:Z

    .line 41
    iget-boolean v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isDismiss:Z

    iput-boolean v0, p1, Lcom/ds/daisi/entity/UpdateInfo;->isDismissing:Z

    .line 44
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mDismissBack:Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mDismissBack:Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;

    invoke-interface {p1}, Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;->onCall()V

    :cond_0
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isPop:Z

    .line 48
    iput-boolean p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isDismiss:Z

    return-void
.end method

.method public setDismiss(Z)Lcom/ds/daisi/mvp/managers/UpdateVersionManager;
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isDismiss:Z

    return-object p0
.end method

.method public setDismissBack(Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;)Lcom/ds/daisi/mvp/managers/UpdateVersionManager;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mDismissBack:Lcom/ds/daisi/mvp/managers/UpdateVersionManager$OnUpdateVersionBack;

    return-object p0
.end method

.method public setPop(Z)Lcom/ds/daisi/mvp/managers/UpdateVersionManager;
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->isPop:Z

    return-object p0
.end method

.method public updateVersion(ZLandroid/content/Context;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/UpdateVersionManager;->mUpdateVersionPresenter:Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/ds/daisi/mvp/presenters/UpdateVersionPresenter;->updateVersion(ZLandroid/content/Context;)V

    return-void
.end method
