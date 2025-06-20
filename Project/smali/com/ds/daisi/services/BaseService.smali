.class public Lcom/ds/daisi/services/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"

# interfaces
.implements Lcom/ds/daisi/constant/APPConstant;


# instance fields
.field protected appContext:Lcom/ds/daisi/AppContext;

.field protected commonLog:Lcom/ds/daisi/log/CommonLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/services/BaseService;->commonLog:Lcom/ds/daisi/log/CommonLog;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    invoke-virtual {p0}, Lcom/ds/daisi/services/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/AppContext;

    iput-object v0, p0, Lcom/ds/daisi/services/BaseService;->appContext:Lcom/ds/daisi/AppContext;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
