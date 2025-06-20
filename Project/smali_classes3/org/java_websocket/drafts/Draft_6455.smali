.class public Lorg/java_websocket/drafts/Draft_6455;
.super Lorg/java_websocket/drafts/Draft;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final SEC_WEB_SOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field private static final SEC_WEB_SOCKET_EXTENSIONS:Ljava/lang/String; = "Sec-WebSocket-Extensions"

.field private static final SEC_WEB_SOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field private static final SEC_WEB_SOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field private static final UPGRADE:Ljava/lang/String; = "Upgrade"


# instance fields
.field private final byteBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

.field private extension:Lorg/java_websocket/extensions/IExtension;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private knownExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation
.end field

.field private knownProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;

.field private maxFrameSize:I

.field private protocol:Lorg/java_websocket/protocols/IProtocol;

.field private final reuseableRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/java_websocket/drafts/Draft_6455;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/drafts/Draft_6455;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/extensions/IExtension;>;"
    new-instance v0, Lorg/java_websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .param p2, "inputMaxFrameSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/extensions/IExtension;>;"
    new-instance v0, Lorg/java_websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/extensions/IExtension;>;"
    .local p2, "inputProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/protocols/IProtocol;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .param p3, "inputMaxFrameSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/extensions/IExtension;>;"
    .local p2, "inputProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/protocols/IProtocol;>;"
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft;-><init>()V

    .line 113
    const-class v2, Lorg/java_websocket/drafts/Draft_6455;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    .line 118
    new-instance v2, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-direct {v2}, Lorg/java_websocket/extensions/DefaultExtension;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    .line 153
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    .line 229
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-ge p3, v2, :cond_1

    .line 230
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 232
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "hasDefault":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/extensions/IExtension;

    .line 237
    .local v1, "inputExtension":Lorg/java_websocket/extensions/IExtension;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "inputExtension":Lorg/java_websocket/extensions/IExtension;
    :cond_3
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    if-nez v0, :cond_4

    .line 244
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 246
    :cond_4
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iput p3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/java_websocket/extensions/IExtension;)V
    .locals 1
    .param p1, "inputExtension"    # Lorg/java_websocket/extensions/IExtension;

    .prologue
    .line 178
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    .line 179
    return-void
.end method

.method private addToBufferList(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "payloadData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1067
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    monitor-exit v1

    .line 1070
    return-void

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkBufferLimit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getByteBufferListSize()J

    move-result-wide v0

    .line 1080
    .local v0, "totalSize":J
    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1081
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->clearBufferList()V

    .line 1082
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v3, "Payload limit reached. Allowed: {} Current: {}"

    iget v4, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1083
    new-instance v2, Lorg/java_websocket/exceptions/LimitExceededException;

    iget v3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v2, v3}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(I)V

    throw v2

    .line 1085
    :cond_0
    return-void
.end method

.method private clearBufferList()V
    .locals 2

    .prologue
    .line 1056
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v1

    .line 1057
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1058
    monitor-exit v1

    .line 1059
    return-void

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;
    .locals 4
    .param p1, "requestedProtocol"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/protocols/IProtocol;

    .line 285
    .local v0, "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    invoke-interface {v0, p1}, Lorg/java_websocket/protocols/IProtocol;->acceptProvidedProtocol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    .line 287
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "acceptHandshake - Matching protocol found: {}"

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    sget-object v1, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 291
    .end local v0    # "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0
.end method

