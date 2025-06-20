.class Lcom/ds/daisi/dialog/ScriptUIDialog$2;
.super Ljava/lang/Object;
.source "ScriptUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/ScriptUIDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

.field final synthetic val$settingDialog:Lcom/ds/daisi/dialog/SettingDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/ScriptUIDialog;Lcom/ds/daisi/dialog/SettingDialog;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$2;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    iput-object p2, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$2;->val$settingDialog:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 629
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$2;->val$settingDialog:Lcom/ds/daisi/dialog/SettingDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/SettingDialog;->isDismiss()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    iget-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$2;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/ScriptUIDialog;->dismiss()V

    :cond_0
    return-void
.end method
