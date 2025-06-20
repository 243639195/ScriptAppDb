.class Lcom/cyjh/share/oss/MyOSSUtils$2;
.super Ljava/lang/Object;
.source "MyOSSUtils.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/share/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/oss/MyOSSUtils;

.field final synthetic val$callBack:Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$objectKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cyjh/share/oss/MyOSSUtils;Ljava/lang/String;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;Ljava/io/File;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->this$0:Lcom/cyjh/share/oss/MyOSSUtils;

    iput-object p2, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$objectKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$callBack:Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;

    iput-object p4, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cyjh/share/oss/MyOSSUtils$2;->onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public onFailure(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$callBack:Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;

    iget-object v1, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;->uploadFail(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->this$0:Lcom/cyjh/share/oss/MyOSSUtils;

    invoke-static {v0}, Lcom/cyjh/share/oss/MyOSSUtils;->access$1000(Lcom/cyjh/share/oss/MyOSSUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/CommonUtil;->getErrorFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "message="

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v3}, Lcom/cyjh/share/util/FileUtil;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    if-eqz p2, :cond_0

    .line 128
    invoke-static {}, Lcom/cyjh/share/oss/MyOSSUtils;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadFile --> ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clientException="

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "zzz"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyOSSUtils--uploadImage--clientException"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {v0, p1, p2, v3}, Lcom/cyjh/share/util/FileUtil;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "uploadImage--ErrorCode"

    .line 138
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "uploadImage--RequestId"

    .line 139
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "uploadImage--HostId"

    .line 140
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "uploadImage--RawMessage"

    .line 141
    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ErrorCode="

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "RequestId="

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "HostId="

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "RawMessage="

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {v0, p1, p2, v3}, Lcom/cyjh/share/util/FileUtil;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/cyjh/share/oss/MyOSSUtils$2;->onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/model/PutObjectResult;)V
    .locals 2

    .line 112
    iget-object p1, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->this$0:Lcom/cyjh/share/oss/MyOSSUtils;

    invoke-static {p1}, Lcom/cyjh/share/oss/MyOSSUtils;->access$800(Lcom/cyjh/share/oss/MyOSSUtils;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->this$0:Lcom/cyjh/share/oss/MyOSSUtils;

    invoke-static {p2}, Lcom/cyjh/share/oss/MyOSSUtils;->access$700(Lcom/cyjh/share/oss/MyOSSUtils;)Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    move-result-object p2

    iget-object p2, p2, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssBucket:Ljava/lang/String;

    iget-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$objectKey:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/alibaba/sdk/android/oss/OSS;->presignPublicObjectURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/cyjh/share/oss/MyOSSUtils;->access$900()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess --> uploadOssUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$callBack:Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;

    iget-object v0, p0, Lcom/cyjh/share/oss/MyOSSUtils$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;->uploadSuc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
