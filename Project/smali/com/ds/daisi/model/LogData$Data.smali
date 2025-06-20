.class public Lcom/ds/daisi/model/LogData$Data;
.super Ljava/lang/Object;
.source "LogData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/model/LogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private AppID:Ljava/lang/String;

.field private AppVersion:Ljava/lang/String;

.field private IsFree:Ljava/lang/String;

.field private MachineCode:Ljava/lang/String;

.field private UsedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09012d

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->AppVersion:Ljava/lang/String;

    const v0, 0x7f090122

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->AppID:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/ds/daisi/util/UniqIdUtil;->getUniqId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->MachineCode:Ljava/lang/String;

    const-string p1, "0"

    .line 101
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->IsFree:Ljava/lang/String;

    const-string p1, "0"

    .line 102
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->UsedTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->AppID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->AppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFree()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->IsFree:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineCode()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->MachineCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTime()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/ds/daisi/model/LogData$Data;->UsedTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->AppID:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->AppVersion:Ljava/lang/String;

    return-void
.end method

.method public setIsFree(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->IsFree:Ljava/lang/String;

    return-void
.end method

.method public setMachineCode(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->MachineCode:Ljava/lang/String;

    return-void
.end method

.method public setUsedTime(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/ds/daisi/model/LogData$Data;->UsedTime:Ljava/lang/String;

    return-void
.end method
