.class public Lkiller/cloud/client/CloudMessage;
.super Ljava/lang/Object;
.source "CloudMessage.java"


# instance fields
.field public action:I

.field public appId:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public hotUpdateUrl:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public running:Ljava/lang/String;

.field public scriptCfg:Ljava/lang/String;

.field public scriptData:Ljava/lang/String;

.field public scriptUip:Ljava/lang/String;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "1"

    iput-object v0, p0, Lkiller/cloud/client/CloudMessage;->running:Ljava/lang/String;

    return-void
.end method
