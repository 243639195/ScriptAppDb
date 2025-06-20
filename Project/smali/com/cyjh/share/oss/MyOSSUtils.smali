.class public Lcom/cyjh/share/oss/MyOSSUtils;
.super Ljava/lang/Object;
.source "MyOSSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;,
        Lcom/cyjh/share/oss/MyOSSUtils$Builder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MyOSSUtils"


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

.field private mContext:Landroid/content/Context;

.field private oss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$100(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    .line 75
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$200(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    invoke-direct {v0, v1}, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;-><init>(Lcom/cyjh/share/bean/response/AliCloudServerResponse;)V

    .line 79
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$300(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 83
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$400(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    .line 85
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$500(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    .line 87
    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->access$600(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 88
    new-instance p1, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object v2, p0, Lcom/cyjh/share/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v3, v3, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssEndpoint:Ljava/lang/String;

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object p1, p0, Lcom/cyjh/share/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/share/oss/MyOSSUtils$Builder;Lcom/cyjh/share/oss/MyOSSUtils$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/cyjh/share/oss/MyOSSUtils;-><init>(Lcom/cyjh/share/oss/MyOSSUtils$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/cyjh/share/oss/MyOSSUtils;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/cyjh/share/oss/MyOSSUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cyjh/share/oss/MyOSSUtils;)Lcom/cyjh/share/bean/response/AliCloudServerResponse;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cyjh/share/oss/MyOSSUtils;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/cyjh/share/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/cyjh/share/oss/MyOSSUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isTokenExpireTime()Z
    .locals 8

    const/4 v0, 0x1

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v2, v2, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    sub-long v6, v2, v4

    const-wide/16 v1, 0x3

    cmp-long v3, v6, v1

    if-ltz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 164
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;)V
    .locals 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    iget-object v2, p0, Lcom/cyjh/share/oss/MyOSSUtils;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v2, v2, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssBucket:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance p1, Lcom/cyjh/share/oss/MyOSSUtils$1;

    invoke-direct {p1, p0, p3}, Lcom/cyjh/share/oss/MyOSSUtils$1;-><init>(Lcom/cyjh/share/oss/MyOSSUtils;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;)V

    invoke-virtual {v1, p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 108
    iget-object p1, p0, Lcom/cyjh/share/oss/MyOSSUtils;->oss:Lcom/alibaba/sdk/android/oss/OSS;

    new-instance v2, Lcom/cyjh/share/oss/MyOSSUtils$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/cyjh/share/oss/MyOSSUtils$2;-><init>(Lcom/cyjh/share/oss/MyOSSUtils;Ljava/lang/String;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;Ljava/io/File;)V

    invoke-interface {p1, v1, v2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method
