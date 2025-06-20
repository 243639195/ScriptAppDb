.class Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/util/UrlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodeInfo"
.end annotation


# instance fields
.field public final encoded:Ljava/lang/String;

.field public final needEncode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "needEncode"    # Ljava/lang/String;
    .param p2, "encoded"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->needEncode:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lorg/wlf/filedownloader/util/UrlUtil$EncodeInfo;->encoded:Ljava/lang/String;

    .line 604
    return-void
.end method
