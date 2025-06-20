.class public Lcom/ds/daisi/entity/FeLingAdReportInfo;
.super Lorg/litepal/crud/LitePalSupport;
.source "FeLingAdReportInfo.java"


# instance fields
.field public adPid:Ljava/lang/String;

.field public apkPageName:Ljava/lang/String;

.field public postState:I

.field public state:I

.field public type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->type:I

    .line 20
    iput p4, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->state:I

    .line 21
    iput p5, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->postState:I

    return-void
.end method


# virtual methods
.method public getAdPid()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPageName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostState()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->postState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAdPid(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->adPid:Ljava/lang/String;

    return-void
.end method

.method public setApkPageName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->apkPageName:Ljava/lang/String;

    return-void
.end method

.method public setPostState(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->postState:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ds/daisi/entity/FeLingAdReportInfo;->url:Ljava/lang/String;

    return-void
.end method
