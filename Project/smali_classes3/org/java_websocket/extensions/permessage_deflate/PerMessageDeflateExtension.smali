.class public Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;
.super Lorg/java_websocket/extensions/CompressionExtension;
.source "PerMessageDeflateExtension.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CLIENT_MAX_WINDOW_BITS:Ljava/lang/String; = "client_max_window_bits"

.field private static final CLIENT_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "client_no_context_takeover"

.field private static final EXTENSION_REGISTERED_NAME:Ljava/lang/String; = "permessage-deflate"

.field private static final SERVER_MAX_WINDOW_BITS:Ljava/lang/String; = "server_max_window_bits"

.field private static final SERVER_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "server_no_context_takeover"

.field private static final TAIL_BYTES:[B

.field private static final clientMaxWindowBits:I = 0x8000

.field private static final serverMaxWindowBits:I = 0x8000


# instance fields
.field private clientNoContextTakeover:Z

.field private deflater:Ljava/util/zip/Deflater;

.field private inflater:Ljava/util/zip/Inflater;

.field private requestedParameters:Ljava/util/Map;
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

.field private serverNoContextTakeover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Lorg/java_websocket/extensions/CompressionExtension;-><init>()V

    .line 47
    iput-boolean v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 55
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method private decompress([BLjava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "outputBuffer"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 178
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 181
    .local v0, "buffer":[B
    :goto_0
    iget-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    .local v1, "bytesInflated":I
    if-lez v1, :cond_0

    .line 182
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private static endsWithTail([B)Z
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 238
    array-length v3, p0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    array-length v1, p0

    .line 243
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 244
    sget-object v3, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    aget-byte v3, v3, v0

    sget-object v4, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v4, v4

    sub-int v4, v1, v4

    add-int/2addr v4, v0

    aget-byte v4, p0, v4

    if-ne v3, v4, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptProvidedExtensionAsClient(Ljava/lang/String;)Z
    .locals 9
    .param p1, "inputExtension"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 276
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "requestedExtensions":[Ljava/lang/String;
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v3, v5

    .line 278
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lorg/java_websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lorg/java_websocket/extensions/ExtensionRequestData;

    move-result-object v1

    .line 279
    .local v1, "extensionData":Lorg/java_websocket/extensions/ExtensionRequestData;
    const-string v7, "permessage-deflate"

    invoke-virtual {v1}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v1}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    move-result-object v2

    .line 286
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 289
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "extensionData":Lorg/java_websocket/extensions/ExtensionRequestData;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return v4
.end method

.method public acceptProvidedExtensionAsServer(Ljava/lang/String;)Z
    .locals 10
    .param p1, "inputExtension"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "requestedExtensions":[Ljava/lang/String;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v3, v6

    .line 256
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lorg/java_websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lorg/java_websocket/extensions/ExtensionRequestData;

    move-result-object v1

    .line 257
    .local v1, "extensionData":Lorg/java_websocket/extensions/ExtensionRequestData;
    const-string v8, "permessage-deflate"

    invoke-virtual {v1}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 255
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v1}, Lorg/java_websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    move-result-object v2

    .line 263
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    iget-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v6, "client_no_context_takeover"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    iput-boolean v4, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 271
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "extensionData":Lorg/java_websocket/extensions/ExtensionRequestData;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public copyInstance()Lorg/java_websocket/extensions/IExtension;
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;

    invoke-direct {v0}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;-><init>()V

    return-object v0
.end method

.method public decodeFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 6
    .param p1, "inputFrame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3f0

    const/4 v4, 0x0

    .line 121
    instance-of v2, p1, Lorg/java_websocket/framing/DataFrame;

    if-nez v2, :cond_0

    .line 168
    .end local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    :goto_0
    return-void

    .line 126
    .restart local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v2

    sget-object v3, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    new-instance v2, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v3, "RSV1 bit can only be set for the first frame."

    invoke-direct {v2, v5, v3}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 144
    iget-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 145
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 146
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 149
    :cond_2
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    sget-object v2, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    invoke-direct {p0, v2, v1}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 152
    iget-boolean v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v2, :cond_3

    .line 153
    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v2, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_3
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 162
    check-cast v2, Lorg/java_websocket/framing/DataFrame;

    invoke-virtual {v2, v4}, Lorg/java_websocket/framing/DataFrame;->setRSV1(Z)V

    .line 166
    :cond_4
    check-cast p1, Lorg/java_websocket/framing/FramedataImpl1;

    .line 167
    .end local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v2, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 156
    .restart local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Lorg/java_websocket/exceptions/InvalidDataException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public encodeFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 10
    .param p1, "inputFrame"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 189
    instance-of v5, p1, Lorg/java_websocket/framing/DataFrame;

    if-nez v5, :cond_0

    .line 231
    .end local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    :goto_0
    return-void

    .line 194
    .restart local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    :cond_0
    instance-of v5, p1, Lorg/java_websocket/framing/ContinuousFrame;

    if-nez v5, :cond_1

    move-object v5, p1

    .line 195
    check-cast v5, Lorg/java_websocket/framing/DataFrame;

    invoke-virtual {v5, v9}, Lorg/java_websocket/framing/DataFrame;->setRSV1(Z)V

    .line 198
    :cond_1
    iget-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 200
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 204
    .local v0, "buffer":[B
    :goto_1
    iget-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    array-length v6, v0

    const/4 v7, 0x2

    invoke-virtual {v5, v0, v8, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v1

    .local v1, "bytesCompressed":I
    if-lez v1, :cond_2

    .line 206
    invoke-virtual {v2, v0, v8, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 210
    .local v3, "outputBytes":[B
    array-length v4, v3

    .line 218
    .local v4, "outputLength":I
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    invoke-static {v3}, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->endsWithTail([B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    sget-object v5, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 223
    :cond_3
    iget-boolean v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    if-eqz v5, :cond_4

    .line 224
    iget-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->end()V

    .line 225
    new-instance v5, Ljava/util/zip/Deflater;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v9}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v5, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    .line 230
    :cond_4
    check-cast p1, Lorg/java_websocket/framing/FramedataImpl1;

    .end local p1    # "inputFrame":Lorg/java_websocket/framing/Framedata;
    invoke-static {v3, v8, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public getDeflater()Ljava/util/zip/Deflater;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public getInflater()Ljava/util/zip/Inflater;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    return-object v0
.end method

.method public getProvidedExtensionAsClient()Ljava/lang/String;
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v1, "client_no_context_takeover"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v1, "server_no_context_takeover"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "permessage-deflate; server_no_context_takeover; client_no_context_takeover"

    return-object v0
.end method

.method public getProvidedExtensionAsServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permessage-deflate; server_no_context_takeover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v0, :cond_0

    const-string v0, "; client_no_context_takeover"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isClientNoContextTakeover()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    return v0
.end method

.method public isFrameValid(Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "inputFrame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 319
    instance-of v0, p1, Lorg/java_websocket/framing/TextFrame;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/java_websocket/framing/BinaryFrame;

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v1, "RSV1 bit must be set for DataFrames."

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    instance-of v0, p1, Lorg/java_websocket/framing/ContinuousFrame;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    :cond_2
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad rsv RSV1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_3
    invoke-super {p0, p1}, Lorg/java_websocket/extensions/CompressionExtension;->isFrameValid(Lorg/java_websocket/framing/Framedata;)V

    .line 330
    return-void
.end method

.method public isServerNoContextTakeover()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    return v0
.end method

.method public setClientNoContextTakeover(Z)V
    .locals 0
    .param p1, "clientNoContextTakeover"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 109
    return-void
.end method

.method public setDeflater(Ljava/util/zip/Deflater;)V
    .locals 0
    .param p1, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    .line 71
    return-void
.end method

.method public setInflater(Ljava/util/zip/Inflater;)V
    .locals 0
    .param p1, "inflater"    # Ljava/util/zip/Inflater;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 63
    return-void
.end method

.method public setServerNoContextTakeover(Z)V
    .locals 0
    .param p1, "serverNoContextTakeover"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lorg/java_websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "PerMessageDeflateExtension"

    return-object v0
.end method
