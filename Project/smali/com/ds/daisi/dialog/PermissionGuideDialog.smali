.class public Lcom/ds/daisi/dialog/PermissionGuideDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "PermissionGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;
    }
.end annotation


# static fields
.field public static final CANCEL_OPERATE:I = 0x65

.field public static final CONFIRM_OPERATE:I = 0x64

.field public static final FIRST_OPEN_FLOAT_PERMISSION:Ljava/lang/String; = "first_open_float_permission"


# instance fields
.field private mButtonOpen:Landroid/widget/Button;

.field private mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p2, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    return-void
.end method

.method private getAppDetailSettingIntent()Landroid/content/Intent;
    .locals 5

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 96
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 99
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/16 v3, 0x9

    const/high16 v4, 0x10000000

    if-lt v1, v3, :cond_2

    .line 101
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 103
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_3

    .line 105
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    .line 108
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    return-object v0
.end method

.method private initData()V
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 53
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 54
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 59
    new-instance v0, Lcom/ds/daisi/dialog/PermissionGuideDialog$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog$$Lambda$0;-><init>(Lcom/ds/daisi/dialog/PermissionGuideDialog;)V

    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f10012d

    .line 46
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mButtonOpen:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mButtonOpen:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private jumpSettingPage()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;->onDialogClick(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_open_float_permission"

    const/4 v2, 0x0

    .line 83
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$initListener$0$PermissionGuideDialog(Landroid/content/DialogInterface;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    const/16 v0, 0x65

    invoke-interface {p1, v0}, Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;->onDialogClick(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10012d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->jumpSettingPage()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040052

    .line 39
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->initData()V

    .line 42
    invoke-direct {p0}, Lcom/ds/daisi/dialog/PermissionGuideDialog;->initListener()V

    return-void
.end method

.method public setListener(Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ds/daisi/dialog/PermissionGuideDialog;->mListener:Lcom/ds/daisi/dialog/PermissionGuideDialog$OnDialogClickListener;

    return-void
.end method
