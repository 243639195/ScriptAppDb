.class public Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "AbortMultipartUploadRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->setBucketName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->setObjectKey(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->setUploadId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;->uploadId:Ljava/lang/String;

    return-void
.end method
