.class public Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "MultipartUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
        ">",
        "Lcom/alibaba/sdk/android/oss/model/OSSRequest;"
    }
.end annotation


# instance fields
.field protected bucketName:Ljava/lang/String;

.field protected callbackParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected callbackVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field protected objectKey:Ljava/lang/String;

.field protected partSize:J

.field protected progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected uploadFilePath:Ljava/lang/String;

.field protected uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    const-wide/32 v0, 0x40000

    .line 13
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->partSize:J

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setBucketName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setObjectKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setUploadFilePath(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->callbackParam:Ljava/util/Map;

    return-object v0
.end method

.method public getCallbackVars()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->callbackVars:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPartSize()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->callbackParam:Ljava/util/Map;

    return-void
.end method

.method public setCallbackVars(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->callbackVars:Ljava/util/Map;

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setPartSize(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/32 v0, 0x19000

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 115
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Part size must be greater than or equal to 100KB!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->partSize:J

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
