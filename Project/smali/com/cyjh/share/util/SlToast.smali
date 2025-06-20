.class public Lcom/cyjh/share/util/SlToast;
.super Ljava/lang/Object;
.source "SlToast.java"


# static fields
.field public static debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToastLong(Landroid/content/Context;I)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/cyjh/share/util/SlToast;->debugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcom/cyjh/share/util/SlToast;->debugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 25
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showToastShort(Landroid/content/Context;I)V
    .locals 1

    .line 19
    sget-boolean v0, Lcom/cyjh/share/util/SlToast;->debugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/cyjh/share/util/SlToast;->debugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
