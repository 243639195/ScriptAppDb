.class public Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "ListObjectsRequest.java"


# static fields
.field private static final MAX_RETURNED_KEYS_LIMIT:I = 0x3e8


# instance fields
.field private bucketName:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setBucketName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 58
    invoke-virtual {p0, p5}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-void

    .line 131
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maxkeys should less can not exceed 1000."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method
