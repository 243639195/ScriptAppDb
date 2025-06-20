.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$EscapeMode;,
        Lorg/jsoup/nodes/Entities$CoreCharset;
    }
.end annotation


# static fields
.field private static final DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

.field private static final codeDelims:[C

.field static final codepointRadix:I = 0x24

.field private static final empty:I = -0x1

.field private static final emptyName:Ljava/lang/String; = ""

.field private static final multipoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 29
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    return-void

    .line 27
    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 4
    .param p0, "accum"    # Ljava/lang/Appendable;
    .param p1, "escapeMode"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p2, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3b

    .line 246
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const/16 v1, 0x26

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v1, "&#x"

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 3
    .param p0, "charset"    # Lorg/jsoup/nodes/Entities$CoreCharset;
    .param p1, "c"    # C
    .param p2, "fallback"    # Ljava/nio/charset/CharsetEncoder;

    .prologue
    const/4 v0, 0x1

    .line 289
    sget-object v1, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Entities$CoreCharset;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 295
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 291
    :pswitch_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "codepoints"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    sget-object v4, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, p1, v3

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    aput v3, p1, v2

    .line 123
    const/4 v2, 0x2

    .line 130
    :goto_0
    return v2

    .line 125
    :cond_0
    sget-object v4, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v4, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "codepoint":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 127
    aput v0, p1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    .line 130
    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const-string v1, ""

    .line 149
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    .local v0, "accum":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v6}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZ)V
    .locals 11
    .param p0, "accum"    # Ljava/lang/Appendable;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .param p3, "inAttribute"    # Z
    .param p4, "normaliseWhite"    # Z
    .param p5, "stripLeadingWhite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v5, 0x0

    .line 168
    .local v5, "lastWasWhite":Z
    const/4 v8, 0x0

    .line 169
    .local v8, "reachedNonWhite":Z
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v4

    .line 170
    .local v4, "escapeMode":Lorg/jsoup/nodes/Entities$EscapeMode;
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 171
    .local v3, "encoder":Ljava/nio/charset/CharsetEncoder;
    iget-object v2, p2, Lorg/jsoup/nodes/Document$OutputSettings;->coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 172
    .local v2, "coreCharset":Lorg/jsoup/nodes/Entities$CoreCharset;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 175
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "offset":I
    :goto_0
    if-ge v7, v6, :cond_e

    .line 176
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 178
    .local v1, "codePoint":I
    if-eqz p4, :cond_4

    .line 179
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 180
    if-eqz p5, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    if-eqz v5, :cond_2

    .line 175
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_0

    .line 182
    :cond_2
    const/16 v9, 0x20

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_1

    .line 186
    :cond_3
    const/4 v5, 0x0

    .line 187
    const/4 v8, 0x1

    .line 191
    :cond_4
    const/high16 v9, 0x10000

    if-ge v1, v9, :cond_c

    .line 192
    int-to-char v0, v1

    .line 194
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 230
    const/16 v9, 0x20

    if-lt v0, v9, :cond_5

    invoke-static {v2, v0, v3}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 231
    :cond_5
    invoke-static {p0, v4, v1}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    goto :goto_1

    .line 196
    :sswitch_0
    const-string v9, "&amp;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 199
    :sswitch_1
    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v4, v9, :cond_6

    .line 200
    const-string v9, "&nbsp;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 202
    :cond_6
    const-string v9, "&#xa0;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 206
    :sswitch_2
    if-eqz p3, :cond_7

    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v4, v9, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v9

    sget-object v10, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v9, v10, :cond_8

    .line 207
    :cond_7
    const-string v9, "&lt;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 209
    :cond_8
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 212
    :sswitch_3
    if-nez p3, :cond_9

    .line 213
    const-string v9, "&gt;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 215
    :cond_9
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 218
    :sswitch_4
    if-eqz p3, :cond_a

    .line 219
    const-string v9, "&quot;"

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 221
    :cond_a
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 227
    :sswitch_5
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 233
    :cond_b
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 236
    .end local v0    # "c":C
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([C)V

    .line 237
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 238
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_1

    .line 240
    :cond_d
    invoke-static {p0, v4, v1}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    goto/16 :goto_1

    .line 243
    .end local v0    # "c":Ljava/lang/String;
    .end local v1    # "codePoint":I
    :cond_e
    return-void

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_0
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    sget-object v2, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 115
    .end local v1    # "val":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 112
    .restart local v1    # "val":Ljava/lang/String;
    :cond_0
    sget-object v2, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v2, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "codepoint":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 114
    new-instance v1, Ljava/lang/String;

    .end local v1    # "val":Ljava/lang/String;
    new-array v2, v4, [I

    aput v0, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    goto :goto_0

    .line 115
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 13
    .param p0, "e"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "pointsData"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 312
    new-array v8, p2, [Ljava/lang/String;

    invoke-static {p0, v8}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 313
    new-array v8, p2, [I

    invoke-static {p0, v8}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 314
    new-array v8, p2, [I

    invoke-static {p0, v8}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 315
    new-array v8, p2, [Ljava/lang/String;

    invoke-static {p0, v8}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "i":I
    new-instance v7, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v7, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    .line 320
    .local v7, "reader":Lorg/jsoup/parser/CharacterReader;
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 323
    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 325
    sget-object v8, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x24

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "cp1":I
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v0

    .line 327
    .local v0, "codeDelim":C
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 329
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_1

    .line 330
    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x24

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 331
    .local v2, "cp2":I
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 335
    :goto_1
    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "indexS":Ljava/lang/String;
    const/16 v8, 0x24

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "index":I
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 339
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v8

    aput-object v6, v8, v3

    .line 340
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v8

    aput v1, v8, v3

    .line 341
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v8

    aput v1, v8, v4

    .line 342
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v8

    aput-object v6, v8, v4

    .line 344
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 345
    sget-object v8, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    aput v2, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 348
    goto :goto_0

    .line 333
    .end local v2    # "cp2":I
    .end local v4    # "index":I
    .end local v5    # "indexS":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "cp2":I
    goto :goto_1

    .line 350
    .end local v0    # "codeDelim":C
    .end local v1    # "cp1":I
    .end local v2    # "cp2":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    if-ne v3, p2, :cond_3

    const/4 v8, 0x1

    :goto_2
    const-string v9, "Unexpected count of entities loaded"

    invoke-static {v8, v9}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 354
    return-void

    .line 350
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 352
    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 353
    throw v8
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 271
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
