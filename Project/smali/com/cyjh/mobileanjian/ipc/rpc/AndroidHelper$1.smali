.class final Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->batteryLevel()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 297
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string p1, "level"

    const/4 v0, -0x1

    .line 298
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "scale"

    .line 299
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    mul-int/lit8 p1, p1, 0x64

    .line 302
    div-int/2addr p1, p2

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->a(I)I

    .line 304
    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->a()Z

    return-void
.end method