.method private createByteBufferFromFramedata(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 468
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 469
    .local v4, "mes":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lorg/java_websocket/drafts/Draft_6455;->role:Lorg/java_websocket/enums/Role;

    sget-object v10, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    if-ne v9, v10, :cond_3

    const/4 v2, 0x1

    .line 470
    .local v2, "mask":Z
    :goto_0
    invoke-direct {p0, v4}, Lorg/java_websocket/drafts/Draft_6455;->getSizeBytes(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 471
    .local v8, "sizebytes":I
    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    :goto_1
    add-int/lit8 v10, v9, 0x1

    if-eqz v2, :cond_5

    const/4 v9, 0x4

    :goto_2
    add-int/2addr v9, v10

    .line 472
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/2addr v9, v10

    .line 471
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 473
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_6455;->fromOpcode(Lorg/java_websocket/enums/Opcode;)B

    move-result v6

    .line 474
    .local v6, "optcode":B
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, -0x80

    :goto_3
    int-to-byte v5, v9

    .line 475
    .local v5, "one":B
    or-int v9, v5, v6

    int-to-byte v5, v9

    .line 476
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV1()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 477
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v5

    int-to-byte v5, v9

    .line 479
    :cond_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV2()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 480
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v5

    int-to-byte v5, v9

    .line 482
    :cond_1
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isRSV3()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 483
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v5

    int-to-byte v5, v9

    .line 485
    :cond_2
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v10, v9

    invoke-direct {p0, v10, v11, v8}, Lorg/java_websocket/drafts/Draft_6455;->toByteArray(JI)[B

    move-result-object v7

    .line 487
    .local v7, "payloadlengthbytes":[B
    sget-boolean v9, Lorg/java_websocket/drafts/Draft_6455;->$assertionsDisabled:Z

    if-nez v9, :cond_7

    array-length v9, v7

    if-eq v9, v8, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 469
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "mask":Z
    .end local v5    # "one":B
    .end local v6    # "optcode":B
    .end local v7    # "payloadlengthbytes":[B
    .end local v8    # "sizebytes":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "mask":Z
    .restart local v8    # "sizebytes":I
    :cond_4
    move v9, v8

    .line 471
    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 474
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "optcode":B
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 489
    .restart local v5    # "one":B
    .restart local v7    # "payloadlengthbytes":[B
    :cond_7
    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 490
    const/4 v9, 0x0

    aget-byte v9, v7, v9

    invoke-direct {p0, v2}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    :goto_4
    if-eqz v2, :cond_b

    .line 501
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 502
    .local v3, "maskkey":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 503
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 505
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    rem-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 491
    .end local v1    # "i":I
    .end local v3    # "maskkey":Ljava/nio/ByteBuffer;
    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 492
    invoke-direct {p0, v2}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v9

    or-int/lit8 v9, v9, 0x7e

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 494
    :cond_9
    const/16 v9, 0x8

    if-ne v8, v9, :cond_a

    .line 495
    invoke-direct {p0, v2}, Lorg/java_websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v9

    or-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 498
    :cond_a
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Size representation not supported/specified"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 508
    :cond_b
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 512
    :cond_c
    sget-boolean v9, Lorg/java_websocket/drafts/Draft_6455;->$assertionsDisabled:Z

    if-nez v9, :cond_d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(I)V

    throw v9

    .line 513
    :cond_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 514
    return-object v0
.end method

.method private fromOpcode(Lorg/java_websocket/enums/Opcode;)B
    .locals 3
    .param p1, "opcode"    # Lorg/java_websocket/enums/Opcode;

    .prologue
    .line 832
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_0

    .line 833
    const/4 v0, 0x0

    .line 843
    :goto_0
    return v0

    .line 834
    :cond_0
    sget-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_1

    .line 835
    const/4 v0, 0x1

    goto :goto_0

    .line 836
    :cond_1
    sget-object v0, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_2

    .line 837
    const/4 v0, 0x2

    goto :goto_0

    .line 838
    :cond_2
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_3

    .line 839
    const/16 v0, 0x8

    goto :goto_0

    .line 840
    :cond_3
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_4

    .line 841
    const/16 v0, 0x9

    goto :goto_0

    .line 842
    :cond_4
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v0, :cond_5

    .line 843
    const/16 v0, 0xa

    goto :goto_0

    .line 845
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/java_websocket/enums/Opcode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 810
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "seckey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "acc":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 818
    .local v3, "sh1":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 815
    .end local v3    # "sh1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 816
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getByteBufferListSize()J
    .locals 8

    .prologue
    .line 1163
    const-wide/16 v2, 0x0

    .line 1164
    .local v2, "totalSize":J
    iget-object v4, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v4

    .line 1165
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1166
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 1167
    goto :goto_0

    .line 1168
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    monitor-exit v4

    .line 1169
    return-wide v2

    .line 1168
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMaskByte(Z)B
    .locals 1
    .param p1, "mask"    # Z

    .prologue
    .line 682
    if-eqz p1, :cond_0

    const/16 v0, -0x80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 1141
    const-wide/16 v2, 0x0

    .line 1143
    .local v2, "totalSize":J
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v5

    .line 1144
    :try_start_0
    iget-object v4, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1145
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 1146
    goto :goto_0

    .line 1147
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 1148
    long-to-int v4, v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1149
    .local v1, "resultingByteBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lorg/java_websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1150
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1152
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "resultingByteBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "resultingByteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1154
    return-object v1
.end method

.method private getRSVByte(I)B
    .locals 1
    .param p1, "rsv"    # I

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 671
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 665
    :pswitch_0
    const/16 v0, 0x40

    goto :goto_0

    .line 667
    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    .line 669
    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getServerTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 796
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 797
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 799
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 800
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeBytes(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "mes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 692
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 693
    const/4 v0, 0x1

    .line 697
    :goto_0
    return v0

    .line 694
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_1

    .line 695
    const/4 v0, 0x2

    goto :goto_0

    .line 697
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V
    .locals 2
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 949
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Runtime exception during onWebsocketMessage"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V

    .line 951
    return-void
.end method

.method private processFrameBinary(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 935
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    .line 936
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private processFrameClosing(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 6
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    const/4 v5, 0x1

    .line 1032
    const/16 v1, 0x3ed

    .line 1033
    .local v1, "code":I
    const-string v2, ""

    .line 1034
    .local v2, "reason":Ljava/lang/String;
    instance-of v3, p2, Lorg/java_websocket/framing/CloseFrame;

    if-eqz v3, :cond_0

    move-object v0, p2

    .line 1035
    check-cast v0, Lorg/java_websocket/framing/CloseFrame;

    .line 1036
    .local v0, "cf":Lorg/java_websocket/framing/CloseFrame;
    invoke-virtual {v0}, Lorg/java_websocket/framing/CloseFrame;->getCloseCode()I

    move-result v1

    .line 1037
    invoke-virtual {v0}, Lorg/java_websocket/framing/CloseFrame;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1039
    .end local v0    # "cf":Lorg/java_websocket/framing/CloseFrame;
    :cond_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getReadyState()Lorg/java_websocket/enums/ReadyState;

    move-result-object v3

    sget-object v4, Lorg/java_websocket/enums/ReadyState;->CLOSING:Lorg/java_websocket/enums/ReadyState;

    if-ne v3, v4, :cond_1

    .line 1041
    invoke-virtual {p1, v1, v2, v5}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 1050
    :goto_0
    return-void

    .line 1044
    :cond_1
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;

    move-result-object v3

    sget-object v4, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    if-ne v3, v4, :cond_2

    .line 1045
    invoke-virtual {p1, v1, v2, v5}, Lorg/java_websocket/WebSocketImpl;->close(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1047
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/java_websocket/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private processFrameContinuousAndNonFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/enums/Opcode;)V
    .locals 3
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;
    .param p3, "curop"    # Lorg/java_websocket/enums/Opcode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 907
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-eq p3, v0, :cond_1

    .line 908
    invoke-direct {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameIsNotFin(Lorg/java_websocket/framing/Framedata;)V

    .line 917
    :cond_0
    :goto_0
    sget-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p3, v0, :cond_3

    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/java_websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Protocol error: Payload is not UTF8"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 919
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw v0

    .line 909
    :cond_1
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameIsFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 911
    :cond_2
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Protocol error: Continuous frame sequence was not started."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 913
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 922
    :cond_3
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz v0, :cond_4

    .line 923
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 925
    :cond_4
    return-void
.end method

.method private processFrameIsFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 4
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 978
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-nez v1, :cond_0

    .line 979
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "Protocol error: Previous continuous frame sequence not completed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 980
    new-instance v1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v2, 0x3ea

    const-string v3, "Continuous frame sequence was not started."

    invoke-direct {v1, v2, v3}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 983
    :cond_0
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 984
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 985
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    invoke-interface {v1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne v1, v2, :cond_2

    .line 986
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast v1, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 987
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast v1, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-virtual {v1}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    .line 989
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 990
    invoke-interface {v2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-interface {v1, p1, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1005
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->clearBufferList()V

    .line 1006
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 994
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    invoke-interface {v1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v1

    sget-object v2, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne v1, v2, :cond_1

    .line 995
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast v1, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 996
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    check-cast v1, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-virtual {v1}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    .line 998
    :try_start_1
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 999
    invoke-interface {v2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1000
    :catch_1
    move-exception v0

    .line 1001
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private processFrameIsNotFin(Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "frame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Protocol error: Previous continuous frame sequence not completed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1020
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    .line 1021
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 1022
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 1023
    return-void
.end method

.method private processFrameText(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 3
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 962
    :try_start_0
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    .line 963
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/java_websocket/WebSocketListener;->onWebsocketMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lorg/java_websocket/drafts/Draft_6455;->logRuntimeException(Lorg/java_websocket/WebSocketImpl;Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private toByteArray(JI)[B
    .locals 7
    .param p1, "val"    # J
    .param p3, "bytecount"    # I

    .prologue
    .line 822
    new-array v0, p3, [B

    .line 823
    .local v0, "buffer":[B
    mul-int/lit8 v3, p3, 0x8

    add-int/lit8 v1, v3, -0x8

    .line 824
    .local v1, "highest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 825
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v4, p1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_0
    return-object v0
.end method

.method private toOpcode(B)Lorg/java_websocket/enums/Opcode;
    .locals 3
    .param p1, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    .prologue
    .line 849
    packed-switch p1, :pswitch_data_0

    .line 865
    :pswitch_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :pswitch_1
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    .line 862
    :goto_0
    return-object v0

    .line 853
    :pswitch_2
    sget-object v0, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    goto :goto_0

    .line 855
    :pswitch_3
    sget-object v0, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    goto :goto_0

    .line 858
    :pswitch_4
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    goto :goto_0

    .line 860
    :pswitch_5
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    goto :goto_0

    .line 862
    :pswitch_6
    sget-object v0, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;
    .locals 23
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/IncompleteException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 522
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 523
    .local v6, "maxpacketsize":I
    const/4 v7, 0x2

    .line 524
    .local v7, "realpacketsize":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 525
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 526
    .local v8, "b1":B
    shr-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .line 527
    .local v10, "fin":Z
    :goto_0
    and-int/lit8 v2, v8, 0x40

    if-eqz v2, :cond_4

    const/16 v17, 0x1

    .line 528
    .local v17, "rsv1":Z
    :goto_1
    and-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_5

    const/16 v18, 0x1

    .line 529
    .local v18, "rsv2":Z
    :goto_2
    and-int/lit8 v2, v8, 0x10

    if-eqz v2, :cond_6

    const/16 v19, 0x1

    .line 530
    .local v19, "rsv3":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 531
    .local v9, "b2":B
    and-int/lit8 v2, v9, -0x80

    if-eqz v2, :cond_7

    const/4 v13, 0x1

    .line 532
    .local v13, "mask":Z
    :goto_4
    and-int/lit8 v2, v9, 0x7f

    int-to-byte v5, v2

    .line 533
    .local v5, "payloadlength":I
    and-int/lit8 v2, v8, 0xf

    int-to-byte v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/java_websocket/drafts/Draft_6455;->toOpcode(B)Lorg/java_websocket/enums/Opcode;

    move-result-object v4

    .line 535
    .local v4, "optcode":Lorg/java_websocket/enums/Opcode;
    if-ltz v5, :cond_1

    const/16 v2, 0x7d

    if-le v5, v2, :cond_2

    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 536
    invoke-direct/range {v2 .. v7}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Opcode;III)Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    move-result-object v16

    .line 538
    .local v16, "payloadData":Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    invoke-static/range {v16 .. v16}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$000(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v5

    .line 539
    invoke-static/range {v16 .. v16}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$100(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v7

    .line 541
    .end local v16    # "payloadData":Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    :cond_2
    int-to-long v2, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    .line 542
    if-eqz v13, :cond_8

    const/4 v2, 0x4

    :goto_5
    add-int/2addr v7, v2

    .line 543
    add-int/2addr v7, v5

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 546
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 547
    .local v15, "payload":Ljava/nio/ByteBuffer;
    if-eqz v13, :cond_9

    .line 548
    const/4 v2, 0x4

    new-array v14, v2, [B

    .line 549
    .local v14, "maskskey":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 550
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v5, :cond_a

    .line 551
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    rem-int/lit8 v3, v12, 0x4

    aget-byte v3, v14, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 550
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 526
    .end local v4    # "optcode":Lorg/java_websocket/enums/Opcode;
    .end local v5    # "payloadlength":I
    .end local v9    # "b2":B
    .end local v10    # "fin":Z
    .end local v12    # "i":I
    .end local v13    # "mask":Z
    .end local v14    # "maskskey":[B
    .end local v15    # "payload":Ljava/nio/ByteBuffer;
    .end local v17    # "rsv1":Z
    .end local v18    # "rsv2":Z
    .end local v19    # "rsv3":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 527
    .restart local v10    # "fin":Z
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 528
    .restart local v17    # "rsv1":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 529
    .restart local v18    # "rsv2":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 531
    .restart local v9    # "b2":B
    .restart local v19    # "rsv3":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 542
    .restart local v4    # "optcode":Lorg/java_websocket/enums/Opcode;
    .restart local v5    # "payloadlength":I
    .restart local v13    # "mask":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 554
    .restart local v15    # "payload":Ljava/nio/ByteBuffer;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    :cond_a
    invoke-static {v4}, Lorg/java_websocket/framing/FramedataImpl1;->get(Lorg/java_websocket/enums/Opcode;)Lorg/java_websocket/framing/FramedataImpl1;

    move-result-object v11

    .line 559
    .local v11, "frame":Lorg/java_websocket/framing/FramedataImpl1;
    invoke-virtual {v11, v10}, Lorg/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 560
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV1(Z)V

    .line 561
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV2(Z)V

    .line 562
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/java_websocket/framing/FramedataImpl1;->setRSV3(Z)V

    .line 563
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 564
    invoke-virtual {v11, v15}, Lorg/java_websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2, v11}, Lorg/java_websocket/extensions/IExtension;->isFrameValid(Lorg/java_websocket/framing/Framedata;)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2, v11}, Lorg/java_websocket/extensions/IExtension;->decodeFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v20, "afterDecoding({}): {}"

    invoke-virtual {v11}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 569
    invoke-virtual {v11}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-le v2, v0, :cond_c

    const-string v2, "too big to display"

    .line 568
    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    :cond_b
    invoke-virtual {v11}, Lorg/java_websocket/framing/FramedataImpl1;->isValid()V

    .line 573
    return-object v11

    .line 569
    :cond_c
    new-instance v2, Ljava/lang/String;

    .line 570
    invoke-virtual {v11}, Lorg/java_websocket/framing/FramedataImpl1;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method

.method private translateSingleFrameCheckLengthLimit(J)V
    .locals 5
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 626
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Limit exedeed: Payloadsize is to big..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 628
    new-instance v0, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 631
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Payload limit reached. Allowed: {} Current: {}"

    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    new-instance v0, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string v1, "Payload limit reached."

    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 634
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 635
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Limit underflow: Payloadsize is to little..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 636
    new-instance v0, Lorg/java_websocket/exceptions/LimitExceededException;

    const-string v1, "Payloadsize is to little..."

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_2
    return-void
.end method

.method private translateSingleFrameCheckPacketSize(II)V
    .locals 2
    .param p1, "maxpacketsize"    # I
    .param p2, "realpacketsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/IncompleteException;
        }
    .end annotation

    .prologue
    .line 649
    if-ge p1, p2, :cond_0

    .line 650
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v1, "Incomplete frame: maxpacketsize < realpacketsize"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 651
    new-instance v0, Lorg/java_websocket/exceptions/IncompleteException;

    invoke-direct {v0, p2}, Lorg/java_websocket/exceptions/IncompleteException;-><init>(I)V

    throw v0

    .line 653
    :cond_0
    return-void
.end method

.method private translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Opcode;III)Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    .locals 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "optcode"    # Lorg/java_websocket/enums/Opcode;
    .param p3, "oldPayloadlength"    # I
    .param p4, "maxpacketsize"    # I
    .param p5, "oldRealpacketsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;,
            Lorg/java_websocket/exceptions/IncompleteException;,
            Lorg/java_websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 592
    move v4, p3

    .line 593
    .local v4, "payloadlength":I
    move v5, p5

    .line 594
    .local v5, "realpacketsize":I
    sget-object v7, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-eq p2, v7, :cond_0

    sget-object v7, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-eq p2, v7, :cond_0

    sget-object v7, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-ne p2, v7, :cond_1

    .line 595
    :cond_0
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v8, "Invalid frame: more than 125 octets"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 596
    new-instance v7, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v8, "more than 125 octets"

    invoke-direct {v7, v8}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 598
    :cond_1
    const/16 v7, 0x7e

    if-ne v4, v7, :cond_2

    .line 599
    add-int/lit8 v5, v5, 0x2

    .line 600
    invoke-direct {p0, p4, v5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 601
    const/4 v7, 0x3

    new-array v6, v7, [B

    .line 602
    .local v6, "sizebytes":[B
    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v6, v7

    .line 603
    const/4 v7, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    aput-byte v8, v6, v7

    .line 604
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 616
    .end local v6    # "sizebytes":[B
    :goto_0
    new-instance v7, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    invoke-direct {v7, p0, v4, v5}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;-><init>(Lorg/java_websocket/drafts/Draft_6455;II)V

    return-object v7

    .line 606
    :cond_2
    add-int/lit8 v5, v5, 0x8

    .line 607
    invoke-direct {p0, p4, v5}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 608
    new-array v0, v8, [B

    .line 609
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v8, :cond_3

    .line 610
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v0, v1

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 612
    :cond_3
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 613
    .local v2, "length":J
    invoke-direct {p0, v2, v3}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    .line 614
    long-to-int v4, v2

    goto :goto_0
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .locals 9
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p2}, Lorg/java_websocket/drafts/Draft_6455;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 298
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v7, "acceptHandshakeAsClient - Missing/wrong upgrade or connection in handshake."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 299
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 331
    :goto_0
    return-object v6

    .line 301
    :cond_0
    const-string v6, "Sec-WebSocket-Key"

    invoke-interface {p1, v6}, Lorg/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Sec-WebSocket-Accept"

    .line 302
    invoke-interface {p2, v6}, Lorg/java_websocket/handshake/ServerHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 303
    :cond_1
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v7, "acceptHandshakeAsClient - Missing Sec-WebSocket-Key or Sec-WebSocket-Accept"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 304
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0

    .line 307
    :cond_2
    const-string v6, "Sec-WebSocket-Accept"

    invoke-interface {p2, v6}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "seckeyAnswer":Ljava/lang/String;
    const-string v6, "Sec-WebSocket-Key"

    invoke-interface {p1, v6}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "seckeyChallenge":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/java_websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 312
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v7, "acceptHandshakeAsClient - Wrong key for Sec-WebSocket-Key."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 313
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0

    .line 315
    :cond_3
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 316
    .local v0, "extensionState":Lorg/java_websocket/enums/HandshakeState;
    const-string v6, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v6}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "requestedExtension":Ljava/lang/String;
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/extensions/IExtension;

    .line 318
    .local v1, "knownExtension":Lorg/java_websocket/extensions/IExtension;
    invoke-interface {v1, v3}, Lorg/java_websocket/extensions/IExtension;->acceptProvidedExtensionAsClient(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 319
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    .line 320
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 321
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v7, "acceptHandshakeAsClient - Matching extension found: {}"

    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .end local v1    # "knownExtension":Lorg/java_websocket/extensions/IExtension;
    :cond_5
    const-string v6, "Sec-WebSocket-Protocol"

    .line 326
    invoke-interface {p2, v6}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-direct {p0, v6}, Lorg/java_websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object v2

    .line 327
    .local v2, "protocolState":Lorg/java_websocket/enums/HandshakeState;
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v2, v6, :cond_6

    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v0, v6, :cond_6

    .line 328
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0

    .line 330
    :cond_6
    iget-object v6, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v7, "acceptHandshakeAsClient - No matching extension or protocol found."

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 331
    sget-object v6, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto/16 :goto_0
.end method

.method public acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .locals 8
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->readVersion(Lorg/java_websocket/handshake/Handshakedata;)I

    move-result v4

    .line 254
    .local v4, "v":I
    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 255
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v6, "acceptHandshakeAsServer - Wrong websocket version."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 256
    sget-object v5, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 274
    :goto_0
    return-object v5

    .line 258
    :cond_0
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 259
    .local v0, "extensionState":Lorg/java_websocket/enums/HandshakeState;
    const-string v5, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v5}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "requestedExtension":Ljava/lang/String;
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/extensions/IExtension;

    .line 261
    .local v1, "knownExtension":Lorg/java_websocket/extensions/IExtension;
    invoke-interface {v1, v3}, Lorg/java_websocket/extensions/IExtension;->acceptProvidedExtensionAsServer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    .line 263
    sget-object v0, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    .line 264
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v6, "acceptHandshakeAsServer - Matching extension found: {}"

    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    .end local v1    # "knownExtension":Lorg/java_websocket/extensions/IExtension;
    :cond_2
    const-string v5, "Sec-WebSocket-Protocol"

    .line 269
    invoke-interface {p1, v5}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-direct {p0, v5}, Lorg/java_websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lorg/java_websocket/enums/HandshakeState;

    move-result-object v2

    .line 270
    .local v2, "protocolState":Lorg/java_websocket/enums/HandshakeState;
    sget-object v5, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v2, v5, :cond_3

    sget-object v5, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    if-ne v0, v5, :cond_3

    .line 271
    sget-object v5, Lorg/java_websocket/enums/HandshakeState;->MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0

    .line 273
    :cond_3
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v6, "acceptHandshakeAsServer - No matching extension or protocol found."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 274
    sget-object v5, Lorg/java_websocket/enums/HandshakeState;->NOT_MATCHED:Lorg/java_websocket/enums/HandshakeState;

    goto :goto_0
.end method

.method public copyInstance()Lorg/java_websocket/drafts/Draft;
    .locals 6

    .prologue
    .line 445
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v2, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/java_websocket/extensions/IExtension;>;"
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getKnownExtensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/extensions/IExtension;

    .line 447
    .local v0, "knownExtension":Lorg/java_websocket/extensions/IExtension;
    invoke-interface {v0}, Lorg/java_websocket/extensions/IExtension;->copyInstance()Lorg/java_websocket/extensions/IExtension;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v0    # "knownExtension":Lorg/java_websocket/extensions/IExtension;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v3, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/java_websocket/protocols/IProtocol;>;"
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getKnownProtocols()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/protocols/IProtocol;

    .line 451
    .local v1, "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    invoke-interface {v1}, Lorg/java_websocket/protocols/IProtocol;->copyInstance()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    .end local v1    # "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    :cond_1
    new-instance v4, Lorg/java_websocket/drafts/Draft_6455;

    iget v5, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v4, v2, v3, v5}, Lorg/java_websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v4
.end method

.method public createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 458
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/java_websocket/extensions/IExtension;->encodeFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 459
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "afterEnconding({}): {}"

    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 461
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v4, 0x3e8

    if-le v0, v4, :cond_1

    const-string v0, "too big to display"

    .line 460
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    :cond_0
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->createByteBufferFromFramedata(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 462
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    new-instance v0, Lorg/java_websocket/framing/TextFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/TextFrame;-><init>()V

    .line 770
    .local v0, "curframe":Lorg/java_websocket/framing/TextFrame;
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/java_websocket/framing/TextFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 771
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/TextFrame;->setTransferemasked(Z)V

    .line 773
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/framing/TextFrame;->isValid()V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 3
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    new-instance v0, Lorg/java_websocket/framing/BinaryFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/BinaryFrame;-><init>()V

    .line 757
    .local v0, "curframe":Lorg/java_websocket/framing/BinaryFrame;
    invoke-virtual {v0, p1}, Lorg/java_websocket/framing/BinaryFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 758
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/BinaryFrame;->setTransferemasked(Z)V

    .line 760
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/framing/BinaryFrame;->isValid()V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1107
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 1122
    :cond_0
    :goto_0
    return v2

    .line 1110
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 1114
    check-cast v0, Lorg/java_websocket/drafts/Draft_6455;

    .line 1116
    .local v0, "that":Lorg/java_websocket/drafts/Draft_6455;
    iget v3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getMaxFrameSize()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1119
    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1122
    :cond_2
    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    .line 1119
    :cond_4
    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1122
    :cond_5
    invoke-virtual {v0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;
    .locals 1

    .prologue
    .line 1089
    sget-object v0, Lorg/java_websocket/enums/CloseHandshakeType;->TWOWAY:Lorg/java_websocket/enums/CloseHandshakeType;

    return-object v0
.end method

.method public getExtension()Lorg/java_websocket/extensions/IExtension;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    return-object v0
.end method

.method public getKnownExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getKnownProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getMaxFrameSize()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    return v0
.end method

.method public getProtocol()Lorg/java_websocket/protocols/IProtocol;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1128
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 1129
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    iget v3, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1130
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 1127
    goto :goto_0
.end method

.method public postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 7
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshakeBuilder;

    .prologue
    .line 386
    const-string v5, "Upgrade"

    const-string v6, "websocket"

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v5, "Connection"

    const-string v6, "Upgrade"

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v5, 0x10

    new-array v2, v5, [B

    .line 389
    .local v2, "random":[B
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->reuseableRandom:Ljava/security/SecureRandom;

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 390
    const-string v5, "Sec-WebSocket-Key"

    invoke-static {v2}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v5, "Sec-WebSocket-Version"

    const-string v6, "13"

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v3, "requestedExtensions":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/extensions/IExtension;

    .line 394
    .local v0, "knownExtension":Lorg/java_websocket/extensions/IExtension;
    invoke-interface {v0}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 395
    invoke-interface {v0}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 397
    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_1
    invoke-interface {v0}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 402
    .end local v0    # "knownExtension":Lorg/java_websocket/extensions/IExtension;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    const-string v5, "Sec-WebSocket-Extensions"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v4, "requestedProtocols":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/java_websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/protocols/IProtocol;

    .line 407
    .local v1, "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    invoke-interface {v1}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 408
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 409
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_5
    invoke-interface {v1}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 414
    .end local v1    # "knownProtocol":Lorg/java_websocket/protocols/IProtocol;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 415
    const-string v5, "Sec-WebSocket-Protocol"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_7
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 3
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 423
    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "Connection"

    const-string v2, "Connection"

    .line 425
    invoke-interface {p1, v2}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "seckey":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    :cond_0
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "missing Sec-WebSocket-Key"

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_1
    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v1

    invoke-interface {v1}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    const-string v1, "Sec-WebSocket-Extensions"

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_2
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v1

    invoke-interface {v1}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v2

    invoke-interface {v2}, Lorg/java_websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_3
    const-string v1, "Web Socket Protocol Handshake"

    invoke-interface {p2, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 438
    const-string v1, "Server"

    const-string v2, "TooTallNate Java-WebSocket"

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "Date"

    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455;->getServerTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-object p2
.end method

.method public processFrame(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .locals 4
    .param p1, "webSocketImpl"    # Lorg/java_websocket/WebSocketImpl;
    .param p2, "frame"    # Lorg/java_websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3ea

    .line 872
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v0

    .line 873
    .local v0, "curop":Lorg/java_websocket/enums/Opcode;
    sget-object v1, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_0

    .line 874
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameClosing(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    .line 895
    :goto_0
    return-void

    .line 875
    :cond_0
    sget-object v1, Lorg/java_websocket/enums/Opcode;->PING:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_1

    .line 876
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketPing(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 877
    :cond_1
    sget-object v1, Lorg/java_websocket/enums/Opcode;->PONG:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_2

    .line 878
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->updateLastPong()V

    .line 879
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getWebSocketListener()Lorg/java_websocket/WebSocketListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/java_websocket/WebSocketListener;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 880
    :cond_2
    invoke-interface {p2}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/java_websocket/enums/Opcode;->CONTINUOUS:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_4

    .line 881
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lorg/java_websocket/drafts/Draft_6455;->processFrameContinuousAndNonFin(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;Lorg/java_websocket/enums/Opcode;)V

    goto :goto_0

    .line 882
    :cond_4
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->currentContinuousFrame:Lorg/java_websocket/framing/Framedata;

    if-eqz v1, :cond_5

    .line 883
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "Protocol error: Continuous frame sequence not completed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 884
    new-instance v1, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v2, "Continuous frame sequence not completed."

    invoke-direct {v1, v3, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 886
    :cond_5
    sget-object v1, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_6

    .line 887
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameText(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 888
    :cond_6
    sget-object v1, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne v0, v1, :cond_7

    .line 889
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/drafts/Draft_6455;->processFrameBinary(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 891
    :cond_7
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->log:Lorg/slf4j/Logger;

    const-string v2, "non control or continious frame expected"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 892
    new-instance v1, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v2, "non control or continious frame expected"

    invoke-direct {v1, v3, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 782
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 783
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    invoke-interface {v0}, Lorg/java_websocket/extensions/IExtension;->reset()V

    .line 786
    :cond_0
    new-instance v0, Lorg/java_websocket/extensions/DefaultExtension;

    invoke-direct {v0}, Lorg/java_websocket/extensions/DefaultExtension;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_6455;->extension:Lorg/java_websocket/extensions/IExtension;

    .line 787
    iput-object v1, p0, Lorg/java_websocket/drafts/Draft_6455;->protocol:Lorg/java_websocket/protocols/IProtocol;

    .line 788
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1094
    invoke-super {p0}, Lorg/java_websocket/drafts/Draft;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getExtension()Lorg/java_websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2}, Lorg/java_websocket/extensions/IExtension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/java_websocket/drafts/Draft_6455;->getProtocol()Lorg/java_websocket/protocols/IProtocol;

    move-result-object v2

    invoke-interface {v2}, Lorg/java_websocket/protocols/IProtocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max frame size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/java_websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    return-object v0
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 703
    :goto_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 705
    .local v5, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_2

    .line 708
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 709
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 710
    .local v0, "availableNextByteCount":I
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 713
    .local v3, "expectedNextByteCount":I
    if-le v3, v0, :cond_1

    .line 715
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 716
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 750
    .end local v0    # "availableNextByteCount":I
    .end local v3    # "expectedNextByteCount":I
    .end local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_0
    :goto_1
    return-object v5

    .line 719
    .restart local v0    # "availableNextByteCount":I
    .restart local v3    # "expectedNextByteCount":I
    .restart local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_1
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v7, v8, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 720
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 721
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v7}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 722
    .local v1, "cur":Lorg/java_websocket/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/java_websocket/exceptions/IncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 736
    .end local v0    # "availableNextByteCount":I
    .end local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    .end local v3    # "expectedNextByteCount":I
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 737
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 739
    :try_start_1
    invoke-direct {p0, p1}, Lorg/java_websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 740
    .restart local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/java_websocket/exceptions/IncompleteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 741
    .end local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Lorg/java_websocket/exceptions/IncompleteException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 744
    invoke-virtual {v2}, Lorg/java_websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v6

    .line 745
    .local v6, "pref":I
    invoke-virtual {p0, v6}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 746
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 724
    .end local v2    # "e":Lorg/java_websocket/exceptions/IncompleteException;
    .end local v6    # "pref":I
    :catch_1
    move-exception v2

    .line 726
    .restart local v2    # "e":Lorg/java_websocket/exceptions/IncompleteException;
    invoke-virtual {v2}, Lorg/java_websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/java_websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 727
    .local v4, "extendedframe":Ljava/nio/ByteBuffer;
    sget-boolean v7, Lorg/java_websocket/drafts/Draft_6455;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-gt v7, v8, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 728
    :cond_3
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 729
    iget-object v7, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 730
    iput-object v4, p0, Lorg/java_websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method
