.class public final Lcom/alibaba/fastjson/serializer/DateCodec;
.super Ljava/lang/Object;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .param p5, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p4, :cond_1

    move-object p4, v0

    .line 319
    .end local p4    # "val":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p4

    .line 272
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v6, p4, Ljava/util/Date;

    if-nez v6, :cond_0

    .line 274
    instance-of v6, p4, Ljava/math/BigDecimal;

    if-eqz v6, :cond_2

    .line 275
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/math/BigDecimal;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    .line 276
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v6, p4, Ljava/lang/Number;

    if-eqz v6, :cond_3

    .line 277
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object p4, v0

    goto :goto_0

    .line 278
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v6, p4, Ljava/lang/String;

    if-eqz v6, :cond_a

    move-object v3, p4

    .line 279
    check-cast v3, Ljava/lang/String;

    .line 280
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    move-object p4, v0

    .line 281
    goto :goto_0

    .line 284
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 287
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 289
    .local v0, "calendar":Ljava/util/Calendar;
    const-class v6, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v6, :cond_5

    .line 296
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    move-object p4, v0

    .line 290
    goto :goto_0

    .line 293
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p4

    .line 296
    .end local p4    # "val":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 299
    const-string v6, "0000-00-00"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "0000-00-00T00:00:00"

    .line 300
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "0001-01-01T00:00:00+08:00"

    .line 301
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move-object p4, v0

    .line 302
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 297
    throw v6

    .line 307
    :cond_8
    if-eqz p5, :cond_9

    .line 308
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :goto_1
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p4

    goto/16 :goto_0

    .line 310
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 314
    :catch_0
    move-exception v6

    .line 318
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 319
    .local v4, "longVal":J
    new-instance p4, Ljava/util/Date;

    .end local p4    # "val":Ljava/lang/Object;
    invoke-direct {p4, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 322
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v4    # "longVal":J
    .restart local p4    # "val":Ljava/lang/Object;
    :cond_a
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "parse error"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 162
    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    .line 163
    .local v15, "token":I
    const/4 v2, 0x2

    if-ne v15, v2, :cond_0

    .line 164
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 165
    .local v20, "val":Ljava/lang/Long;
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v6, v20

    .end local v20    # "val":Ljava/lang/Long;
    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 246
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/DateCodec;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 247
    .local v13, "obj":Ljava/lang/Object;
    const-class v2, Ljava/util/Calendar;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 248
    instance-of v2, v13, Ljava/util/Calendar;

    if-eqz v2, :cond_e

    move-object v8, v13

    .line 262
    .end local v13    # "obj":Ljava/lang/Object;
    :goto_1
    return-object v8

    .line 166
    :cond_0
    const/4 v2, 0x4

    if-ne v15, v2, :cond_4

    .line 167
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "strVal":Ljava/lang/String;
    move-object/from16 v20, v14

    .line 169
    .local v20, "val":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 171
    iget v2, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 172
    new-instance v10, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v10, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 173
    .local v10, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v8, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 175
    .local v8, "calendar":Ljava/util/Calendar;
    const-class v2, Ljava/util/Calendar;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 176
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    .line 181
    .end local v8    # "calendar":Ljava/util/Calendar;
    .end local v20    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .end local v10    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_3
    move-object/from16 v6, v20

    .line 183
    goto :goto_0

    .end local v14    # "strVal":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x8

    if-ne v15, v2, :cond_5

    .line 184
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 185
    const/16 v20, 0x0

    .local v20, "val":Ljava/lang/Object;
    move-object/from16 v6, v20

    goto :goto_0

    .line 186
    .end local v20    # "val":Ljava/lang/Object;
    :cond_5
    const/16 v2, 0xc

    if-ne v15, v2, :cond_a

    .line 187
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 190
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 191
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "key":Ljava/lang/String;
    const-string v2, "@type"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 195
    const/16 v2, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 197
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v19

    .line 198
    .local v19, "typeName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v3, 0x0

    iget v4, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v18

    .line 199
    .local v18, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v18, :cond_6

    .line 200
    move-object/from16 p2, v18

    .line 203
    :cond_6
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 204
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 207
    .end local v18    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "typeName":Ljava/lang/String;
    :cond_7
    const/16 v2, 0x3a

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 213
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    .line 214
    const/4 v2, 0x2

    if-ne v15, v2, :cond_9

    .line 215
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v16

    .line 216
    .local v16, "timeMillis":J
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 221
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 223
    .local v20, "val":Ljava/lang/Long;
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    move-object/from16 v6, v20

    .line 224
    goto/16 :goto_0

    .line 209
    .end local v11    # "key":Ljava/lang/String;
    .end local v16    # "timeMillis":J
    .end local v20    # "val":Ljava/lang/Long;
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    .restart local v11    # "key":Ljava/lang/String;
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v11    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 225
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 226
    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 228
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 229
    const-string v2, "val"

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 230
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_b
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 237
    const/16 v2, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v20

    .line 241
    .local v20, "val":Ljava/lang/Object;
    const/16 v2, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    move-object/from16 v6, v20

    goto/16 :goto_0

    .line 234
    .end local v20    # "val":Ljava/lang/Object;
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v20

    .restart local v20    # "val":Ljava/lang/Object;
    move-object/from16 v6, v20

    goto/16 :goto_0

    .end local v20    # "val":Ljava/lang/Object;
    .restart local v13    # "obj":Ljava/lang/Object;
    :cond_e
    move-object v9, v13

    .line 252
    check-cast v9, Ljava/util/Date;

    .line 253
    .local v9, "date":Ljava/util/Date;
    if-nez v9, :cond_f

    .line 254
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 257
    :cond_f
    iget-object v2, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 258
    .restart local v8    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .end local v8    # "calendar":Ljava/util/Calendar;
    .end local v9    # "date":Ljava/util/Date;
    :cond_10
    move-object v8, v13

    .line 262
    goto/16 :goto_1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 50
    .local v13, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 151
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 55
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-class v20, Ljava/util/Date;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 58
    const-string v19, "new Date("

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 59
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 60
    const/16 v19, 0x29

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 62
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    const/16 v19, 0x7b

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 63
    const-string v19, "@type"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 65
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    const-string v19, "val"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 67
    check-cast p2, Ljava/util/Date;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 68
    const/16 v19, 0x7d

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 75
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Calendar;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v5, p2

    .line 76
    check-cast v5, Ljava/util/Calendar;

    .line 77
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 82
    .end local v5    # "calendar":Ljava/util/Calendar;
    .local v6, "date":Ljava/util/Date;
    :goto_1
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v8

    .line 84
    .local v8, "format":Ljava/text/DateFormat;
    if-nez v8, :cond_3

    .line 85
    new-instance v8, Ljava/text/SimpleDateFormat;

    .end local v8    # "format":Ljava/text/DateFormat;
    sget-object v19, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .restart local v8    # "format":Ljava/text/DateFormat;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    :cond_3
    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, "text":Ljava/lang/String;
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "date":Ljava/util/Date;
    .end local v8    # "format":Ljava/text/DateFormat;
    .end local v15    # "text":Ljava/lang/String;
    :cond_4
    move-object/from16 v6, p2

    .line 79
    check-cast v6, Ljava/util/Date;

    .restart local v6    # "date":Ljava/util/Date;
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 95
    .local v16, "time":J
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_a

    .line 96
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_6

    .line 97
    const/16 v19, 0x27

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 102
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 103
    .restart local v5    # "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 105
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 106
    .local v18, "year":I
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v12, v19, 0x1

    .line 107
    .local v12, "month":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 108
    .local v7, "day":I
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 109
    .local v9, "hour":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 110
    .local v11, "minute":I
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 111
    .local v14, "second":I
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 114
    .local v10, "millis":I
    if-eqz v10, :cond_7

    .line 115
    const-string v19, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 116
    .local v4, "buf":[C
    int-to-long v0, v10

    move-wide/from16 v20, v0

    const/16 v19, 0x17

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 117
    int-to-long v0, v14

    move-wide/from16 v20, v0

    const/16 v19, 0x13

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 118
    int-to-long v0, v11

    move-wide/from16 v20, v0

    const/16 v19, 0x10

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 119
    int-to-long v0, v9

    move-wide/from16 v20, v0

    const/16 v19, 0xd

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 120
    int-to-long v0, v7

    move-wide/from16 v20, v0

    const/16 v19, 0xa

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 121
    int-to-long v0, v12

    move-wide/from16 v20, v0

    const/16 v19, 0x7

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 122
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x4

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 141
    :goto_3
    invoke-virtual {v13, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 143
    iget v0, v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_9

    .line 144
    const/16 v19, 0x27

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "buf":[C
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "millis":I
    .end local v11    # "minute":I
    .end local v12    # "month":I
    .end local v14    # "second":I
    .end local v18    # "year":I
    :cond_6
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_2

    .line 125
    .restart local v5    # "calendar":Ljava/util/Calendar;
    .restart local v7    # "day":I
    .restart local v9    # "hour":I
    .restart local v10    # "millis":I
    .restart local v11    # "minute":I
    .restart local v12    # "month":I
    .restart local v14    # "second":I
    .restart local v18    # "year":I
    :cond_7
    if-nez v14, :cond_8

    if-nez v11, :cond_8

    if-nez v9, :cond_8

    .line 126
    const-string v19, "0000-00-00"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 127
    .restart local v4    # "buf":[C
    int-to-long v0, v7

    move-wide/from16 v20, v0

    const/16 v19, 0xa

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 128
    int-to-long v0, v12

    move-wide/from16 v20, v0

    const/16 v19, 0x7

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 129
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x4

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    .line 131
    .end local v4    # "buf":[C
    :cond_8
    const-string v19, "0000-00-00T00:00:00"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 132
    .restart local v4    # "buf":[C
    int-to-long v0, v14

    move-wide/from16 v20, v0

    const/16 v19, 0x13

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 133
    int-to-long v0, v11

    move-wide/from16 v20, v0

    const/16 v19, 0x10

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 134
    int-to-long v0, v9

    move-wide/from16 v20, v0

    const/16 v19, 0xd

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 135
    int-to-long v0, v7

    move-wide/from16 v20, v0

    const/16 v19, 0xa

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 136
    int-to-long v0, v12

    move-wide/from16 v20, v0

    const/16 v19, 0x7

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 137
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x4

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto/16 :goto_3

    .line 146
    :cond_9
    const/16 v19, 0x22

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "buf":[C
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v7    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "millis":I
    .end local v11    # "minute":I
    .end local v12    # "month":I
    .end local v14    # "second":I
    .end local v18    # "year":I
    :cond_a
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_0
.end method
