.class public Lorg/wlf/filedownloader/DownloadFileInfo;
.super Lorg/wlf/filedownloader/base/BaseUrlFileInfo;
.source "DownloadFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/DownloadFileInfo$Table;
    }
.end annotation


# static fields
.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = "temp"


# instance fields
.field private mDownloadedSize:J

.field private mId:Ljava/lang/Integer;

.field private mStatus:I

.field private mTempFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;)V
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;-><init>()V

    .line 157
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 187
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v17

    if-nez v17, :cond_d

    .line 188
    const/4 v12, -0x1

    .line 189
    .local v12, "id":I
    const/16 v16, 0x0

    .line 190
    .local v16, "url":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 191
    .local v6, "downloadedSize":J
    const-wide/16 v10, 0x0

    .line 192
    .local v10, "fileSize":J
    const/4 v5, 0x0

    .line 193
    .local v5, "eTag":Ljava/lang/String;
    const/4 v13, 0x0

    .line 194
    .local v13, "lastModified":Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, "acceptRangeType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 196
    .local v8, "fileDir":Ljava/lang/String;
    const/4 v15, 0x0

    .line 197
    .local v15, "tempFileName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 198
    .local v9, "fileName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 199
    .local v14, "status":I
    const/4 v4, 0x0

    .line 201
    .local v4, "createDatetime":Ljava/lang/String;
    const/4 v3, -0x1

    .line 202
    .local v3, "columnIndex":I
    const-string v17, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 203
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    .line 204
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 206
    :cond_0
    const-string v17, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 207
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_1

    .line 208
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 210
    :cond_1
    const-string v17, "downloaded_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 211
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_2

    .line 212
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 214
    :cond_2
    const-string v17, "file_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 215
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_3

    .line 216
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 218
    :cond_3
    const-string v17, "e_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 219
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_4

    .line 220
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    :cond_4
    const-string v17, "last_modified"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 223
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_5

    .line 224
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 226
    :cond_5
    const-string v17, "accept_range_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 227
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_6

    .line 228
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_6
    const-string v17, "file_dir"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 231
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_7

    .line 232
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 234
    :cond_7
    const-string v17, "temp_file_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 235
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_8

    .line 236
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 238
    :cond_8
    const-string v17, "file_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 239
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9

    .line 240
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 242
    :cond_9
    const-string v17, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 243
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_a

    .line 244
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 246
    :cond_a
    const-string v17, "create_datetime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 247
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_b

    .line 248
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 250
    :cond_b
    if-lez v12, :cond_c

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 252
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    .line 253
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    .line 255
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    .line 256
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    .line 257
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    .line 259
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    .line 260
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    .line 261
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p0

    iput v14, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 263
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    .line 270
    return-void

    .line 265
    :cond_c
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "id or url from cursor illegal!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 268
    .end local v2    # "acceptRangeType":Ljava/lang/String;
    .end local v3    # "columnIndex":I
    .end local v4    # "createDatetime":Ljava/lang/String;
    .end local v5    # "eTag":Ljava/lang/String;
    .end local v6    # "downloadedSize":J
    .end local v8    # "fileDir":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "fileSize":J
    .end local v12    # "id":I
    .end local v13    # "lastModified":Ljava/lang/String;
    .end local v14    # "status":I
    .end local v15    # "tempFileName":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    :cond_d
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "cursor illegal!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method constructor <init>(Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;)V
    .locals 2
    .param p1, "detectUrlFileInfo"    # Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;

    .prologue
    .line 168
    invoke-direct {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;-><init>()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 169
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileSizeLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    .line 172
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getETag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getAcceptRangeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lorg/wlf/filedownloader/file_download/DetectUrlFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/wlf/filedownloader/util/DateUtil;->date2String_yyyy_MM_dd_HH_mm_ss(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 337
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    instance-of v1, p1, Lorg/wlf/filedownloader/DownloadFileInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lorg/wlf/filedownloader/DownloadFileInfo;

    .line 340
    .local v0, "other":Lorg/wlf/filedownloader/DownloadFileInfo;
    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    iget-object v2, v0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 343
    .end local v0    # "other":Lorg/wlf/filedownloader/DownloadFileInfo;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 321
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "url"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "downloaded_size"

    iget-wide v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string v1, "file_size"

    iget-wide v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v1, "e_tag"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "last_modified"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "accept_range_type"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "file_dir"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "temp_file_name"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "file_name"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "status"

    iget v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "create_datetime"

    iget-object v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-object v0
.end method

.method public getDownloadedSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 410
    iget-wide v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    long-to-int v0, v0

    return v0
.end method

.method public getDownloadedSizeLong()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    return v0
.end method

.method public getTempFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/wlf/filedownloader/DownloadFileInfo;->getFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method setDownloadedSize(J)V
    .locals 1
    .param p1, "downloadedSize"    # J

    .prologue
    .line 367
    iput-wide p1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    .line 368
    return-void
.end method

.method setFileDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileDir"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    .line 382
    return-void
.end method

.method setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 389
    return-void
.end method

.method setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    .line 361
    return-void
.end method

.method setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 374
    iput p1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadFileInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTempFileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/wlf/filedownloader/base/BaseUrlFileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 6
    .param p1, "downloadFileInfo"    # Lorg/wlf/filedownloader/DownloadFileInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 278
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mId:Ljava/lang/Integer;

    .line 281
    :cond_0
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mUrl:Ljava/lang/String;

    .line 284
    :cond_1
    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    iget-wide v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 285
    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    iput-wide v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mDownloadedSize:J

    .line 287
    :cond_2
    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    iget-wide v2, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 288
    iget-wide v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    iput-wide v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileSize:J

    .line 290
    :cond_3
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mETag:Ljava/lang/String;

    .line 293
    :cond_4
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 294
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mLastModified:Ljava/lang/String;

    .line 296
    :cond_5
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 297
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mAcceptRangeType:Ljava/lang/String;

    .line 299
    :cond_6
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    invoke-static {v0}, Lorg/wlf/filedownloader/util/FileUtil;->isFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileDir:Ljava/lang/String;

    .line 302
    :cond_7
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 303
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mTempFileName:Ljava/lang/String;

    .line 305
    :cond_8
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 306
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mFileName:Ljava/lang/String;

    .line 308
    :cond_9
    iget v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    iget v1, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    if-eq v0, v1, :cond_a

    .line 309
    iget v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    iput v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mStatus:I

    .line 311
    :cond_a
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 312
    iget-object v0, p1, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadFileInfo;->mCreateDatetime:Ljava/lang/String;

    .line 314
    :cond_b
    return-void
.end method
