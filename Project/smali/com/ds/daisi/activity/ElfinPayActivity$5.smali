.class Lcom/ds/daisi/activity/ElfinPayActivity$5;
.super Ljava/lang/Object;
.source "ElfinPayActivity.java"

# interfaces
.implements Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/ElfinPayActivity;->updateVersionRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 952
    :cond_0
    iget v0, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 953
    iget v0, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v0, v2, :cond_1

    .line 954
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    iput-boolean v2, v0, Lcom/ds/daisi/AppContext;->isForceUpdate:Z

    .line 956
    :cond_1
    new-instance v0, Lcom/ds/daisi/dialog/UpdateDialog;

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v2, p1, v1}, Lcom/ds/daisi/dialog/UpdateDialog;-><init>(Landroid/content/Context;Lcom/cyjh/share/bean/response/VersionUpdateInfo;Z)V

    .line 957
    invoke-virtual {v0}, Lcom/ds/daisi/dialog/UpdateDialog;->show()V

    goto :goto_1

    .line 958
    :cond_2
    iget v0, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 959
    invoke-static {}, Lcom/cyjh/share/util/SpUtil;->getInstance()Lcom/cyjh/share/util/SpUtil;

    move-result-object v0

    iget-object v2, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cyjh/share/util/SpUtil;->setAppVersion(Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->initElf()V

    .line 961
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_NEXT_TIME:I

    const/4 v2, 0x3

    .line 962
    iget v3, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v2, v3, :cond_4

    .line 963
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$600(Lcom/ds/daisi/activity/ElfinPayActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v0, v1}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$602(Lcom/ds/daisi/activity/ElfinPayActivity;Z)Z

    .line 965
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I

    goto :goto_0

    .line 967
    :cond_3
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_IMMEDIATELY:I

    .line 969
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ds/daisi/util/ScriptDownloadHelper;->get()Lcom/ds/daisi/util/ScriptDownloadHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    iget-object v3, p0, Lcom/ds/daisi/activity/ElfinPayActivity$5;->this$0:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-static {v3}, Lcom/ds/daisi/activity/ElfinPayActivity;->access$700(Lcom/ds/daisi/activity/ElfinPayActivity;)Lcom/ds/daisi/AppContext;

    move-result-object v3

    iget-object v3, v3, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v3}, Lcom/ds/daisi/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ds/daisi/util/ScriptDownloadHelper;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/ds/daisi/util/ScriptDownloadHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->downloadScriptOperate(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
