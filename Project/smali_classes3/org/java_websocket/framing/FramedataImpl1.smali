.class public abstract Lorg/java_websocket/framing/FramedataImpl1;
.super Ljava/lang/Object;
.source "FramedataImpl1.java"

# interfaces
.implements Lorg/java_websocket/framing/Framedata;


# instance fields
.field private fin:Z

.field private optcode:Lorg/java_websocket/enums/Opcode;

.field private rsv1:Z

.field private rsv2:Z

.field private rsv3:Z

.field private transferemasked:Z

.field private unmaskedpayload:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lorg/java_websocket/enums/Opcode;)V
    .locals 2
    .param p1, "op"    # Lorg/java_websocket/enums/Opcode;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/enums/Opcode;

    .line 86
    invoke-static {}, Lorg/java_websocket/util/ByteBufferUtils;->getEmptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    .line 88
    iput-boolean v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    .line 89
    iput-boolean v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    .line 90
    iput-boolean v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    .line 91
    iput-boolean v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    .line 92
    return-void
.end method

.method public static get(Lorg/java_websocket/enums/Opcode;)Lorg/java_websocket/framing/FramedataImpl1;
    .locals 2
    .param p0, "opcode"    # Lorg/java_websocket/enums/Opcode;

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied opcode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    sget-object v0, Lorg/java_websocket/framing/FramedataImpl1$1;->$SwitchMap$org$java_websocket$enums$Opcode:[I

    invoke-virtual {p0}, Lorg/java_websocket/enums/Opcode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied opcode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_0
    new-instance v0, Lorg/java_websocket/framing/PingFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/PingFrame;-><init>()V

    .line 244
    :goto_0
    return-object v0

    .line 236
    :pswitch_1
    new-instance v0, Lorg/java_websocket/framing/PongFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/PongFrame;-><init>()V

    goto :goto_0

    .line 238
    :pswitch_2
    new-instance v0, Lorg/java_websocket/framing/TextFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/TextFrame;-><init>()V

    goto :goto_0

    .line 240
    :pswitch_3
    new-instance v0, Lorg/java_websocket/framing/BinaryFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/BinaryFrame;-><init>()V

    goto :goto_0

    .line 242
    :pswitch_4
    new-instance v0, Lorg/java_websocket/framing/CloseFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/CloseFrame;-><init>()V

    goto :goto_0

    .line 244
    :pswitch_5
    new-instance v0, Lorg/java_websocket/framing/ContinuousFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/ContinuousFrame;-><init>()V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public append(Lorg/java_websocket/framing/Framedata;)V
    .locals 4
    .param p1, "nextframe"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 131
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 135
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 155
    :goto_0
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v2

    iput-boolean v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    .line 157
    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 139
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    iput-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 152
    .end local v1    # "tmp":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 279
    :cond_0
    :goto_0
    return v2

    .line 255
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 259
    check-cast v0, Lorg/java_websocket/framing/FramedataImpl1;

    .line 261
    .local v0, "that":Lorg/java_websocket/framing/FramedataImpl1;
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    iget-boolean v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    if-ne v3, v4, :cond_0

    .line 264
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    iget-boolean v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    if-ne v3, v4, :cond_0

    .line 267
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    iget-boolean v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    if-ne v3, v4, :cond_0

    .line 270
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    iget-boolean v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    if-ne v3, v4, :cond_0

    .line 273
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    iget-boolean v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    if-ne v3, v4, :cond_0

    .line 276
    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/enums/Opcode;

    iget-object v4, v0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/enums/Opcode;

    if-ne v3, v4, :cond_0

    .line 279
    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_1
.end method

.method public getOpcode()Lorg/java_websocket/enums/Opcode;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/enums/Opcode;

    return-object v0
.end method

.method public getPayloadData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTransfereMasked()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 286
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/java_websocket/framing/FramedataImpl1;->optcode:Lorg/java_websocket/enums/Opcode;

    invoke-virtual {v4}, Lorg/java_websocket/enums/Opcode;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 287
    mul-int/lit8 v4, v0, 0x1f

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v4, v3

    .line 288
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    add-int v0, v4, v3

    .line 289
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_3
    add-int v0, v4, v3

    .line 290
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v3, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    if-eqz v3, :cond_4

    move v3, v1

    :goto_4
    add-int v0, v4, v3

    .line 291
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v4, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    if-eqz v4, :cond_5

    :goto_5
    add-int v0, v3, v1

    .line 292
    return v0

    .end local v0    # "result":I
    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    .restart local v0    # "result":I
    :cond_1
    move v3, v2

    .line 287
    goto :goto_1

    :cond_2
    move v3, v2

    .line 288
    goto :goto_2

    :cond_3
    move v3, v2

    .line 289
    goto :goto_3

    :cond_4
    move v3, v2

    .line 290
    goto :goto_4

    :cond_5
    move v1, v2

    .line 291
    goto :goto_5
.end method

.method public isFin()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    return v0
.end method

.method public isRSV1()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    return v0
.end method

.method public isRSV2()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    return v0
.end method

.method public isRSV3()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    return v0
.end method

.method public abstract isValid()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public setFin(Z)V
    .locals 0
    .param p1, "fin"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->fin:Z

    .line 184
    return-void
.end method

.method public setPayload(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 175
    return-void
.end method

.method public setRSV1(Z)V
    .locals 0
    .param p1, "rsv1"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv1:Z

    .line 193
    return-void
.end method

.method public setRSV2(Z)V
    .locals 0
    .param p1, "rsv2"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv2:Z

    .line 202
    return-void
.end method

.method public setRSV3(Z)V
    .locals 0
    .param p1, "rsv3"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->rsv3:Z

    .line 211
    return-void
.end method

.method public setTransferemasked(Z)V
    .locals 0
    .param p1, "transferemasked"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lorg/java_websocket/framing/FramedataImpl1;->transferemasked:Z

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Framedata{ opcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->getOpcode()Lorg/java_websocket/enums/Opcode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->isFin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV1()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV2()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rsv3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/java_websocket/framing/FramedataImpl1;->isRSV3()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payload length:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    const-string v0, "(too big to display)"

    .line 165
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/java_websocket/framing/FramedataImpl1;->unmaskedpayload:Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
