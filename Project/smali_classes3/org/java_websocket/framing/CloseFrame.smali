.class public Lorg/java_websocket/framing/CloseFrame;
.super Lorg/java_websocket/framing/ControlFrame;
.source "CloseFrame.java"


# static fields
.field public static final ABNORMAL_CLOSE:I = 0x3ee

.field public static final BAD_GATEWAY:I = 0x3f6

.field public static final BUGGYCLOSE:I = -0x2

.field public static final EXTENSION:I = 0x3f2

.field public static final FLASHPOLICY:I = -0x3

.field public static final GOING_AWAY:I = 0x3e9

.field public static final NEVER_CONNECTED:I = -0x1

.field public static final NOCODE:I = 0x3ed

.field public static final NORMAL:I = 0x3e8

.field public static final NO_UTF8:I = 0x3ef

.field public static final POLICY_VALIDATION:I = 0x3f0

.field public static final PROTOCOL_ERROR:I = 0x3ea

.field public static final REFUSE:I = 0x3eb

.field public static final SERVICE_RESTART:I = 0x3f4

.field public static final TLS_ERROR:I = 0x3f7

.field public static final TOOBIG:I = 0x3f1

.field public static final TRY_AGAIN_LATER:I = 0x3f5

.field public static final UNEXPECTED_CONDITION:I = 0x3f3


# instance fields
.field private code:I

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lorg/java_websocket/enums/Opcode;->CLOSING:Lorg/java_websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lorg/java_websocket/framing/ControlFrame;-><init>(Lorg/java_websocket/enums/Opcode;)V

    .line 170
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/java_websocket/framing/CloseFrame;->setReason(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lorg/java_websocket/framing/CloseFrame;->setCode(I)V

    .line 172
    return-void
.end method

.method private updatePayload()V
    .locals 4

    .prologue
    .line 295
    iget-object v3, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-static {v3}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 296
    .local v1, "by":[B
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 297
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 298
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    array-length v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 300
    .local v2, "pay":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 301
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 303
    invoke-super {p0, v2}, Lorg/java_websocket/framing/ControlFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 304
    return-void
.end method

.method private validateUtf8(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    new-instance v1, Lorg/java_websocket/exceptions/InvalidDataException;

    const/16 v2, 0x3ef

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 331
    :cond_0
    :goto_0
    return v2

    .line 319
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 322
    invoke-super {p0, p1}, Lorg/java_websocket/framing/ControlFrame;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 326
    check-cast v0, Lorg/java_websocket/framing/CloseFrame;

    .line 328
    .local v0, "that":Lorg/java_websocket/framing/CloseFrame;
    iget v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    iget v4, v0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-ne v3, v4, :cond_0

    .line 331
    iget-object v3, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    iget-object v2, v0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1
.end method

.method public getCloseCode()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    .line 309
    invoke-static {}, Lorg/java_websocket/util/ByteBufferUtils;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->hashCode()I

    move-result v0

    .line 337
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    add-int v0, v1, v2

    .line 338
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 339
    return v0

    .line 338
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValid()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3f7

    const/16 v4, 0x3ef

    const/16 v3, 0x3ed

    const/16 v2, 0x3ea

    .line 227
    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->isValid()V

    .line 228
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v1, "Received text is no valid utf8 string!"

    invoke-direct {v0, v4, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 232
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v1, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v2, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-le v0, v5, :cond_2

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_2

    .line 237
    new-instance v0, Lorg/java_websocket/exceptions/InvalidDataException;

    const-string v1, "Trying to send an illegal close code!"

    invoke-direct {v0, v2, v1}, Lorg/java_websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x1387

    if-gt v0, v1, :cond_3

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    iget v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_4

    .line 241
    :cond_3
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closecode must not be sent over the wire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4
    return-void
.end method

.method public setCode(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 180
    iput p1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 182
    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    .line 183
    const/16 v0, 0x3ed

    iput v0, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 186
    :cond_0
    invoke-direct {p0}, Lorg/java_websocket/framing/CloseFrame;->updatePayload()V

    .line 187
    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x2

    .line 247
    const/16 v3, 0x3ed

    iput v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 248
    const-string v3, ""

    iput-object v3, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 250
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    .line 251
    const/16 v3, 0x3e8

    iput v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 271
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 253
    const/16 v3, 0x3ea

    iput v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 256
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 257
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 259
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 262
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 264
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 265
    .local v2, "mark":I
    invoke-direct {p0, p1, v2}, Lorg/java_websocket/framing/CloseFrame;->validateUtf8(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v2    # "mark":I
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    const/16 v3, 0x3ef

    iput v3, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    .line 268
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    goto :goto_0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string p1, ""

    .line 198
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/framing/CloseFrame;->reason:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lorg/java_websocket/framing/CloseFrame;->updatePayload()V

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/java_websocket/framing/ControlFrame;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/java_websocket/framing/CloseFrame;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
