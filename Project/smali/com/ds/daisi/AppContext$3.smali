.class Lcom/ds/daisi/AppContext$3;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/AppContext;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/ds/daisi/AppContext$3;->this$0:Lcom/ds/daisi/AppContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSpecialFuction(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningPackages()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public inputText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public keyPress(I)V
    .locals 0

    return-void
.end method

.method public killApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
