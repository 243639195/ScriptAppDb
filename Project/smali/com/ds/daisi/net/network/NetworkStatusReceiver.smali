.class public Lcom/ds/daisi/net/network/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# instance fields
.field private networkrListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "connectivity"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/ds/daisi/net/network/NetworkStatusReceiver;->networkrListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

    if-eqz p2, :cond_1

    .line 21
    iget-object p2, p0, Lcom/ds/daisi/net/network/NetworkStatusReceiver;->networkrListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

    invoke-interface {p2, p1}, Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;->onReceive(Z)V

    :cond_1
    return-void
.end method

.method public setNetworkrListener(Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ds/daisi/net/network/NetworkStatusReceiver;->networkrListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

    return-void
.end method
