.class public final Lorg/apache/harmony/awt/datatransfer/DataProxy;
.super Ljava/lang/Object;
.source "DataProxy.java"

# interfaces
.implements Ljava/awt/datatransfer/Transferable;


# static fields
.field public static final charsetTextClasses:[Ljava/lang/Class;

.field public static final unicodeTextClasses:[Ljava/lang/Class;


# instance fields
.field private final data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

.field private final flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    .line 63
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/io/Reader;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljava/nio/CharBuffer;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, [C

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 62
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->unicodeTextClasses:[Ljava/lang/Class;

    .line 65
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v2

    const-class v1, Ljava/nio/ByteBuffer;

    aput-object v1, v0, v3

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v0, v4

    .line 64
    sput-object v0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->charsetTextClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DataProvider;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    .line 72
    invoke-static {}, Ljava/awt/datatransfer/SystemFlavorMap;->getDefaultFlavorMap()Ljava/awt/datatransfer/FlavorMap;

    move-result-object p1

    check-cast p1, Ljava/awt/datatransfer/SystemFlavorMap;

    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    return-void
.end method

.method private createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 272
    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 273
    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    if-lez v2, :cond_a

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    if-gtz v2, :cond_0

    goto/16 :goto_4

    .line 280
    :cond_0
    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0x20

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_2

    .line 281
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 284
    :cond_1
    new-array v13, v7, [I

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v2, v13, v5

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v2, v13, v8

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v2, v13, v6

    .line 285
    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v2, [I

    .line 286
    new-instance v3, Ljava/awt/image/DirectColorModel;

    iget v6, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v7, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v8, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 288
    new-instance v9, Ljava/awt/image/DataBufferInt;

    array-length v4, v2

    invoke-direct {v9, v2, v4}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    .line 289
    iget v10, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v11, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v12, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v14, 0x0

    .line 287
    invoke-static/range {v9 .. v14}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    goto/16 :goto_2

    .line 292
    :cond_2
    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    if-ne v2, v4, :cond_5

    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_5

    .line 293
    new-array v11, v7, [I

    fill-array-data v11, :array_0

    .line 295
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    new-array v2, v7, [I

    aput v8, v2, v8

    aput v6, v2, v6

    :goto_0
    move-object/from16 v17, v2

    goto :goto_1

    .line 297
    :cond_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 298
    new-array v2, v7, [I

    aput v6, v2, v5

    aput v8, v2, v8

    goto :goto_0

    .line 302
    :goto_1
    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v2, [B

    .line 303
    new-instance v3, Ljava/awt/image/ComponentColorModel;

    const/16 v4, 0x3e8

    .line 304
    invoke-static {v4}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v9, v3

    .line 303
    invoke-direct/range {v9 .. v15}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    .line 310
    new-instance v12, Ljava/awt/image/DataBufferByte;

    array-length v4, v2

    invoke-direct {v12, v2, v4}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    .line 311
    iget v13, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v14, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v15, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/16 v16, 0x3

    const/16 v18, 0x0

    .line 309
    invoke-static/range {v12 .. v18}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-object v1

    .line 313
    :cond_5
    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_6

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_7

    .line 314
    :cond_6
    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    instance-of v2, v2, [S

    if-eqz v2, :cond_7

    .line 315
    new-array v13, v7, [I

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    aput v2, v13, v5

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    aput v2, v13, v8

    iget v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    aput v2, v13, v6

    .line 316
    iget-object v2, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->buffer:Ljava/lang/Object;

    check-cast v2, [S

    .line 317
    new-instance v3, Ljava/awt/image/DirectColorModel;

    iget v4, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bits:I

    iget v6, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    iget v7, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    iget v8, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    .line 319
    new-instance v9, Ljava/awt/image/DataBufferUShort;

    array-length v4, v2

    invoke-direct {v9, v2, v4}, Ljava/awt/image/DataBufferUShort;-><init>([SI)V

    .line 320
    iget v10, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->width:I

    iget v11, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->height:I

    iget v12, v0, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->stride:I

    const/4 v14, 0x0

    .line 318
    invoke-static/range {v9 .. v14}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    goto :goto_3

    .line 327
    :cond_8
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-direct {v2, v3, v0, v5, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2

    :cond_9
    :goto_3
    return-object v1

    :cond_a
    :goto_4
    return-object v1

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method private getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    .line 215
    invoke-virtual {p1, v0}, Ljava/awt/datatransfer/DataFlavor;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-file-list"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    .line 153
    :cond_0
    iget-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getFileList()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 156
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/html"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getHTML()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "image/x-java-image"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    .line 255
    :cond_0
    iget-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getRawBitmap()Lorg/apache/harmony/awt/datatransfer/RawBitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 258
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->createBufferedImage(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method private getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "text/plain"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/awt/datatransfer/SystemFlavorMap;->encodeDataFlavor(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1, v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getSerializedObject(Ljava/lang/Class;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 204
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    :try_start_0
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    :goto_0
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 223
    :cond_0
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassReader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance p2, Ljava/io/StringReader;

    invoke-direct {p2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 226
    :cond_1
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassCharBuffer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1

    .line 229
    :cond_2
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-array p2, p2, [C

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-object p2

    .line 234
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getCharset(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [B

    if-ne v1, v2, :cond_4

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 239
    :cond_4
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassByteBuffer()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 241
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 243
    :cond_5
    invoke-virtual {p2}, Ljava/awt/datatransfer/DataFlavor;->isRepresentationClassInputStream()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 245
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    .line 247
    :cond_6
    new-instance p1, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {p1, p2}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw p1
.end method

.method private getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/awt/datatransfer/UnsupportedFlavorException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    const-string v1, "application/x-java-url"

    invoke-interface {v0, v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->isNativeFormatAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v0}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    new-instance p1, Ljava/io/IOException;

    const-string v0, "awt.4F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 188
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTextRepresentation(Ljava/lang/String;Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 191
    :cond_3
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method private isBGR(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2

    .line 268
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/high16 v0, 0xff0000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isRGB(Lorg/apache/harmony/awt/datatransfer/RawBitmap;)Z
    .locals 2

    .line 264
    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->rMask:I

    const/high16 v1, 0xff0000

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->gMask:I

    const v1, 0xff00

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/harmony/awt/datatransfer/RawBitmap;->bMask:I

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final getDataProvider()Lorg/apache/harmony/awt/datatransfer/DataProvider;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    return-object v0
.end method

.method public final getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "text/html"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getHTML(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "text/uri-list"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getPlainText(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorJavaFileListType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getFileList(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 95
    :cond_3
    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->isFlavorSerializedObjectType()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getSerializedObject(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :cond_4
    sget-object v1, Lorg/apache/harmony/awt/datatransfer/DataProvider;->urlFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {p1, v1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 99
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getURL(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "image/x-java-image"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const-class v0, Ljava/awt/Image;

    invoke-virtual {p1}, Ljava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getImage(Ljava/awt/datatransfer/DataFlavor;)Ljava/awt/Image;

    move-result-object p1

    return-object p1

    .line 106
    :cond_6
    new-instance v0, Ljava/awt/datatransfer/UnsupportedFlavorException;

    invoke-direct {v0, p1}, Ljava/awt/datatransfer/UnsupportedFlavorException;-><init>(Ljava/awt/datatransfer/DataFlavor;)V

    throw v0
.end method

.method public final getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 6

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->data:Lorg/apache/harmony/awt/datatransfer/DataProvider;

    invoke-interface {v1}, Lorg/apache/harmony/awt/datatransfer/DataProvider;->getNativeFormats()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/awt/datatransfer/DataFlavor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/datatransfer/DataFlavor;

    return-object v0

    .line 114
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/awt/datatransfer/DataProxy;->flavorMap:Ljava/awt/datatransfer/SystemFlavorMap;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/awt/datatransfer/SystemFlavorMap;->getFlavorsForNative(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/awt/datatransfer/DataFlavor;

    .line 117
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z
    .locals 4

    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/awt/datatransfer/DataProxy;->getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return v1

    .line 128
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/awt/datatransfer/DataFlavor;->equals(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
