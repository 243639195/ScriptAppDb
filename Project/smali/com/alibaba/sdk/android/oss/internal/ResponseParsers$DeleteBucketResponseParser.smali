.class public final Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;
.super Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ResponseParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteBucketResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser<",
        "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/AbstractResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p2
.end method

.method public bridge synthetic parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/OSSResult;)Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    check-cast p2, Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ResponseParsers$DeleteBucketResponseParser;->parseData(Lokhttp3/Response;Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;

    move-result-object p1

    return-object p1
.end method
