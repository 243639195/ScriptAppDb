.class public Lcom/ds/daisi/entity/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# static fields
.field public static final APPID:Ljava/lang/String; = "AppId"

.field public static final DOWNLOAD_PATH:Ljava/lang/String; = "DownLoadPath"

.field public static final PACKAGENAME:Ljava/lang/String; = "PackageName"

.field public static final UPDATETYPE_FORCE:I = 0x0

.field public static final UPDATETYPE_OPTIONAL:I = 0x1

.field public static final UPDATE_NOTICE:Ljava/lang/String; = "UpdateNotice"

.field public static final UPDATE_TYPE:Ljava/lang/String; = "UpdateType"

.field public static final VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private DownLoadPath:Ljava/lang/String;

.field private FileSize:Ljava/lang/String;

.field private UpdateNotice:Ljava/lang/String;

.field private UpdateType:I

.field public isDismissing:Z

.field public isFloat:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/ds/daisi/entity/UpdateInfo;->isDismissing:Z

    return-void
.end method


# virtual methods
.method public getDownLoadPath()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ds/daisi/entity/UpdateInfo;->DownLoadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ds/daisi/entity/UpdateInfo;->FileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateNotice()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ds/daisi/entity/UpdateInfo;->UpdateNotice:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ds/daisi/entity/UpdateInfo;->UpdateType:I

    return v0
.end method

.method public setDownLoadPath(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ds/daisi/entity/UpdateInfo;->DownLoadPath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ds/daisi/entity/UpdateInfo;->FileSize:Ljava/lang/String;

    return-void
.end method

.method public setUpdateNotice(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ds/daisi/entity/UpdateInfo;->UpdateNotice:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/ds/daisi/entity/UpdateInfo;->UpdateType:I

    return-void
.end method
