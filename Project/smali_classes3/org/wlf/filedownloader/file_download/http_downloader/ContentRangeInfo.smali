.class public Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
.super Ljava/lang/Object;
.source "ContentRangeInfo.java"


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final endPos:J

.field public final startPos:J

.field public final totalLength:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "startPos"    # J
    .param p4, "endPos"    # J
    .param p6, "totalLength"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->contentType:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->startPos:J

    .line 24
    iput-wide p4, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->endPos:J

    .line 25
    iput-wide p6, p0, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;->totalLength:J

    .line 26
    return-void
.end method

.method public static getContentRangeInfo(Ljava/lang/String;)Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    .locals 23
    .param p0, "contentRangeStr"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v12, 0x0

    .line 38
    .local v12, "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    const/16 v16, 0x0

    .line 39
    .local v16, "contentType":Ljava/lang/String;
    const/16 v21, 0x0

    .line 40
    .local v21, "rangeStartPos":Ljava/lang/String;
    const/16 v20, 0x0

    .line 41
    .local v20, "rangeEndPos":Ljava/lang/String;
    const/16 v22, 0x0

    .line 43
    .local v22, "totalLength":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    const-string v3, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 45
    .local v13, "contentRangeStrArrayTemp":[Ljava/lang/String;
    if-eqz v13, :cond_1

    array-length v3, v13

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1

    .line 47
    const/4 v3, 0x0

    aget-object v16, v13, v3

    .line 48
    const/4 v3, 0x1

    aget-object v10, v13, v3

    .line 49
    .local v10, "contentRangeAndLength":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 50
    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "contentRangeAndLengthArrayTemp":[Ljava/lang/String;
    if-eqz v11, :cond_1

    array-length v3, v11

    const/4 v6, 0x2

    if-lt v3, v6, :cond_1

    .line 52
    const/4 v3, 0x0

    aget-object v14, v11, v3

    .line 53
    .local v14, "contentRanges":Ljava/lang/String;
    const-string v3, "-"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "contentRangesArrayTemp":[Ljava/lang/String;
    if-eqz v15, :cond_0

    array-length v3, v15

    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    .line 56
    const/4 v3, 0x0

    aget-object v21, v15, v3

    .line 58
    const/4 v3, 0x1

    aget-object v20, v15, v3

    .line 61
    :cond_0
    const/4 v3, 0x1

    aget-object v22, v11, v3

    .line 68
    .end local v10    # "contentRangeAndLength":Ljava/lang/String;
    .end local v11    # "contentRangeAndLengthArrayTemp":[Ljava/lang/String;
    .end local v13    # "contentRangeStrArrayTemp":[Ljava/lang/String;
    .end local v14    # "contentRanges":Ljava/lang/String;
    .end local v15    # "contentRangesArrayTemp":[Ljava/lang/String;
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 72
    .local v4, "startPos":J
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 73
    .local v18, "endPos":J
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 75
    .local v8, "totalLen":J
    new-instance v2, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x1

    add-long v6, v6, v18

    invoke-direct/range {v2 .. v9}, Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;-><init>(Ljava/lang/String;JJJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v4    # "startPos":J
    .end local v8    # "totalLen":J
    .end local v12    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    .end local v18    # "endPos":J
    .local v2, "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    :goto_0
    return-object v2

    .line 76
    .end local v2    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    .restart local v12    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    :catch_0
    move-exception v17

    .line 77
    .local v17, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move-object v2, v12

    .end local v12    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    .restart local v2    # "contentRangeInfo":Lorg/wlf/filedownloader/file_download/http_downloader/ContentRangeInfo;
    goto :goto_0
.end method
