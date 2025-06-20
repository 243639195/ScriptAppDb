.class public abstract Lorg/java_websocket/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# instance fields
.field protected continuousFrameType:Lorg/java_websocket/enums/Opcode;

.field protected role:Lorg/java_websocket/enums/Role;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/enums/Role;

    .line 68
    iput-object v0, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/enums/Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 73
    .local v2, "sbuf":Ljava/nio/ByteBuffer;
    const/16 v0, 0x30

    .line 74
    .local v0, "cur":B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    move v1, v0

    .line 76
    .local v1, "prev":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 77
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    .end local v1    # "prev":B
    .end local v2    # "sbuf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v2

    .line 86
    .restart local v2    # "sbuf":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 91
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, "b":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/java_websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Role;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 12
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "role"    # Lorg/java_websocket/enums/Role;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 99
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 101
    new-instance v4, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v4, v5}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v4

    .line 104
    :cond_0
    const-string v4, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "firstLineTokens":[Ljava/lang/String;
    array-length v4, v0

    if-eq v4, v5, :cond_1

    .line 106
    new-instance v4, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    invoke-direct {v4}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw v4

    .line 108
    :cond_1
    sget-object v4, Lorg/java_websocket/enums/Role;->CLIENT:Lorg/java_websocket/enums/Role;

    if-ne p1, v4, :cond_2

    .line 109
    invoke-static {v0, v2}, Lorg/java_websocket/drafts/Draft;->translateHandshakeHttpClient([Ljava/lang/String;Ljava/lang/String;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v1

    .line 113
    .local v1, "handshake":Lorg/java_websocket/handshake/HandshakeBuilder;
    :goto_0
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 115
    const-string v4, ":"

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "pair":[Ljava/lang/String;
    array-length v4, v3

    if-eq v4, v11, :cond_3

    .line 117
    new-instance v4, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v5, "not an http header"

    invoke-direct {v4, v5}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 111
    .end local v1    # "handshake":Lorg/java_websocket/handshake/HandshakeBuilder;
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_2
    invoke-static {v0, v2}, Lorg/java_websocket/drafts/Draft;->translateHandshakeHttpServer([Ljava/lang/String;Ljava/lang/String;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v1

    .restart local v1    # "handshake":Lorg/java_websocket/handshake/HandshakeBuilder;
    goto :goto_0

    .line 120
    .restart local v3    # "pair":[Ljava/lang/String;
    :cond_3
    aget-object v4, v3, v9

    invoke-interface {v1, v4}, Lorg/java_websocket/handshake/HandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    aget-object v4, v3, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v9

    .line 122
    invoke-interface {v1, v6}, Lorg/java_websocket/handshake/HandshakeBuilder;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    const-string v7, "^ +"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-interface {v1, v4, v5}, Lorg/java_websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_2
    invoke-static {p0}, Lorg/java_websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 127
    goto :goto_1

    .line 124
    :cond_4
    aget-object v4, v3, v9

    aget-object v5, v3, v10

    const-string v6, "^ +"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/java_websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 129
    new-instance v4, Lorg/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v4}, Lorg/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v4

    .line 131
    :cond_6
    return-object v1
.end method

.method private static translateHandshakeHttpClient([Ljava/lang/String;Ljava/lang/String;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 8
    .param p0, "firstLineTokens"    # [Ljava/lang/String;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    const-string v2, "101"

    aget-object v3, p0, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    new-instance v2, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v3, "Invalid status code received: %s Status line: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p0, v6

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    .line 169
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    const-string v2, "HTTP/1.1"

    aget-object v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    new-instance v2, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v3, "Invalid status line received: %s Status line: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p0, v7

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    .line 173
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_1
    new-instance v0, Lorg/java_websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v0}, Lorg/java_websocket/handshake/HandshakeImpl1Server;-><init>()V

    .local v0, "handshake":Lorg/java_websocket/handshake/HandshakeBuilder;
    move-object v1, v0

    .line 176
    check-cast v1, Lorg/java_websocket/handshake/ServerHandshakeBuilder;

    .line 177
    .local v1, "serverhandshake":Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    aget-object v2, p0, v6

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-interface {v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatus(S)V

    .line 178
    aget-object v2, p0, v4

    invoke-interface {v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method private static translateHandshakeHttpServer([Ljava/lang/String;Ljava/lang/String;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 7
    .param p0, "firstLineTokens"    # [Ljava/lang/String;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 144
    const-string v1, "GET"

    aget-object v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "Invalid request method received: %s Status line: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aget-object v4, p0, v5

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    .line 146
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    const-string v1, "HTTP/1.1"

    aget-object v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "Invalid status line received: %s Status line: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aget-object v4, p0, v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_1
    new-instance v0, Lorg/java_websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v0}, Lorg/java_websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 153
    .local v0, "clienthandshake":Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    aget-object v1, p0, v6

    invoke-interface {v0, v1}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->setResourceDescriptor(Ljava/lang/String;)V

    .line 154
    return-object v0
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/enums/HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method protected basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z
    .locals 2
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    .line 189
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    .line 190
    invoke-interface {p1, v0}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAlloc(I)I
    .locals 3
    .param p1, "bytecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 323
    if-gez p1, :cond_0

    .line 324
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return p1
.end method

.method public continuousFrame(Lorg/java_websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 4
    .param p1, "op"    # Lorg/java_websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/enums/Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    sget-object v2, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-eq p1, v2, :cond_0

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "bui":Lorg/java_websocket/framing/DataFrame;
    iget-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/enums/Opcode;

    if-eqz v2, :cond_2

    .line 216
    new-instance v0, Lorg/java_websocket/framing/ContinuousFrame;

    .end local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    invoke-direct {v0}, Lorg/java_websocket/framing/ContinuousFrame;-><init>()V

    .line 225
    .restart local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lorg/java_websocket/framing/DataFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 226
    invoke-virtual {v0, p3}, Lorg/java_websocket/framing/DataFrame;->setFin(Z)V

    .line 228
    :try_start_0
    invoke-virtual {v0}, Lorg/java_websocket/framing/DataFrame;->isValid()V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    if-eqz p3, :cond_4

    .line 234
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/enums/Opcode;

    .line 238
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 218
    :cond_2
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/enums/Opcode;

    .line 219
    sget-object v2, Lorg/java_websocket/enums/Opcode;->BINARY:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v2, :cond_3

    .line 220
    new-instance v0, Lorg/java_websocket/framing/BinaryFrame;

    .end local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    invoke-direct {v0}, Lorg/java_websocket/framing/BinaryFrame;-><init>()V

    .restart local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    goto :goto_0

    .line 221
    :cond_3
    sget-object v2, Lorg/java_websocket/enums/Opcode;->TEXT:Lorg/java_websocket/enums/Opcode;

    if-ne p1, v2, :cond_1

    .line 222
    new-instance v0, Lorg/java_websocket/framing/TextFrame;

    .end local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    invoke-direct {v0}, Lorg/java_websocket/framing/TextFrame;-><init>()V

    .restart local v0    # "bui":Lorg/java_websocket/framing/DataFrame;
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 236
    .end local v1    # "e":Lorg/java_websocket/exceptions/InvalidDataException;
    :cond_4
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->continuousFrameType:Lorg/java_websocket/enums/Opcode;

    goto :goto_1
.end method

.method public abstract copyInstance()Lorg/java_websocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
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
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;)Ljava/util/List;
    .locals 1
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/enums/Role;)Ljava/util/List;
    .locals 1
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;
    .param p2, "ownrole"    # Lorg/java_websocket/enums/Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            "Lorg/java_websocket/enums/Role;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;Lorg/java_websocket/enums/Role;Z)Ljava/util/List;
    .locals 1
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;
    .param p2, "ownrole"    # Lorg/java_websocket/enums/Role;
    .param p3, "withcontent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            "Lorg/java_websocket/enums/Role;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1, p3}, Lorg/java_websocket/drafts/Draft;->createHandshake(Lorg/java_websocket/handshake/Handshakedata;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lorg/java_websocket/handshake/Handshakedata;Z)Ljava/util/List;
    .locals 9
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;
    .param p2, "withcontent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/java_websocket/handshake/Handshakedata;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x64

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    .local v0, "bui":Ljava/lang/StringBuilder;
    instance-of v7, p1, Lorg/java_websocket/handshake/ClientHandshake;

    if-eqz v7, :cond_0

    .line 267
    const-string v7, "GET "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lorg/java_websocket/handshake/ClientHandshake;

    invoke-interface {v7}, Lorg/java_websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :goto_0
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-interface {p1}, Lorg/java_websocket/handshake/Handshakedata;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v6

    .line 276
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 277
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 278
    .local v3, "fieldname":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "fieldvalue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 269
    .end local v3    # "fieldname":Ljava/lang/String;
    .end local v4    # "fieldvalue":Ljava/lang/String;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    instance-of v7, p1, Lorg/java_websocket/handshake/ServerHandshake;

    if-eqz v7, :cond_1

    .line 270
    const-string v7, "HTTP/1.1 101 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lorg/java_websocket/handshake/ServerHandshake;

    invoke-interface {v7}, Lorg/java_websocket/handshake/ServerHandshake;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "unknown role"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/java_websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 287
    .local v5, "httpheader":[B
    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/java_websocket/handshake/Handshakedata;->getContent()[B

    move-result-object v2

    .line 288
    .local v2, "content":[B
    :goto_2
    if-nez v2, :cond_5

    const/4 v7, 0x0

    :goto_3
    array-length v8, v5

    add-int/2addr v7, v8

    .line 289
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 290
    .local v1, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 291
    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 294
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 295
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 287
    .end local v1    # "bytebuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "content":[B
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 288
    .restart local v2    # "content":[B
    :cond_5
    array-length v7, v2

    goto :goto_3
.end method

.method public abstract getCloseHandshakeType()Lorg/java_websocket/enums/CloseHandshakeType;
.end method

.method public getRole()Lorg/java_websocket/enums/Role;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/enums/Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract processFrame(Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method readVersion(Lorg/java_websocket/handshake/Handshakedata;)I
    .locals 5
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    const/4 v1, -0x1

    .line 330
    const-string v3, "Sec-WebSocket-Version"

    invoke-interface {p1, v3}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "vers":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 334
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lorg/java_websocket/enums/Role;)V
    .locals 0
    .param p1, "role"    # Lorg/java_websocket/enums/Role;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/enums/Role;

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
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
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lorg/java_websocket/handshake/Handshakedata;
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lorg/java_websocket/drafts/Draft;->role:Lorg/java_websocket/enums/Role;

    invoke-static {p1, v0}, Lorg/java_websocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lorg/java_websocket/enums/Role;)Lorg/java_websocket/handshake/HandshakeBuilder;

    move-result-object v0

    return-object v0
.end method
