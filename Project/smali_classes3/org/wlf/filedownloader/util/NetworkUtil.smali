.class public Lorg/wlf/filedownloader/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v3, 0x0

    .line 23
    .local v3, "isNetwork":Z
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v4, v3

    .line 36
    .end local v3    # "isNetwork":Z
    .local v4, "isNetwork":I
    :goto_0
    return v4

    .line 27
    .end local v4    # "isNetwork":I
    .restart local v3    # "isNetwork":Z
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 28
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 30
    aget-object v5, v2, v1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    .line 31
    const/4 v3, 0x1

    .end local v1    # "i":I
    :cond_1
    move v4, v3

    .line 36
    .restart local v4    # "isNetwork":I
    goto :goto_0

    .line 29
    .end local v4    # "isNetwork":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
