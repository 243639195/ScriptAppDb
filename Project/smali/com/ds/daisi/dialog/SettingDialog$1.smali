.class Lcom/ds/daisi/dialog/SettingDialog$1;
.super Ljava/lang/Object;
.source "SettingDialog.java"

# interfaces
.implements Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/SettingDialog;->recognitionLibraryDownloadOperate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/SettingDialog;

.field final synthetic val$dialog:Lcom/cyjh/share/dialog/LibraryUILoadingDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/SettingDialog;Lcom/cyjh/share/dialog/LibraryUILoadingDialog;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    iput-object p2, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->val$dialog:Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alreadyExist()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->val$dialog:Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-virtual {v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->dismiss()V

    .line 301
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {v0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u5df2\u4e0b\u8f7d\uff01"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 1

    .line 313
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->val$dialog:Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-virtual {p1}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->dismiss()V

    .line 314
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/SettingDialog;->access$000(Lcom/ds/daisi/dialog/SettingDialog;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 316
    iget-object p1, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/SettingDialog;->access$000(Lcom/ds/daisi/dialog/SettingDialog;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onDownloadSuccess()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->val$dialog:Lcom/cyjh/share/dialog/LibraryUILoadingDialog;

    invoke-virtual {v0}, Lcom/cyjh/share/dialog/LibraryUILoadingDialog;->dismiss()V

    .line 307
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {v0}, Lcom/ds/daisi/dialog/SettingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/ds/daisi/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/ds/daisi/dialog/SettingDialog$1;->this$0:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-static {v0}, Lcom/ds/daisi/dialog/SettingDialog;->access$000(Lcom/ds/daisi/dialog/SettingDialog;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    return-void
.end method
