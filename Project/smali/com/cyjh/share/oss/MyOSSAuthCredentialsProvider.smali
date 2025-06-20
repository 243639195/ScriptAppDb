.class public Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;
.super Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;
.source "MyOSSAuthCredentialsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider$AuthDecoder;
    }
.end annotation


# instance fields
.field private aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

.field private mDecoder:Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider$AuthDecoder;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/bean/response/AliCloudServerResponse;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    return-void
.end method


# virtual methods
.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 7

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v2, v1, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v3, v1, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundAccessKeySecret:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v4, v1, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundSecurityToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->aliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v1, v1, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->AliCloundExpireTime:Ljava/lang/Long;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "Token\u4fe1\u606f\u4e3anull"

    .line 38
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setDecoder(Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider$AuthDecoder;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider;->mDecoder:Lcom/cyjh/share/oss/MyOSSAuthCredentialsProvider$AuthDecoder;

    return-void
.end method
