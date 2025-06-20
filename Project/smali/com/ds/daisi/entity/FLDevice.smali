.class public Lcom/ds/daisi/entity/FLDevice;
.super Ljava/lang/Object;
.source "FLDevice.java"


# instance fields
.field public androidId:Ljava/lang/String;

.field public appVer:Ljava/lang/String;

.field public carrier:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public lan:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public nt:Ljava/lang/String;

.field public osv:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public rslt:Ljava/lang/String;

.field public sendtime:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public ua:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ds/daisi/entity/FLDevice;->imei:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/ds/daisi/entity/FLDevice;->androidId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/ds/daisi/entity/FLDevice;->ip:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/ds/daisi/entity/FLDevice;->nt:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/ds/daisi/entity/FLDevice;->platform:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/ds/daisi/entity/FLDevice;->lan:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/ds/daisi/entity/FLDevice;->rslt:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/ds/daisi/entity/FLDevice;->osv:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/ds/daisi/entity/FLDevice;->carrier:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Lcom/ds/daisi/entity/FLDevice;->sendtime:Ljava/lang/String;

    .line 36
    iput-object p11, p0, Lcom/ds/daisi/entity/FLDevice;->timezone:Ljava/lang/String;

    .line 37
    iput-object p12, p0, Lcom/ds/daisi/entity/FLDevice;->mac:Ljava/lang/String;

    .line 38
    iput-object p13, p0, Lcom/ds/daisi/entity/FLDevice;->appVer:Ljava/lang/String;

    .line 39
    iput-object p14, p0, Lcom/ds/daisi/entity/FLDevice;->ua:Ljava/lang/String;

    return-void
.end method
