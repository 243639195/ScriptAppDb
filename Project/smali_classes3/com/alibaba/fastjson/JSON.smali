.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONStreamAware;
.implements Lcom/alibaba/fastjson/JSONAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static final DEFAULT_TYPE_KEY:Ljava/lang/String; = "@type"

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.72"

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "features":I
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 67
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 68
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    .line 69
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 72
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sput-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 79
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 80
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    .line 84
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-object v1

    .line 96
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0, p0, v2, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 97
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 380
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "features"    # I

    .prologue
    .line 396
    if-nez p0, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    .line 400
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 401
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static varargs parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 384
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 385
    .local v0, "featuresValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 386
    aget-object v2, p2, v1

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v2

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 115
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 116
    .local v1, "featureValues":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 117
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v4, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v4

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_0
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "UTF-8 not support"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONArray;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    const/4 v6, 0x0

    .line 293
    if-nez p0, :cond_0

    move-object v0, v6

    .line 322
    :goto_0
    return-object v0

    .line 297
    :cond_0
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 298
    .local v1, "featuresValue":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_1

    .line 299
    aget-object v7, p1, v2

    iget v7, v7, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v7

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v7, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v4, p0, v7, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 306
    .local v4, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v3, v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 307
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    .line 308
    .local v5, "token":I
    const/16 v7, 0x8

    if-ne v5, v7, :cond_2

    .line 309
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 310
    const/4 v0, 0x0

    .line 320
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 311
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const/16 v7, 0x14

    if-ne v5, v7, :cond_3

    .line 312
    const/4 v0, 0x0

    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_2

    .line 314
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 315
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v4, v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 327
    const/4 v1, 0x0

    .line 349
    :goto_0
    return-object v1

    .line 332
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v4, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v2, p0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 333
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 334
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    .line 335
    .local v3, "token":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 336
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 337
    const/4 v1, 0x0

    .line 347
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 338
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    const/16 v4, 0x14

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    const/4 v1, 0x0

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    goto :goto_1

    .line 341
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 344
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    if-nez p0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 360
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "objectArray":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 362
    const/4 v0, 0x0

    .line 367
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 369
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0

    .line 364
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_1
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 149
    :cond_0
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .end local v2    # "obj":Ljava/lang/Object;
    move-object v1, v2

    .line 159
    :cond_1
    :goto_0
    return-object v1

    .line 152
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 153
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 155
    .local v0, "autoTypeSupport":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 156
    const-string v3, "@type"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0    # "autoTypeSupport":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 126
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 143
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 129
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 130
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 131
    .local v0, "autoTypeSupport":Z
    :goto_1
    if-nez v0, :cond_3

    .line 132
    array-length v5, p1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 133
    .local v1, "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v6, :cond_1

    .line 134
    const/4 v0, 0x1

    .line 132
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "autoTypeSupport":Z
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_2
    move v0, v4

    .line 130
    goto :goto_1

    .line 139
    .restart local v0    # "autoTypeSupport":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 140
    const-string v4, "@type"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v3, v2

    .line 143
    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "type":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "featureValues"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v2, 0x0

    .line 212
    :goto_0
    return-object v2

    .line 201
    :cond_0
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p3, v3

    .line 202
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v5, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p2, v5

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v1, p0, v3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 206
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 208
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "featureValues"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p4, "featureValues"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 224
    const/4 v2, 0x0

    .line 251
    .end local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    :goto_0
    return-object v2

    .line 227
    .restart local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    :cond_0
    array-length v4, p5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, p5, v3

    .line 228
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v5, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v5

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 233
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_3
    instance-of v3, p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v3, :cond_4

    .line 242
    check-cast p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .end local p3    # "processor":Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    iput-object p3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 245
    :cond_4
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 247
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 192
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "UTF-8 not support"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # [C
    .param p1, "length"    # I
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 265
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 266
    :cond_0
    const/4 v3, 0x0

    .line 281
    :goto_0
    return-object v3

    .line 269
    :cond_1
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 270
    .local v1, "featureValues":I
    array-length v5, p3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, p3, v4

    .line 271
    .local v0, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v6, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v6

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    .end local v0    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    sget-object v4, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v2, p0, p1, v4, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 275
    .local v2, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    goto :goto_0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;

    .prologue
    .line 602
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 607
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 24
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .prologue
    .line 612
    if-nez p0, :cond_1

    .line 613
    const/16 p0, 0x0

    .line 698
    .end local p0    # "javaObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 616
    .restart local p0    # "javaObject":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSON;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 617
    check-cast p0, Lcom/alibaba/fastjson/JSON;

    goto :goto_0

    .line 620
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v17, p0

    .line 621
    check-cast v17, Ljava/util/Map;

    .line 623
    .local v17, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v19

    .line 626
    .local v19, "size":I
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/LinkedHashMap;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 627
    new-instance v9, Ljava/util/LinkedHashMap;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 633
    .local v9, "innerMap":Ljava/util/Map;
    :goto_1
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 635
    .local v12, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 636
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 637
    .local v15, "key":Ljava/lang/Object;
    invoke-static {v15}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 638
    .local v13, "jsonKey":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 639
    .local v14, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v12, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 628
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v9    # "innerMap":Ljava/util/Map;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "jsonKey":Ljava/lang/String;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    .end local v15    # "key":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/TreeMap;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 629
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .restart local v9    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .line 631
    .end local v9    # "innerMap":Ljava/util/Map;
    :cond_4
    new-instance v9, Ljava/util/HashMap;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    .restart local v9    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .restart local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    move-object/from16 p0, v12

    .line 642
    goto :goto_0

    .line 645
    .end local v9    # "innerMap":Ljava/util/Map;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v19    # "size":I
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v4, p0

    .line 646
    check-cast v4, Ljava/util/Collection;

    .line 648
    .local v4, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 650
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 651
    .local v10, "item":Ljava/lang/Object;
    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 652
    .restart local v14    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v10    # "item":Ljava/lang/Object;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    :cond_7
    move-object/from16 p0, v2

    .line 655
    goto/16 :goto_0

    .line 658
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 660
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 661
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "javaObject":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 664
    .restart local p0    # "javaObject":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 665
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    .line 667
    .local v16, "len":I
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    move/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 669
    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_a

    .line 670
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 671
    .restart local v10    # "item":Ljava/lang/Object;
    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 672
    .restart local v14    # "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v10    # "item":Ljava/lang/Object;
    .end local v14    # "jsonValue":Ljava/lang/Object;
    :cond_a
    move-object/from16 p0, v2

    .line 675
    goto/16 :goto_0

    .line 678
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "i":I
    .end local v16    # "len":I
    :cond_b
    invoke-static {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 682
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v18

    .line 683
    .local v18, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v11, v18

    .line 684
    check-cast v11, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 686
    .local v11, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v12}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 688
    .restart local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v20

    .line 689
    .local v20, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 690
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 692
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 693
    .local v5, "e":Ljava/lang/Exception;
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    const-string v22, "toJSON error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 p0, v12

    .line 695
    goto/16 :goto_0

    .line 698
    .end local v11    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v12    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    const/16 p0, 0x0

    goto/16 :goto_0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 493
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "defaultFeatures"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 507
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 510
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v3, v2, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 512
    .local v3, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-eqz p2, :cond_7

    .line 513
    array-length v6, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_7

    aget-object v1, p2, v5

    .line 514
    .local v1, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    if-nez v1, :cond_1

    .line 513
    .end local v1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :cond_0
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 518
    .restart local v1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :cond_1
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v4, :cond_2

    .line 519
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_2
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v4, :cond_3

    .line 523
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFilters()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_3
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v4, :cond_4

    .line 527
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFilters()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_4
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v4, :cond_5

    .line 531
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFilters()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_5
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v4, :cond_6

    .line 535
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFilters()Ljava/util/List;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    move-object v4, v0

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_6
    instance-of v4, v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v4, :cond_0

    .line 539
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFilters()Ljava/util/List;

    move-result-object v4

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .end local v1    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 547
    .end local v3    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 548
    throw v4

    .line 544
    .restart local v3    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :cond_7
    :try_start_1
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 545
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 547
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 545
    return-object v4
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 477
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    check-cast v2, Ljava/io/Writer;

    sget v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v2, v3, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 480
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 481
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 483
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 485
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 483
    return-object v2

    .line 485
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 486
    throw v2
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 500
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 442
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    check-cast v2, Ljava/io/Writer;

    sget v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, v2, v3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 445
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 447
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 449
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 451
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 449
    return-object v2

    .line 451
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 452
    throw v2
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 411
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object v0, p0

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 422
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object v0, p0

    move-object v3, v2

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 461
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .param p4, "defaultFeatures"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v5, 0x0

    .line 726
    new-instance v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v6, 0x0

    invoke-direct {v3, v6, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 729
    .local v3, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v4, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v4, v3, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 730
    .local v4, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    array-length v7, p5

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p5, v6

    .line 731
    .local v1, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    const/4 v8, 0x1

    invoke-virtual {v4, v1, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 730
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    invoke-virtual {v4, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 736
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 739
    :cond_1
    if-eqz p2, :cond_9

    .line 740
    array-length v7, p2

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_9

    aget-object v2, p2, v6

    .line 741
    .local v2, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    if-nez v2, :cond_3

    .line 740
    .end local v2    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :cond_2
    :goto_2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 745
    .restart local v2    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    :cond_3
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v5, :cond_4

    .line 746
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_4
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v5, :cond_5

    .line 750
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getNameFilters()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/serializer/NameFilter;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_5
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v5, :cond_6

    .line 754
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getValueFilters()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/serializer/ValueFilter;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_6
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v5, :cond_7

    .line 758
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getPropertyFilters()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_7
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v5, :cond_8

    .line 762
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getBeforeFilters()Ljava/util/List;

    move-result-object v8

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    move-object v5, v0

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_8
    instance-of v5, v2, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v5, :cond_2

    .line 766
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getAfterFilters()Ljava/util/List;

    move-result-object v5

    check-cast v2, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .end local v2    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 775
    .end local v4    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 776
    throw v5

    .line 771
    .restart local v4    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :cond_9
    :try_start_1
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 775
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 773
    return-object v5
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 466
    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 456
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 434
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "prettyFormat"    # Z

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 438
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v3, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 418
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 430
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v2, 0x0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    const/4 v2, 0x0

    .line 470
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/alibaba/fastjson/JSON;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 560
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, p1, v2, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 563
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 565
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 569
    return-void

    .line 567
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 568
    throw v2
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 578
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/Writer;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 580
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 581
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 584
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 582
    return-object v1

    .line 584
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 585
    throw v1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_0

    .line 713
    .end local p0    # "this":Lcom/alibaba/fastjson/JSON;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/alibaba/fastjson/JSON;
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 5
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 589
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v2, 0x0

    check-cast v2, Ljava/io/Writer;

    sget v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 591
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 592
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 598
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 597
    throw v2
.end method
