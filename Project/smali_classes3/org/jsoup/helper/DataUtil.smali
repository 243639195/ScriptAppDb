.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$BomCharset;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field static final boundaryLength:I = 0x20

.field static final bufferSize:I = 0x8000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharsetName:Ljava/lang/String;

.field private static final firstReadBufferSize:I = 0x1400

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 43
    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 46
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const v2, 0x8000

    new-array v0, v2, [B

    .line 132
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;
    .locals 9
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    move-object v1, p0

    .line 301
    .local v1, "buffer":Ljava/nio/Buffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 302
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 303
    .local v0, "bom":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 307
    :cond_0
    aget-byte v2, v0, v4

    if-nez v2, :cond_1

    aget-byte v2, v0, v5

    if-nez v2, :cond_1

    aget-byte v2, v0, v8

    if-ne v2, v6, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-eq v2, v7, :cond_2

    :cond_1
    aget-byte v2, v0, v4

    if-ne v2, v7, :cond_3

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_3

    aget-byte v2, v0, v8

    if-nez v2, :cond_3

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_3

    .line 309
    :cond_2
    new-instance v2, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v3, "UTF-32"

    invoke-direct {v2, v3, v4}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    .line 317
    :goto_0
    return-object v2

    .line 310
    :cond_3
    aget-byte v2, v0, v4

    if-ne v2, v6, :cond_4

    aget-byte v2, v0, v5

    if-eq v2, v7, :cond_5

    :cond_4
    aget-byte v2, v0, v4

    if-ne v2, v7, :cond_6

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_6

    .line 312
    :cond_5
    new-instance v2, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v3, "UTF-16"

    invoke-direct {v2, v3, v4}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 313
    :cond_6
    aget-byte v2, v0, v4

    const/16 v3, -0x11

    if-ne v2, v3, :cond_7

    aget-byte v2, v0, v5

    const/16 v3, -0x45

    if-ne v2, v3, :cond_7

    aget-byte v2, v0, v8

    const/16 v3, -0x41

    if-ne v2, v3, :cond_7

    .line 314
    new-instance v2, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v3, "UTF-8"

    invoke-direct {v2, v3, v5}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 317
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    if-nez p0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v2

    .line 265
    :cond_1
    sget-object v3, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 266
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "charset":Ljava/lang/String;
    const-string v2, "charset="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "name":Ljava/lang/String;
    const-string v3, ".gz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".z"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0x8b

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 90
    .local v2, "zipped":Z
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    if-eqz v2, :cond_3

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    .end local v2    # "zipped":Z
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    invoke-static {v1, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    return-object v3

    .line 88
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 92
    throw v3

    .line 93
    .restart local v2    # "zipped":Z
    :cond_3
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_1
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 5

    .prologue
    .line 291
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    .local v1, "mime":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 293
    .local v2, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    .line 294
    sget-object v3, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    sget-object v4, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 24
    .param p0, "input"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "charsetName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v9, Lorg/jsoup/nodes/Document;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 236
    :goto_0
    return-object v9

    .line 140
    :cond_0
    const v20, 0x8000

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    .line 142
    const/4 v9, 0x0

    .line 146
    .local v9, "doc":Lorg/jsoup/nodes/Document;
    const v20, 0x8000

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 147
    const/16 v20, 0x13ff

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 148
    .local v12, "firstBytes":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    .line 149
    .local v14, "fullyRead":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 152
    invoke-static {v12}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;

    move-result-object v4

    .line 153
    .local v4, "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    if-eqz v4, :cond_1

    .line 154
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 156
    :cond_1
    if-nez p1, :cond_11

    .line 158
    :try_start_1
    sget-object v20, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 159
    .local v8, "defaultDecoded":Ljava/nio/CharBuffer;
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 160
    new-instance v20, Ljava/io/CharArrayReader;

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v21

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v22

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->limit()I

    move-result v23

    invoke-direct/range {v20 .. v23}, Ljava/io/CharArrayReader;-><init>([CII)V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    :try_end_1
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 168
    :goto_2
    :try_start_2
    const-string v20, "meta[http-equiv=content-type], meta[charset]"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v16

    .line 169
    .local v16, "metaElements":Lorg/jsoup/select/Elements;
    const/4 v13, 0x0

    .line 170
    .local v13, "foundCharset":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 171
    .local v15, "meta":Lorg/jsoup/nodes/Element;
    const-string v21, "http-equiv"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 172
    const-string v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 173
    :cond_3
    if-nez v13, :cond_4

    const-string v21, "charset"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 174
    const-string v21, "charset"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 175
    :cond_4
    if-eqz v13, :cond_2

    .line 180
    .end local v15    # "meta":Lorg/jsoup/nodes/Element;
    :cond_5
    if-nez v13, :cond_7

    invoke-virtual {v9}, Lorg/jsoup/nodes/Document;->childNodeSize()I

    move-result v20

    if-lez v20, :cond_7

    .line 181
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/Document;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v11

    .line 182
    .local v11, "first":Lorg/jsoup/nodes/Node;
    const/4 v7, 0x0

    .line 183
    .local v7, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    instance-of v0, v11, Lorg/jsoup/nodes/XmlDeclaration;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 184
    move-object v0, v11

    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    move-object v7, v0

    .line 190
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 191
    invoke-virtual {v7}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v20

    const-string v21, "xml"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 192
    const-string v20, "encoding"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    .end local v7    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .end local v11    # "first":Lorg/jsoup/nodes/Node;
    :cond_7
    invoke-static {v13}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 196
    if-eqz v13, :cond_10

    sget-object v20, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 197
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, "[\"\']"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 198
    move-object/from16 p1, v13

    .line 199
    const/4 v9, 0x0

    .line 206
    .end local v8    # "defaultDecoded":Ljava/nio/CharBuffer;
    .end local v13    # "foundCharset":Ljava/lang/String;
    .end local v16    # "metaElements":Lorg/jsoup/select/Elements;
    :cond_8
    :goto_4
    if-nez v9, :cond_c

    .line 207
    if-nez p1, :cond_9

    .line 208
    sget-object p1, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 209
    :cond_9
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const v21, 0x8000

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .local v17, "reader":Ljava/io/BufferedReader;
    if-eqz v4, :cond_a

    :try_start_3
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 212
    const-wide/16 v20, 0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v18

    .line 213
    .local v18, "skipped":J
    const-wide/16 v20, 0x1

    cmp-long v20, v18, v20

    if-nez v20, :cond_12

    const/16 v20, 0x1

    :goto_5
    invoke-static/range {v20 .. v20}, Lorg/jsoup/helper/Validate;->isTrue(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    .end local v18    # "skipped":J
    :cond_a
    :try_start_4
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    :try_end_4
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    .line 221
    :try_start_5
    sget-object v20, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    sget-object v5, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 222
    .local v5, "charset":Ljava/nio/charset/Charset;
    :goto_6
    invoke-virtual {v9}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 223
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v20

    if-nez v20, :cond_b

    .line 225
    sget-object v20, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 229
    :cond_b
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    .end local v5    # "charset":Ljava/nio/charset/Charset;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 148
    .end local v4    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .end local v14    # "fullyRead":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 162
    .restart local v4    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .restart local v8    # "defaultDecoded":Ljava/nio/CharBuffer;
    .restart local v14    # "fullyRead":Z
    :cond_e
    :try_start_7
    invoke-virtual {v8}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    :try_end_7
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    goto/16 :goto_2

    .line 163
    .end local v8    # "defaultDecoded":Ljava/nio/CharBuffer;
    :catch_0
    move-exception v10

    .line 164
    .local v10, "e":Lorg/jsoup/UncheckedIOException;
    :try_start_8
    invoke-virtual {v10}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object v20

    throw v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 234
    .end local v4    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .end local v10    # "e":Lorg/jsoup/UncheckedIOException;
    .end local v12    # "firstBytes":Ljava/nio/ByteBuffer;
    .end local v14    # "fullyRead":Z
    :catchall_0
    move-exception v20

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 235
    throw v20

    .line 185
    .restart local v4    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .restart local v7    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .restart local v8    # "defaultDecoded":Ljava/nio/CharBuffer;
    .restart local v11    # "first":Lorg/jsoup/nodes/Node;
    .restart local v12    # "firstBytes":Ljava/nio/ByteBuffer;
    .restart local v13    # "foundCharset":Ljava/lang/String;
    .restart local v14    # "fullyRead":Z
    .restart local v16    # "metaElements":Lorg/jsoup/select/Elements;
    :cond_f
    :try_start_9
    instance-of v0, v11, Lorg/jsoup/nodes/Comment;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 186
    move-object v0, v11

    check-cast v0, Lorg/jsoup/nodes/Comment;

    move-object v6, v0

    .line 187
    .local v6, "comment":Lorg/jsoup/nodes/Comment;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 188
    invoke-virtual {v6}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v7

    goto/16 :goto_3

    .line 200
    .end local v6    # "comment":Lorg/jsoup/nodes/Comment;
    .end local v7    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    .end local v11    # "first":Lorg/jsoup/nodes/Node;
    :cond_10
    if-nez v14, :cond_8

    .line 201
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 204
    .end local v8    # "defaultDecoded":Ljava/nio/CharBuffer;
    .end local v13    # "foundCharset":Ljava/lang/String;
    .end local v16    # "metaElements":Lorg/jsoup/select/Elements;
    :cond_11
    const-string v20, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 213
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v18    # "skipped":J
    :cond_12
    const/16 v20, 0x0

    goto :goto_5

    .line 217
    .end local v18    # "skipped":J
    :catch_1
    move-exception v10

    .line 219
    .restart local v10    # "e":Lorg/jsoup/UncheckedIOException;
    :try_start_a
    invoke-virtual {v10}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    move-result-object v20

    throw v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 229
    .end local v10    # "e":Lorg/jsoup/UncheckedIOException;
    :catchall_1
    move-exception v20

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 230
    throw v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 221
    :cond_13
    :try_start_c
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v5

    goto :goto_6
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "maxSize must be 0 (unlimited) or larger"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 249
    const v1, 0x8000

    invoke-static {p0, v1, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object v0

    .line 250
    .local v0, "input":Lorg/jsoup/internal/ConstrainableInputStream;
    invoke-virtual {v0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->readToByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 248
    .end local v0    # "input":Lorg/jsoup/internal/ConstrainableInputStream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object p0, v0

    .line 284
    .end local p0    # "cs":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 276
    .restart local p0    # "cs":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\"\']"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    move-object p0, v0

    .line 284
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    goto :goto_1
.end method
