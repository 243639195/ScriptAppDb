.class final synthetic Lcom/ds/daisi/dialog/SettingDialog$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/share/mvp/manager/VersionUpdateManager$OnUpdateVersionBack;


# instance fields
.field private final arg$1:Lcom/ds/daisi/dialog/SettingDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/SettingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/SettingDialog;

    return-void
.end method


# virtual methods
.method public onUpdateHas(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$$Lambda$0;->arg$1:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/dialog/SettingDialog;->lambda$updateVersionRequest$0$SettingDialog(Lcom/cyjh/share/bean/response/VersionUpdateInfo;)V

    return-void
.end method
