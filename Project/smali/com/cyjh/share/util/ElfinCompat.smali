.class public Lcom/cyjh/share/util/ElfinCompat;
.super Ljava/lang/Object;
.source "ElfinCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ElfinCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOpenImageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 29
    invoke-static {p0}, Lcom/cyjh/share/util/VersionUtils;->isTargetQ(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 30
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 33
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p0, v0, :cond_1

    .line 34
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    const/4 v0, 0x3

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static openImage(Landroid/app/Activity;I)V
    .locals 1

    .line 18
    invoke-static {p0}, Lcom/cyjh/share/util/ElfinCompat;->getOpenImageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static openImage(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/ElfinCompat;->getOpenImageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
