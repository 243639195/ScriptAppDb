.class public Lcom/ds/daisi/dialog/MIUIGuideDialog;
.super Lcom/ds/daisi/dialog/BaseDialog;
.source "MIUIGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonOpen:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/ds/daisi/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getAppDetailSettingIntent()Landroid/content/Intent;
    .locals 4

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 63
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 64
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ApplicationPkgName"

    .line 67
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f10012d

    .line 32
    invoke-virtual {p0, v0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ds/daisi/dialog/MIUIGuideDialog;->mButtonOpen:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/dialog/MIUIGuideDialog;->mButtonOpen:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f10012d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->getAppDetailSettingIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object p1, p0, Lcom/ds/daisi/dialog/MIUIGuideDialog;->mAppContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.cyjh.elfin.20150527"

    const/4 v1, 0x0

    .line 42
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/ds/daisi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040052

    .line 26
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->setContentView(I)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3ecccccd    # 0.4f

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->setDialogSize(FF)V

    .line 28
    invoke-direct {p0}, Lcom/ds/daisi/dialog/MIUIGuideDialog;->initView()V

    return-void
.end method
