.class public Lcom/lidroid/xutils/http/client/HttpRequest;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpRequest.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field private uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

.field private uriCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 60
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/net/URI;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    .line 66
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/lidroid/xutils/http/client/HttpRequest;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 82
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 182
    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 183
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 176
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    .line 177
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/lidroid/xutils/util/OtherUtils;->getCharsetFromHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    .line 141
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->build(Ljava/nio/charset/Charset;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 90
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    .line 96
    iget-boolean v2, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_2

    .line 97
    iget-object v1, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 103
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 104
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_4
    return-void
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 110
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    .line 116
    iget-boolean v2, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_2

    .line 117
    iget-object v1, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, v1, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 123
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    .line 124
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 126
    instance-of v0, p1, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    if-eqz v0, :cond_4

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    invoke-interface {v0, p2}, Lcom/lidroid/xutils/http/client/entity/UploadEntity;->setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    .line 129
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_5
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1

    .line 156
    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-void
.end method
