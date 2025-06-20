.class Lcom/ds/daisi/floatview/ElfinFloatView$3;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;->updateVersionRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$3;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
    .locals 4

    if-nez p1, :cond_0

    .line 589
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$3;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->checkJarApp()V

    return-void

    .line 593
    :cond_0
    invoke-static {}, Lcom/ds/daisi/util/ErrorUtilHelper;->getInstance()Lcom/ds/daisi/util/ErrorUtilHelper;

    move-result-object v0

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVersionRequest onUpdateHas --> versionUpdateInfo.UpgradeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpgradeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/util/ErrorUtilHelper;->writeProcessedStringToFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    iget v0, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    iget v1, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v1, :cond_1

    .line 595
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/share/util/SpUtil;->setAppVersion(Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->initElf()V

    .line 597
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_CHECK_UPDATE_WHEN_START_RUN:I

    .line 598
    invoke-static {}, Lcom/ds/daisi/util/ScriptDownloadHelper;->get()Lcom/ds/daisi/util/ScriptDownloadHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/floatview/ElfinFloatView$3;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    iget-object v2, v2, Lcom/ds/daisi/floatview/ElfinFloatView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ds/daisi/floatview/ElfinFloatView$3;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {v3}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ds/daisi/util/ScriptDownloadHelper;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/ds/daisi/util/ScriptDownloadHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->downloadScriptOperate(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$3;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-static {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->access$500(Lcom/ds/daisi/floatview/ElfinFloatView;)Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->checkJarApp()V

    :goto_0
    return-void
.end method
