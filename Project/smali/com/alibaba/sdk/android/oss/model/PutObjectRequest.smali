.class public Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "PutObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private callbackParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callbackVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private objectKey:Ljava/lang/String;

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;"
        }
    .end annotation
.end field

.field private retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

.field private uploadData:[B

.field private uploadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setUploadFilePath(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setObjectKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setUploadData([B)V

    .line 80
    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->bucketName:Ljava/lang/String;

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

    .line 174
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackParam:Ljava/util/Map;

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

    .line 185
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackVars:Ljava/util/Map;

    return-object v0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getRetryCallback()Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-object v0
.end method

.method public getUploadData()[B
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadData:[B

    return-object v0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->bucketName:Ljava/lang/String;

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

    .line 181
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackParam:Ljava/util/Map;

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

    .line 192
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->callbackVars:Ljava/util/Map;

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRetryCallback(Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->retryCallback:Lcom/alibaba/sdk/android/oss/callback/OSSRetryCallback;

    return-void
.end method

.method public setUploadData([B)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadData:[B

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method
