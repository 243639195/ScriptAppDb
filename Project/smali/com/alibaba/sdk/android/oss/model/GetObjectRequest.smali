.class public Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "GetObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private range:Lcom/alibaba/sdk/android/oss/model/Range;

.field private xOssProcess:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setBucketName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->setObjectKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object v0
.end method

.method public getRange()Lcom/alibaba/sdk/android/oss/model/Range;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->range:Lcom/alibaba/sdk/android/oss/model/Range;

    return-object v0
.end method

.method public getxOssProcess()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->xOssProcess:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setProgressListener(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRange(Lcom/alibaba/sdk/android/oss/model/Range;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->range:Lcom/alibaba/sdk/android/oss/model/Range;

    return-void
.end method

.method public setxOssProcess(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;->xOssProcess:Ljava/lang/String;

    return-void
.end method
