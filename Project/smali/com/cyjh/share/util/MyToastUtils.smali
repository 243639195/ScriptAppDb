.class public Lcom/cyjh/share/util/MyToastUtils;
.super Ljava/lang/Object;
.source "MyToastUtils.java"


# static fields
.field private static oldMsg:Ljava/lang/String;

.field private static oneTime:J

.field private static toast:Landroid/widget/Toast;

.field private static twoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 29
    sget-object v0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    .line 31
    sget-object p0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/cyjh/share/util/MyToastUtils;->oneTime:J

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cyjh/share/util/MyToastUtils;->twoTime:J

    .line 35
    sget-object p0, Lcom/cyjh/share/util/MyToastUtils;->oldMsg:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    sget-wide p0, Lcom/cyjh/share/util/MyToastUtils;->twoTime:J

    sget-wide v0, Lcom/cyjh/share/util/MyToastUtils;->oneTime:J

    sub-long v2, p0, v0

    const-wide/16 p0, 0x0

    cmp-long v0, v2, p0

    if-lez v0, :cond_2

    .line 37
    sget-object p0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 40
    :cond_1
    sput-object p1, Lcom/cyjh/share/util/MyToastUtils;->oldMsg:Ljava/lang/String;

    .line 41
    sget-object p0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object p0, Lcom/cyjh/share/util/MyToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 45
    :cond_2
    :goto_0
    sget-wide p0, Lcom/cyjh/share/util/MyToastUtils;->twoTime:J

    sput-wide p0, Lcom/cyjh/share/util/MyToastUtils;->oneTime:J

    return-void
.end method
