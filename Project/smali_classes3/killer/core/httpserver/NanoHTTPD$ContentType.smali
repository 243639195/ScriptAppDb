.class public Lkiller/core/httpserver/NanoHTTPD$ContentType;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ContentType"
.end annotation


# static fields
.field private static final ASCII_ENCODING:Ljava/lang/String; = "US-ASCII"

.field private static final BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BOUNDARY_REGEX:Ljava/lang/String; = "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final CHARSET_REGEX:Ljava/lang/String; = "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

.field private static final CONTENT_REGEX:Ljava/lang/String; = "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)"

.field private static final MIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final MULTIPART_FORM_DATA_HEADER:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final contentTypeHeader:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 489
    const-string v0, "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    .line 493
    const-string v0, "[ |\t]*(charset)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    .line 497
    const-string v0, "[ |\t]*(boundary)[ |\t]*=[ |\t]*[\'|\"]?([^\"^\'^;^,]*)[\'|\"]?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "contentTypeHeader"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    .line 509
    if-eqz p1, :cond_0

    .line 510
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->MIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    .line 511
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0, v3, v4}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    .line 516
    :goto_0
    const-string v0, "multipart/form-data"

    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    sget-object v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->BOUNDARY_PATTERN:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0, v3, v4}, Lkiller/core/httpserver/NanoHTTPD$ContentType;->getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    .line 521
    :goto_1
    return-void

    .line 513
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    .line 514
    const-string v0, "UTF-8"

    iput-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_1
    iput-object v3, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    goto :goto_1
.end method

.method private getDetailFromContentHeader(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "contentTypeHeader"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "group"    # I

    .prologue
    .line 524
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 525
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p3
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "US-ASCII"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    goto :goto_0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    .line 545
    const-string v0, "multipart/form-data"

    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public tryUTF8()Lkiller/core/httpserver/NanoHTTPD$ContentType;
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lkiller/core/httpserver/NanoHTTPD$ContentType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkiller/core/httpserver/NanoHTTPD$ContentType;->contentTypeHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkiller/core/httpserver/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 552
    .end local p0    # "this":Lkiller/core/httpserver/NanoHTTPD$ContentType;
    :cond_0
    return-object p0
.end method
