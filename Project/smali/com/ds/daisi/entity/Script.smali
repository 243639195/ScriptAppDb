.class public Lcom/ds/daisi/entity/Script;
.super Ljava/lang/Object;
.source "Script.java"


# static fields
.field public static final SCRIPT_STATE_FREE:I = 0x0

.field public static final SCRIPT_STATE_LOAD:I = 0x1

.field public static final SCRIPT_STATE_PAUSE:I = 0x3

.field public static final SCRIPT_STATE_PAUSE_BY_HEART_BEAT_VERIFI_ERR:I = 0x4

.field public static final SCRIPT_STATE_RUNING:I = 0x2


# instance fields
.field private appId:Ljava/lang/String;

.field private atcFile:Ljava/io/File;

.field private bestResolution:Lcom/ds/daisi/entity/BestResolution;

.field private cfgFile:Ljava/io/File;

.field private changeFileList:I

.field private description:Ljava/lang/String;

.field private fileVersion:Lcom/ds/daisi/entity/FileVersion;

.field private id:Ljava/lang/String;

.field private lcFile:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private propFile:Ljava/io/File;

.field private rtdFile:Ljava/io/File;

.field private selId:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private uiFile:Ljava/io/File;

.field private uipFile:Ljava/io/File;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAtcFile()Ljava/io/File;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->atcFile:Ljava/io/File;

    return-object v0
.end method

.method public getBestResolution()Lcom/ds/daisi/entity/BestResolution;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->bestResolution:Lcom/ds/daisi/entity/BestResolution;

    return-object v0
.end method

.method public getCfgFile()Ljava/io/File;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->cfgFile:Ljava/io/File;

    return-object v0
.end method

.method public getChangeFileList()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/ds/daisi/entity/Script;->changeFileList:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileVersion()Lcom/ds/daisi/entity/FileVersion;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->fileVersion:Lcom/ds/daisi/entity/FileVersion;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLcFile()Ljava/io/File;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->lcFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropFile()Ljava/io/File;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->propFile:Ljava/io/File;

    return-object v0
.end method

.method public getRtdFile()Ljava/io/File;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->rtdFile:Ljava/io/File;

    return-object v0
.end method

.method public getSelId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->selId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getUiFile()Ljava/io/File;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->uiFile:Ljava/io/File;

    return-object v0
.end method

.method public getUipFile()Ljava/io/File;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->uipFile:Ljava/io/File;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ds/daisi/entity/Script;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAtcFile(Ljava/io/File;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->atcFile:Ljava/io/File;

    return-void
.end method

.method public setBestResolution(Lcom/ds/daisi/entity/BestResolution;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->bestResolution:Lcom/ds/daisi/entity/BestResolution;

    return-void
.end method

.method public setCfgFile(Ljava/io/File;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->cfgFile:Ljava/io/File;

    return-void
.end method

.method public setChangeFileList(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/ds/daisi/entity/Script;->changeFileList:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileVersion(Lcom/ds/daisi/entity/FileVersion;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->fileVersion:Lcom/ds/daisi/entity/FileVersion;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->id:Ljava/lang/String;

    return-void
.end method

.method public setLcFile(Ljava/io/File;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->lcFile:Ljava/io/File;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->name:Ljava/lang/String;

    return-void
.end method

.method public setPropFile(Ljava/io/File;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->propFile:Ljava/io/File;

    return-void
.end method

.method public setRtdFile(Ljava/io/File;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->rtdFile:Ljava/io/File;

    return-void
.end method

.method public setSelId(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->selId:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->size:Ljava/lang/String;

    return-void
.end method

.method public setUiFile(Ljava/io/File;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->uiFile:Ljava/io/File;

    return-void
.end method

.method public setUipFile(Ljava/io/File;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->uipFile:Ljava/io/File;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/ds/daisi/entity/Script;->version:Ljava/lang/String;

    return-void
.end method
