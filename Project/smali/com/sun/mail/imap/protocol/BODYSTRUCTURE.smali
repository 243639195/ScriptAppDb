.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "BODYSTRUCTURE.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I = 0x2

.field private static NESTED:I = 0x3

.field private static SINGLE:I = 0x1

.field static final name:[C

.field private static parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    .line 58
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 57
    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    :try_start_0
    const-string v0, "mail.imap.parse.debug"

    .line 88
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 65
    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 97
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    .line 100
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: msgno "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 105
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    .line 106
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x6e

    const/16 v4, 0x4e

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/16 v8, 0x29

    if-ne v0, v1, :cond_19

    .line 110
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_3

    .line 111
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "multipart"

    .line 112
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 113
    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    .line 117
    :cond_4
    new-instance v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v9, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 125
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v9

    if-eq v9, v1, :cond_4

    .line 128
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 129
    iget-object v9, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 132
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_5

    .line 133
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: subtype "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_7

    .line 136
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_6

    .line 137
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: parse DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 143
    :cond_7
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_8

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    :cond_8
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 147
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_a

    .line 148
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_9

    .line 149
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 154
    :cond_a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_e

    .line 156
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_b

    .line 157
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: parse disposition"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    :cond_b
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 159
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_c

    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: disposition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    :cond_c
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 163
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v8, :cond_d

    .line 164
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_d
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_12

    .line 168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: disposition DONE"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    if-eq v0, v4, :cond_10

    if-ne v0, v3, :cond_f

    goto :goto_0

    .line 174
    :cond_f
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BODYSTRUCTURE parse error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": bad multipart disposition, b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_10
    :goto_0
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_11

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    :cond_11
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 182
    :cond_12
    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_14

    .line 183
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_13

    .line 184
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    if-eq v0, v6, :cond_15

    .line 189
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing space after disposition"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_15
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v1, :cond_16

    .line 195
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 196
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_17

    .line 197
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: language len "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 200
    :cond_16
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 202
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 203
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 204
    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_17

    .line 205
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    :cond_17
    :goto_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v6, :cond_18

    return-void

    .line 214
    :cond_18
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_2

    .line 217
    :cond_19
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1a

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: single part"

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    :cond_1a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    .line 220
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1b

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: type "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    :cond_1b
    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 223
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 224
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1c

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: subtype "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_1c
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v0, :cond_1d

    const-string v0, "application"

    .line 229
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v0, "octet-stream"

    .line 230
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    .line 232
    :cond_1d
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    .line 233
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1e

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: cParams "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    :cond_1e
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    .line 236
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_1f

    .line 237
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: id "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    :cond_1f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 239
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_20

    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: description "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_20
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    .line 242
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_21

    .line 243
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: encoding "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    :cond_21
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    .line 245
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_22

    .line 246
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: size "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :cond_22
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-gez v0, :cond_23

    .line 248
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_23
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v9, "text"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 253
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 254
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_24

    .line 255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: lines "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_24
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v0, :cond_28

    .line 257
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_25
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v9, "message"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 260
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v9, "rfc822"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 262
    sget v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    .line 263
    new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 264
    new-array v0, v7, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    new-instance v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v9, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    aput-object v9, v0, v5

    .line 265
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 266
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    .line 267
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_26

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG IMAP: lines "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    :cond_26
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-gez v0, :cond_28

    .line 270
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_27
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 275
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    int-to-char v0, v0

    .line 276
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 277
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_28
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v8, :cond_2a

    .line 284
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    .line 285
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_29

    .line 286
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: parse DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    return-void

    .line 293
    :cond_2a
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_2c

    .line 295
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_2b

    .line 296
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2b
    return-void

    .line 301
    :cond_2c
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 303
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    .line 304
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_2d

    .line 305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: disposition "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_2d
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    .line 308
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_2e

    .line 309
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: dParams "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    :cond_2e
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v8, :cond_33

    .line 311
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    if-eq v0, v4, :cond_31

    if-ne v0, v3, :cond_30

    goto :goto_3

    .line 319
    :cond_30
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BODYSTRUCTURE parse error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": bad single part disposition, b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_31
    :goto_3
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_32

    .line 316
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: disposition NIL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    :cond_32
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    .line 325
    :cond_33
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-ne v0, v8, :cond_35

    .line 326
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_34

    .line 327
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: disposition DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_34
    return-void

    .line 332
    :cond_35
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->peekByte()B

    move-result v0

    if-ne v0, v1, :cond_36

    .line 333
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readStringList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 334
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_37

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG IMAP: language len "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 338
    :cond_36
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 340
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 341
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    .line 342
    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_37

    .line 343
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG IMAP: language "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    :cond_37
    :goto_4
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    if-eq v0, v6, :cond_39

    .line 353
    sget-boolean p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz p1, :cond_38

    .line 354
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG IMAP: all DONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_38
    return-void

    .line 352
    :cond_39
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_4
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 406
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    .line 410
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    .line 411
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    return-void

    :cond_1
    int-to-char v0, v0

    .line 412
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    return-void

    .line 415
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 375
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_4

    .line 377
    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    .line 380
    sget-boolean v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v3, :cond_1

    .line 381
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: parameter name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    .line 383
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": null name in parameter list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    sget-boolean v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v4, :cond_3

    .line 389
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_3
    invoke-virtual {v2, v0, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const-string p1, "DONE"

    .line 392
    invoke-virtual {v2, v1, p1}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    :cond_4
    const/16 v2, 0x4e

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 398
    :cond_5
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "Parameter list parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_6
    :goto_0
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_7

    .line 395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x2

    .line 396
    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    :goto_1
    return-object v1
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    .line 359
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNested()Z
    .locals 2

    .line 367
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSingle()Z
    .locals 2

    .line 363
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
