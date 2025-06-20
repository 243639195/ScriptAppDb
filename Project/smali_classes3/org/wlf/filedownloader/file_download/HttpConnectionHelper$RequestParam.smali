.class public Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;
.super Ljava/lang/Object;
.source "HttpConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/HttpConnectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestParam"
.end annotation


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mConnectTimeout:I

.field private mETag:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModified:Ljava/lang/String;

.field private mRangeEndPos:J

.field private mRangeStartPos:J

.field private mRequestMethod:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    .line 209
    iput-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeStartPos:J

    .line 210
    iput-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeEndPos:J

    .line 213
    const-string v0, "GET"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRequestMethod:Ljava/lang/String;

    .line 217
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mUrl:Ljava/lang/String;

    .line 218
    iput p2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    .line 219
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mCharset:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "rangeStartPos"    # J
    .param p6, "rangeEndPos"    # J
    .param p8, "ETag"    # Ljava/lang/String;
    .param p9, "lastModified"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    .line 209
    iput-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeStartPos:J

    .line 210
    iput-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeEndPos:J

    .line 213
    const-string v0, "GET"

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRequestMethod:Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mUrl:Ljava/lang/String;

    .line 225
    iput p2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    .line 226
    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mCharset:Ljava/lang/String;

    .line 227
    iput-wide p4, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeStartPos:J

    .line 228
    iput-wide p6, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeEndPos:J

    .line 229
    iput-object p8, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mETag:Ljava/lang/String;

    .line 230
    iput-object p9, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mLastModified:Ljava/lang/String;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)I
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    return v0
.end method

.method static synthetic access$300(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J
    .locals 2
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeStartPos:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)J
    .locals 2
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeEndPos:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mETag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mLastModified:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mHeaders:Ljava/util/Map;

    goto :goto_0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRequestMethod:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mUrl:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestParam{mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCharset=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeStartPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeStartPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeEndPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRangeEndPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mETag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mETag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastModified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mLastModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestMethod=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/HttpConnectionHelper$RequestParam;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
