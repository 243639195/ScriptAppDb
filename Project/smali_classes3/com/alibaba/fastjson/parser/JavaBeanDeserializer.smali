.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 9
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 42
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 46
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 47
    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    .line 48
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 50
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    .line 52
    iget-object v7, v2, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    .line 53
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .restart local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    :cond_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 46
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 61
    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 62
    const/4 v3, 0x0

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    :goto_2
    if-ge v3, v5, :cond_3

    .line 63
    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    .line 64
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 65
    .restart local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 67
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 59
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 343
    const-class v4, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 344
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v56

    .line 852
    :goto_0
    return-object v56

    .line 347
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v39, v0

    .line 349
    .local v39, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v0, v39

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v52, v0

    .line 350
    .local v52, "token":I
    const/16 v4, 0x8

    move/from16 v0, v52

    if-ne v0, v4, :cond_2

    .line 351
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 352
    const/16 v56, 0x0

    goto :goto_0

    .line 355
    :cond_2
    move-object/from16 v0, v39

    iget-boolean v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 357
    .local v14, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 358
    .local v12, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz p4, :cond_3

    if-eqz v12, :cond_3

    .line 359
    iget-object v12, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 361
    :cond_3
    const/4 v11, 0x0

    .line 364
    .local v11, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v9, 0x0

    .line 366
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v52

    if-ne v0, v4, :cond_6

    .line 367
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 368
    if-nez p4, :cond_4

    .line 369
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 854
    :cond_4
    if-eqz v11, :cond_5

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v56, p4

    .line 371
    goto :goto_0

    .line 374
    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v52

    if-ne v0, v4, :cond_a

    .line 375
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v4, :cond_7

    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    :cond_7
    const/16 v37, 0x1

    .line 377
    .local v37, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v37, :cond_a

    .line 378
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v56

    .line 854
    if-eqz v11, :cond_8

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_0

    .line 375
    .end local v37    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v37, 0x0

    goto :goto_1

    .line 382
    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v52

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, v52

    if-eq v0, v4, :cond_11

    .line 383
    :try_start_2
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 384
    const/16 v56, 0x0

    .line 854
    if-eqz v11, :cond_b

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 387
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v52

    if-ne v0, v4, :cond_e

    .line 388
    :try_start_3
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v51

    .line 389
    .local v51, "strVal":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 390
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    const/16 v56, 0x0

    .line 854
    if-eqz v11, :cond_d

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 395
    .end local v51    # "strVal":Ljava/lang/String;
    :cond_e
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 397
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 399
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 400
    const-string v4, ", fieldName "

    .line 401
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 402
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 405
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 854
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v11, :cond_10

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 858
    throw v4

    .line 408
    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 412
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v53, v0

    .line 413
    .local v53, "typeKey":Ljava/lang/String;
    const-wide/16 v42, 0x0

    .line 415
    .local v42, "matchFieldHash":J
    const/16 v26, 0x0

    .local v26, "fieldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v50, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v50, "size":I
    move-object/from16 v33, v9

    .line 416
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v33, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_13
    :goto_3
    const/4 v6, 0x0

    .line 417
    .local v6, "key":Ljava/lang/String;
    const/16 v22, 0x0

    .line 418
    .local v22, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v27, 0x0

    .line 419
    .local v27, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v21, 0x0

    .line 421
    .local v21, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    cmp-long v4, v42, v4

    if-eqz v4, :cond_15

    .line 422
    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v22

    .line 423
    if-eqz v22, :cond_14

    .line 424
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v27, v0

    .line 425
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 427
    :cond_14
    const-wide/16 v42, 0x0

    .line 430
    :cond_15
    if-nez v22, :cond_16

    .line 431
    move/from16 v0, v26

    move/from16 v1, v50

    if-ge v0, v1, :cond_1b

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v22, v4, v26

    .line 433
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v27, v0

    .line 434
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 435
    add-int/lit8 v26, v26, 0x1

    .line 441
    :cond_16
    :goto_4
    const/16 v41, 0x0

    .line 442
    .local v41, "matchField":Z
    const/16 v58, 0x0

    .line 444
    .local v58, "valueParsed":Z
    const/16 v28, 0x0

    .line 445
    .local v28, "fieldValue":Ljava/lang/Object;
    const/16 v32, 0x0

    .line 446
    .local v32, "fieldValueInt":I
    const-wide/16 v34, 0x0

    .line 447
    .local v34, "fieldValueLong":J
    const/16 v29, 0x0

    .line 448
    .local v29, "fieldValueFloat":F
    const-wide/16 v30, 0x0

    .line 449
    .local v30, "fieldValueDouble":D
    if-eqz v22, :cond_18

    .line 450
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-wide/from16 v24, v0

    .line 451
    .local v24, "fieldHashCode":J
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_17

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_1d

    .line 453
    :cond_17
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v32

    .line 455
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1c

    .line 456
    const/16 v41, 0x1

    .line 457
    const/16 v58, 0x1

    .line 595
    .end local v24    # "fieldHashCode":J
    .end local v28    # "fieldValue":Ljava/lang/Object;
    :cond_18
    :goto_5
    if-nez v41, :cond_50

    .line 596
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 598
    if-nez v6, :cond_3b

    .line 599
    move-object/from16 v0, v39

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v52, v0

    .line 600
    const/16 v4, 0xd

    move/from16 v0, v52

    if-ne v0, v4, :cond_3a

    .line 601
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v33

    .line 801
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    if-nez p4, :cond_77

    .line 802
    if-nez v9, :cond_70

    .line 803
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 804
    if-nez v11, :cond_19

    .line 805
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 854
    :cond_19
    if-eqz v11, :cond_1a

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v56, p4

    .line 807
    goto/16 :goto_0

    .line 437
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v29    # "fieldValueFloat":F
    .end local v30    # "fieldValueDouble":D
    .end local v32    # "fieldValueInt":I
    .end local v34    # "fieldValueLong":J
    .end local v41    # "matchField":Z
    .end local v58    # "valueParsed":Z
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1b
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 458
    .restart local v24    # "fieldHashCode":J
    .restart local v28    # "fieldValue":Ljava/lang/Object;
    .restart local v29    # "fieldValueFloat":F
    .restart local v30    # "fieldValueDouble":D
    .restart local v32    # "fieldValueInt":I
    .restart local v34    # "fieldValueLong":J
    .restart local v41    # "matchField":Z
    .restart local v58    # "valueParsed":Z
    :cond_1c
    :try_start_8
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 459
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 460
    goto/16 :goto_3

    .line 462
    :cond_1d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_1e

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_20

    .line 464
    :cond_1e
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v34

    .line 466
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1f

    .line 467
    const/16 v41, 0x1

    .line 468
    const/16 v58, 0x1

    goto :goto_5

    .line 469
    :cond_1f
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 470
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 471
    goto/16 :goto_3

    .line 473
    :cond_20
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_22

    .line 474
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v28

    .line 476
    .local v28, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_21

    .line 477
    const/16 v41, 0x1

    .line 478
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 479
    :cond_21
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 480
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 481
    goto/16 :goto_3

    .line 483
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_22
    const-class v4, Ljava/util/Date;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_24

    .line 484
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v28

    .line 486
    .local v28, "fieldValue":Ljava/util/Date;
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_23

    .line 487
    const/16 v41, 0x1

    .line 488
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 489
    :cond_23
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 490
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 491
    goto/16 :goto_3

    .line 493
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_24
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_25

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_27

    .line 495
    :cond_25
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 497
    .local v28, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_26

    .line 498
    const/16 v41, 0x1

    .line 499
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 500
    :cond_26
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 501
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 502
    goto/16 :goto_3

    .line 504
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_27
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_28

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2a

    .line 505
    :cond_28
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v29

    .line 507
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_29

    .line 508
    const/16 v41, 0x1

    .line 509
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 510
    :cond_29
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 511
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 512
    goto/16 :goto_3

    .line 514
    :cond_2a
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_2b

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2d

    .line 515
    :cond_2b
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v30

    .line 517
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2c

    .line 518
    const/16 v41, 0x1

    .line 519
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 520
    :cond_2c
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 521
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 522
    goto/16 :goto_3

    .line 524
    :cond_2d
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v4, :cond_2f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 525
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v4, :cond_2f

    .line 527
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v18

    .line 529
    .local v18, "enumNameHashCode":J
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2e

    .line 530
    const/16 v41, 0x1

    .line 531
    const/16 v58, 0x1

    .line 533
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v28

    .local v28, "fieldValue":Ljava/lang/Enum;
    goto/16 :goto_5

    .line 534
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_2e
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 535
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 536
    goto/16 :goto_3

    .line 538
    .end local v18    # "enumNameHashCode":J
    :cond_2f
    const-class v4, [I

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_31

    .line 539
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v28

    .line 541
    .local v28, "fieldValue":[I
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_30

    .line 542
    const/16 v41, 0x1

    .line 543
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 544
    :cond_30
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 545
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 546
    goto/16 :goto_3

    .line 548
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_31
    const-class v4, [F

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_33

    .line 549
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v28

    .line 551
    .local v28, "fieldValue":[F
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_32

    .line 552
    const/16 v41, 0x1

    .line 553
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 554
    :cond_32
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 555
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 556
    goto/16 :goto_3

    .line 558
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_33
    const-class v4, [D

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_35

    .line 559
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v28

    .line 561
    .local v28, "fieldValue":[D
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_34

    .line 562
    const/16 v41, 0x1

    .line 563
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 564
    :cond_34
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 565
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 566
    goto/16 :goto_3

    .line 568
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_35
    const-class v4, [[F

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_37

    .line 569
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v28

    .line 571
    .local v28, "fieldValue":[[F
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_36

    .line 572
    const/16 v41, 0x1

    .line 573
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 574
    :cond_36
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 575
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 576
    goto/16 :goto_3

    .line 578
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_37
    const-class v4, [[D

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_39

    .line 579
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v28

    .line 581
    .local v28, "fieldValue":[[D
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_38

    .line 582
    const/16 v41, 0x1

    .line 583
    const/16 v58, 0x1

    goto/16 :goto_5

    .line 584
    :cond_38
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 585
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v42, v0

    .line 586
    goto/16 :goto_3

    .line 588
    .local v28, "fieldValue":Ljava/lang/Object;
    :cond_39
    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 589
    const/16 v41, 0x1

    goto/16 :goto_5

    .line 604
    .end local v24    # "fieldHashCode":J
    .end local v28    # "fieldValue":Ljava/lang/Object;
    :cond_3a
    const/16 v4, 0x10

    move/from16 v0, v52

    if-eq v0, v4, :cond_13

    .line 609
    :cond_3b
    const-string v4, "$ref"

    if-ne v4, v6, :cond_45

    if-eqz v12, :cond_45

    .line 610
    const/16 v4, 0x3a

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 611
    move-object/from16 v0, v39

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v52, v0

    .line 612
    const/4 v4, 0x4

    move/from16 v0, v52

    if-ne v0, v4, :cond_42

    .line 613
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v48

    .line 614
    .local v48, "ref":Ljava/lang/String;
    const-string v4, "@"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 615
    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 644
    :goto_7
    const/16 v4, 0xd

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 645
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_43

    .line 646
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 854
    .end local v29    # "fieldValueFloat":F
    .end local v30    # "fieldValueDouble":D
    .end local v32    # "fieldValueInt":I
    .end local v34    # "fieldValueLong":J
    .end local v41    # "matchField":Z
    .end local v48    # "ref":Ljava/lang/String;
    .end local v58    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 616
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v29    # "fieldValueFloat":F
    .restart local v30    # "fieldValueDouble":D
    .restart local v32    # "fieldValueInt":I
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValueLong":J
    .restart local v41    # "matchField":Z
    .restart local v48    # "ref":Ljava/lang/String;
    .restart local v58    # "valueParsed":Z
    :cond_3c
    const-string v4, ".."

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 617
    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v47, v0

    .line 618
    .local v47, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    .line 619
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 621
    :cond_3d
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 622
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_7

    .line 624
    .end local v47    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3e
    const-string v4, "$"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 625
    move-object/from16 v49, v12

    .line 626
    .local v49, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_8
    move-object/from16 v0, v49

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_3f

    .line 627
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v49, v0

    goto :goto_8

    .line 630
    :cond_3f
    move-object/from16 v0, v49

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 631
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 633
    :cond_40
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 634
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 637
    .end local v49    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_41
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v48

    invoke-direct {v4, v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 638
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    .line 641
    .end local v48    # "ref":Ljava/lang/String;
    :cond_42
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v52 .. v52}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 648
    .restart local v48    # "ref":Ljava/lang/String;
    :cond_43
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 650
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 854
    if-eqz v11, :cond_44

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_44
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v56, p4

    .line 652
    goto/16 :goto_0

    .line 656
    .end local v48    # "ref":Ljava/lang/String;
    :cond_45
    if-eqz v53, :cond_46

    :try_start_9
    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    const-string v4, "@type"

    if-ne v4, v6, :cond_50

    .line 658
    :cond_47
    const/16 v4, 0x3a

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 659
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4f

    .line 660
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v55

    .line 661
    .local v55, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 663
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_48

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 664
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_13

    .line 665
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v9, v33

    .line 666
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 671
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_48
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v4, v5, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v13

    .line 672
    .local v13, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/16 v57, 0x0

    .line 673
    .local v57, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_4a

    .line 674
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v0, v39

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v57

    .line 676
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v20

    .line 677
    .local v20, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v20, :cond_49

    if-eqz v57, :cond_4d

    .line 678
    move-object/from16 v0, v20

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 679
    :cond_49
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    .line 686
    .end local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4a
    instance-of v4, v13, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v4, :cond_4e

    .line 687
    move-object v0, v13

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object/from16 v38, v0

    .line 688
    .local v38, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    const/4 v4, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    move-object/from16 v2, v57

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .line 689
    .local v56, "typedObject":Ljava/lang/Object;
    if-eqz v53, :cond_4b

    .line 690
    move-object/from16 v0, v38

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v54

    .line 691
    .local v54, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v54, :cond_4b

    .line 692
    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 854
    .end local v38    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v54    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4b
    :goto_9
    if-eqz v11, :cond_4c

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_4c
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    .line 681
    .end local v56    # "typedObject":Ljava/lang/Object;
    .restart local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4d
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 696
    .end local v20    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v57

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .restart local v56    # "typedObject":Ljava/lang/Object;
    goto :goto_9

    .line 700
    .end local v13    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v55    # "typeName":Ljava/lang/String;
    .end local v56    # "typedObject":Ljava/lang/Object;
    .end local v57    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 705
    :cond_50
    if-nez p4, :cond_7b

    if-nez v33, :cond_7b

    .line 706
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 707
    if-nez p4, :cond_7a

    .line 708
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 710
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_a
    if-nez v14, :cond_51

    .line 711
    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    .line 715
    :cond_51
    :goto_b
    if-eqz v41, :cond_6a

    .line 716
    if-nez v58, :cond_53

    .line 717
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 783
    :cond_52
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6c

    move-object/from16 v33, v9

    .line 784
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 719
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_53
    if-nez p4, :cond_5c

    .line 720
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_54

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_56

    .line 721
    :cond_54
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 729
    :cond_55
    :goto_c
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :goto_d
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_52

    goto/16 :goto_6

    .line 722
    :cond_56
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_57

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_58

    .line 723
    :cond_57
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .local v28, "fieldValue":Ljava/lang/Long;
    goto :goto_c

    .line 724
    .end local v28    # "fieldValue":Ljava/lang/Long;
    :cond_58
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_59

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5a

    .line 725
    :cond_59
    new-instance v28, Ljava/lang/Float;

    invoke-direct/range {v28 .. v29}, Ljava/lang/Float;-><init>(F)V

    .local v28, "fieldValue":Ljava/lang/Float;
    goto :goto_c

    .line 726
    .end local v28    # "fieldValue":Ljava/lang/Float;
    :cond_5a
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_5b

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_55

    .line 727
    :cond_5b
    new-instance v28, Ljava/lang/Double;

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .local v28, "fieldValue":Ljava/lang/Double;
    goto :goto_c

    .line 730
    .end local v28    # "fieldValue":Ljava/lang/Double;
    :cond_5c
    if-nez v28, :cond_69

    .line 732
    :try_start_c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_5d

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5f

    .line 733
    :cond_5d
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_5e

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5e

    .line 734
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    .line 759
    :catch_0
    move-exception v17

    .line 760
    .local v17, "ex":Ljava/lang/IllegalAccessException;
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set property error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 736
    .end local v17    # "ex":Ljava/lang/IllegalAccessException;
    :cond_5e
    :try_start_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 738
    :cond_5f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_60

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_62

    .line 739
    :cond_60
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_61

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_61

    .line 740
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_d

    .line 742
    :cond_61
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 744
    :cond_62
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_63

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_65

    .line 745
    :cond_63
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_64

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_64

    .line 746
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto/16 :goto_d

    .line 748
    :cond_64
    new-instance v4, Ljava/lang/Float;

    move/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 750
    :cond_65
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-eq v0, v4, :cond_66

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_68

    .line 751
    :cond_66
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_67

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_67

    .line 752
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_d

    .line 754
    :cond_67
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v30

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 757
    :cond_68
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d

    .line 763
    :cond_69
    :try_start_f
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_6a
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 770
    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v40

    .line 771
    .local v40, "match":Z
    if-nez v40, :cond_6b

    .line 772
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_79

    .line 773
    invoke-virtual/range {v39 .. v39}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_6

    .line 778
    :cond_6b
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_52

    .line 779
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 787
    .end local v40    # "match":Z
    :cond_6c
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6d

    .line 788
    const/16 v4, 0x10

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_6

    .line 792
    :cond_6d
    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6e

    move-object/from16 v0, v39

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6f

    .line 793
    :cond_6e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6f
    move-object/from16 v33, v9

    .line 799
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 810
    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    move-object/from16 v45, v0

    .line 811
    .local v45, "paramNames":[Ljava/lang/String;
    if-eqz v45, :cond_72

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v50, v0

    .line 812
    :goto_e
    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    .line 813
    .local v46, "params":[Ljava/lang/Object;
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_f
    move/from16 v0, v36

    move/from16 v1, v50

    if-ge v0, v1, :cond_74

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v36

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v27, v0

    .line 816
    if-eqz v45, :cond_73

    .line 817
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 821
    .local v44, "param":Ljava/lang/Object;
    :goto_10
    if-nez v44, :cond_71

    .line 822
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v44

    .line 824
    :cond_71
    aput-object v44, v46, v36

    .line 813
    add-int/lit8 v36, v36, 0x1

    goto :goto_f

    .line 811
    .end local v36    # "i":I
    .end local v44    # "param":Ljava/lang/Object;
    .end local v46    # "params":[Ljava/lang/Object;
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v50, v0

    goto :goto_e

    .line 819
    .restart local v36    # "i":I
    .restart local v46    # "params":[Ljava/lang/Object;
    :cond_73
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .restart local v44    # "param":Ljava/lang/Object;
    goto :goto_10

    .line 827
    .end local v44    # "param":Ljava/lang/Object;
    :cond_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v4, :cond_76

    .line 829
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object p4

    .line 835
    if-eqz v45, :cond_77

    .line 836
    :try_start_11
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_75
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 837
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v23

    .line 838
    .local v23, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v23, :cond_75

    .line 839
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    .line 830
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :catch_1
    move-exception v15

    .line 831
    .local v15, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 832
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 843
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_77

    .line 845
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object p4

    .line 854
    .end local v36    # "i":I
    .end local v45    # "paramNames":[Ljava/lang/String;
    .end local v46    # "params":[Ljava/lang/Object;
    :cond_77
    if-eqz v11, :cond_78

    .line 855
    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 857
    :cond_78
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v56, p4

    .line 852
    goto/16 :goto_0

    .line 846
    .restart local v36    # "i":I
    .restart local v45    # "paramNames":[Ljava/lang/String;
    .restart local v46    # "params":[Ljava/lang/Object;
    :catch_2
    move-exception v15

    .line 847
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .end local v15    # "e":Ljava/lang/Exception;
    .end local v36    # "i":I
    .end local v45    # "paramNames":[Ljava/lang/String;
    .end local v46    # "params":[Ljava/lang/Object;
    .restart local v40    # "match":Z
    :cond_79
    move-object/from16 v33, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .end local v40    # "match":Z
    :cond_7a
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7b
    move-object/from16 v9, v33

    .end local v33    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_b
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 124
    .local v15, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    .line 127
    .local v20, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v12, v0, :cond_2f

    .line 128
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    const/16 v19, 0x5d

    .line 129
    .local v19, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    aget-object v10, v23, v12

    .line 130
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v11, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 131
    .local v11, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 133
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_7

    .line 134
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 135
    .local v14, "intValue":I
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 136
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 141
    :goto_2
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 142
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 143
    .local v13, "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_3

    const/16 v23, 0x1a

    .line 145
    :goto_3
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 146
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 127
    .end local v13    # "index":I
    .end local v14    # "intValue":I
    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 128
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "seperator":C
    :cond_1
    const/16 v19, 0x2c

    goto :goto_1

    .line 138
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v14    # "intValue":I
    .restart local v19    # "seperator":C
    :cond_2
    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 323
    .end local v14    # "intValue":I
    :catch_0
    move-exception v6

    .line 324
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "error"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 143
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v13    # "index":I
    .restart local v14    # "intValue":I
    :cond_3
    :try_start_1
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 145
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_3

    .line 147
    .end local v13    # "index":I
    :cond_4
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 148
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 149
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_5

    const/16 v23, 0x1a

    .line 151
    :goto_5
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 152
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_4

    .line 149
    :cond_5
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 151
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_5

    .line 154
    .end local v13    # "index":I
    :cond_6
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_4

    .line 156
    .end local v14    # "intValue":I
    :cond_7
    const-class v23, Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_10

    .line 158
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 159
    const/16 v23, 0x22

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v21

    .line 174
    .local v21, "strVal":Ljava/lang/String;
    :goto_6
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 175
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :goto_7
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 181
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 182
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_c

    const/16 v23, 0x1a

    .line 184
    :goto_8
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 185
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 160
    .end local v13    # "index":I
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_8
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x6e

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "null"

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v25, v0

    .line 161
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 162
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 164
    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 165
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    const/16 v23, 0x1a

    .line 167
    :goto_9
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 169
    const/16 v21, 0x0

    .restart local v21    # "strVal":Ljava/lang/String;
    goto :goto_6

    .line 165
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_9
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 167
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_9

    .line 171
    .end local v13    # "index":I
    :cond_a
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "not match string. feild : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 177
    .restart local v21    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 182
    .restart local v13    # "index":I
    :cond_c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 184
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto/16 :goto_8

    .line 186
    .end local v13    # "index":I
    :cond_d
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 187
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 188
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    const/16 v23, 0x1a

    .line 190
    :goto_a
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 191
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 188
    :cond_e
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 190
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_a

    .line 193
    .end local v13    # "index":I
    :cond_f
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 195
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_10
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_16

    .line 196
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    .line 197
    .local v16, "longValue":J
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 198
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 203
    :goto_b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 204
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 205
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_12

    const/16 v23, 0x1a

    .line 207
    :goto_c
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 208
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 200
    .end local v13    # "index":I
    :cond_11
    new-instance v23, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 205
    .restart local v13    # "index":I
    :cond_12
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 207
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_c

    .line 209
    .end local v13    # "index":I
    :cond_13
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 210
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 211
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_14

    const/16 v23, 0x1a

    .line 213
    :goto_d
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 214
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 211
    :cond_14
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 213
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_d

    .line 216
    .end local v13    # "index":I
    :cond_15
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 218
    .end local v16    # "longValue":J
    :cond_16
    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_1c

    .line 219
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v4

    .line 220
    .local v4, "booleanValue":Z
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 221
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 226
    :goto_e
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 227
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 228
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_18

    const/16 v23, 0x1a

    .line 230
    :goto_f
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 231
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 223
    .end local v13    # "index":I
    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 228
    .restart local v13    # "index":I
    :cond_18
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 230
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_f

    .line 232
    .end local v13    # "index":I
    :cond_19
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 233
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 234
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_1a

    const/16 v23, 0x1a

    .line 236
    :goto_10
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 237
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 234
    :cond_1a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 236
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_10

    .line 239
    .end local v13    # "index":I
    :cond_1b
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 241
    .end local v4    # "booleanValue":Z
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_24

    .line 242
    iget-char v5, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 244
    .local v5, "ch":C
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "enumName":Ljava/lang/String;
    if-nez v8, :cond_1d

    const/16 v22, 0x0

    .line 258
    .end local v8    # "enumName":Ljava/lang/String;
    .local v22, "value":Ljava/lang/Enum;
    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 261
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 262
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_20

    const/16 v23, 0x1a

    .line 264
    :goto_12
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 265
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 248
    .end local v13    # "index":I
    .end local v22    # "value":Ljava/lang/Enum;
    .restart local v8    # "enumName":Ljava/lang/String;
    :cond_1d
    invoke-static {v9, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v22

    goto :goto_11

    .line 249
    .end local v8    # "enumName":Ljava/lang/String;
    :cond_1e
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v5, v0, :cond_1f

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v5, v0, :cond_1f

    .line 250
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 252
    .local v18, "ordinal":I
    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 253
    .local v7, "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    move-object/from16 v23, v0

    aget-object v22, v23, v18

    .line 254
    .restart local v22    # "value":Ljava/lang/Enum;
    goto :goto_11

    .line 255
    .end local v7    # "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    .end local v18    # "ordinal":I
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_1f
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "illegal enum."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 262
    .restart local v13    # "index":I
    .restart local v22    # "value":Ljava/lang/Enum;
    :cond_20
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 264
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_12

    .line 266
    .end local v13    # "index":I
    :cond_21
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 267
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 268
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_22

    const/16 v23, 0x1a

    .line 270
    :goto_13
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 271
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 268
    :cond_22
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 270
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_13

    .line 273
    .end local v13    # "index":I
    :cond_23
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 275
    .end local v5    # "ch":C
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_24
    const-class v23, Ljava/util/Date;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_29

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 276
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    .line 277
    .restart local v16    # "longValue":J
    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 280
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 281
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_25

    const/16 v23, 0x1a

    .line 283
    :goto_14
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 284
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 281
    :cond_25
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 283
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_14

    .line 285
    .end local v13    # "index":I
    :cond_26
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 286
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 287
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_27

    const/16 v23, 0x1a

    .line 289
    :goto_15
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 290
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    .line 287
    :cond_27
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 289
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_15

    .line 292
    .end local v13    # "index":I
    :cond_28
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    .line 295
    .end local v16    # "longValue":J
    :cond_29
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 296
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 297
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2a

    const/16 v23, 0x1a

    .line 299
    :goto_16
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 300
    const/16 v23, 0xe

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 311
    .end local v13    # "index":I
    :goto_17
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 313
    const/16 v23, 0x5d

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    .line 314
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 315
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 297
    .restart local v13    # "index":I
    :cond_2a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 299
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_16

    .line 301
    .end local v13    # "index":I
    :cond_2b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x7b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 302
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 303
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2c

    const/16 v23, 0x1a

    .line 305
    :goto_18
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 306
    const/16 v23, 0xc

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_17

    .line 303
    :cond_2c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 305
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_18

    .line 308
    .end local v13    # "index":I
    :cond_2d
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_17

    .line 317
    :cond_2e
    const/16 v23, 0x2c

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 318
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "seperator":C
    :cond_2f
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 329
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 330
    .restart local v13    # "index":I
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_30

    const/16 v23, 0x1a

    .line 332
    :goto_19
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 333
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 338
    .end local v13    # "index":I
    :goto_1a
    return-object p4

    .line 330
    .restart local v13    # "index":I
    :cond_30
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 332
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_19

    .line 335
    .end local v13    # "index":I
    :cond_31
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1a
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 21
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 949
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v19, v0

    .line 951
    .local v19, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    .line 953
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v15, :cond_0

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    .line 957
    :cond_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v20, v0

    .line 958
    .local v20, "mask":I
    if-nez v15, :cond_7

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int v5, v5, v20

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int v5, v5, v20

    if-eqz v5, :cond_7

    .line 961
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v5, :cond_6

    .line 962
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v14, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 963
    .local v14, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .local v12, "c":Ljava/lang/Class;
    :goto_0
    if-eqz v12, :cond_5

    const-class v5, Ljava/lang/Object;

    if-eq v12, v5, :cond_5

    .line 964
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    .line 965
    .local v18, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v18

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v9, v18, v5

    .line 966
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    .line 967
    .local v17, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 965
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 970
    :cond_3
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    .line 971
    .local v16, "fieldModifiers":I
    and-int/lit8 v7, v16, 0x10

    if-nez v7, :cond_2

    and-int/lit8 v7, v16, 0x8

    if-nez v7, :cond_2

    .line 974
    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 963
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "fieldModifiers":I
    .end local v17    # "fieldName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_0

    .line 977
    .end local v18    # "fields":[Ljava/lang/reflect/Field;
    :cond_5
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 980
    .end local v12    # "c":Ljava/lang/Class;
    .end local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 981
    .local v13, "deserOrField":Ljava/lang/Object;
    if-eqz v13, :cond_7

    .line 982
    instance-of v5, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v5, :cond_8

    move-object v15, v13

    .line 983
    check-cast v15, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 994
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_7
    :goto_3
    if-nez v15, :cond_9

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    const/4 v5, 0x0

    .line 1004
    :goto_4
    return v5

    .restart local v13    # "deserOrField":Ljava/lang/Object;
    :cond_8
    move-object v9, v13

    .line 985
    check-cast v9, Ljava/lang/reflect/Field;

    .line 986
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 987
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 988
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v15, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v15, v5, v6, v4}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 989
    .restart local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0, v15}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1000
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_9
    const/16 v5, 0x3a

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 1002
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1004
    const/4 v5, 0x1

    goto :goto_4
.end method

.method private smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1008
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v10

    .line 1009
    .local v10, "smartKeyHash":J
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v9, :cond_1

    .line 1010
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    new-array v3, v9, [J

    .line 1011
    .local v3, "hashArray":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    if-ge v4, v9, :cond_0

    .line 1012
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v3, v4

    .line 1011
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 1015
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 1020
    .end local v3    # "hashArray":[J
    .end local v4    # "i":I
    :cond_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    .line 1021
    .local v8, "pos":I
    const/4 v5, 0x0

    .line 1022
    .local v5, "is":Z
    if-gez v8, :cond_2

    const-string v9, "is"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1023
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v10

    .line 1024
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    .line 1027
    :cond_2
    if-ltz v8, :cond_7

    .line 1028
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    if-nez v9, :cond_5

    .line 1029
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v9, v9

    new-array v6, v9, [I

    .line 1030
    .local v6, "mapping":[I
    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 1031
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v9

    if-ge v4, v9, :cond_4

    .line 1032
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v12, v12, v4

    iget-object v12, v12, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 1033
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v12

    .line 1032
    invoke-static {v9, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 1034
    .local v7, "p":I
    if-ltz v7, :cond_3

    .line 1035
    aput v4, v6, v7

    .line 1031
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1038
    .end local v7    # "p":I
    :cond_4
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 1041
    .end local v4    # "i":I
    .end local v6    # "mapping":[I
    :cond_5
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    aget v0, v9, v8

    .line 1042
    .local v0, "deserIndex":I
    const/4 v9, -0x1

    if-eq v0, v9, :cond_7

    .line 1043
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v9, v0

    .line 1044
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v9, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1045
    .local v1, "fieldClass":Ljava/lang/Class;
    if-eqz v5, :cond_6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v9, :cond_6

    const-class v9, Ljava/lang/Boolean;

    if-eq v1, v9, :cond_6

    .line 1046
    const/4 v2, 0x0

    .line 1052
    .end local v0    # "deserIndex":I
    .end local v1    # "fieldClass":Ljava/lang/Class;
    .end local v2    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    :goto_2
    return-object v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 70
    instance-of v10, p2, Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 71
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, p2

    .line 72
    check-cast v0, Ljava/lang/Class;

    .line 73
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 74
    .local v4, "loader":Ljava/lang/ClassLoader;
    iget-object v10, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    move v6, v8

    .line 75
    .local v6, "ordered":Z
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 76
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v9

    invoke-static {v4, v8, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 114
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "ordered":Z
    :cond_0
    :goto_1
    return-object v7

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    move v6, v9

    .line 74
    goto :goto_0

    .line 81
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_0

    .line 85
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-gtz v8, :cond_0

    .line 91
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 92
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v8, :cond_7

    .line 93
    if-eqz v1, :cond_6

    .line 94
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 102
    .local v5, "object":Ljava/lang/Object;
    :goto_2
    if-eqz p1, :cond_8

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    .line 104
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_8

    aget-object v3, v8, v9

    .line 105
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v11, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_5

    .line 106
    const-string v11, ""

    invoke-virtual {v3, v5, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 96
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "object":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 99
    .end local v5    # "object":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v11, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v11, v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 110
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create instance error, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_8
    move-object v7, v5

    .line 114
    goto/16 :goto_1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 28
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1092
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v17, 0x0

    .line 1094
    .local v17, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v24, v0

    if-nez v24, :cond_17

    .line 1095
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    .line 1097
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1098
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v10

    .line 1099
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v10, :cond_0

    .line 1103
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    .line 1105
    .local v23, "value":Ljava/lang/Object;
    if-nez v23, :cond_1

    .line 1106
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1107
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_2

    .line 1108
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 1126
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    move-object/from16 v16, v0

    .line 1127
    .local v16, "method":Ljava/lang/reflect/Method;
    if-eqz v16, :cond_9

    .line 1128
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v24

    const/16 v26, 0x0

    aget-object v19, v24, v26

    .line 1129
    .local v19, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v23

    .line 1130
    .restart local v23    # "value":Ljava/lang/Object;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aput-object v23, v24, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1109
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "paramType":Ljava/lang/reflect/Type;
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_3

    .line 1110
    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .local v23, "value":Ljava/lang/Long;
    goto :goto_1

    .line 1111
    .local v23, "value":Ljava/lang/Object;
    :cond_3
    sget-object v24, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_4

    .line 1112
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v23

    .local v23, "value":Ljava/lang/Short;
    goto :goto_1

    .line 1113
    .local v23, "value":Ljava/lang/Object;
    :cond_4
    sget-object v24, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_5

    .line 1114
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v23

    .local v23, "value":Ljava/lang/Byte;
    goto :goto_1

    .line 1115
    .local v23, "value":Ljava/lang/Object;
    :cond_5
    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_6

    .line 1116
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    .local v23, "value":Ljava/lang/Float;
    goto :goto_1

    .line 1117
    .local v23, "value":Ljava/lang/Object;
    :cond_6
    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_7

    .line 1118
    const-wide/16 v26, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    .local v23, "value":Ljava/lang/Double;
    goto :goto_1

    .line 1119
    .local v23, "value":Ljava/lang/Object;
    :cond_7
    sget-object v24, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_8

    .line 1120
    const/16 v24, 0x30

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    .local v23, "value":Ljava/lang/Character;
    goto/16 :goto_1

    .line 1121
    .local v23, "value":Ljava/lang/Object;
    :cond_8
    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-ne v9, v0, :cond_1

    .line 1122
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .local v23, "value":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 1132
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "value":Ljava/lang/Boolean;
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    :cond_9
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1133
    .local v8, "field":Ljava/lang/reflect/Field;
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    .line 1135
    .restart local v19    # "paramType":Ljava/lang/reflect/Type;
    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1136
    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1137
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1141
    :cond_a
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1142
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 1145
    :cond_b
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 1146
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1147
    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 1150
    :cond_c
    sget-object v24, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1151
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1152
    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->longValue()J

    move-result-wide v26

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v8, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 1155
    :cond_d
    sget-object v24, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 1156
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 1157
    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->floatValue()F

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 1159
    :cond_e
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v22, v23

    .line 1160
    check-cast v22, Ljava/lang/String;

    .line 1162
    .local v22, "strVal":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_f

    .line 1163
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1168
    .local v13, "floatValue":F
    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 1165
    .end local v13    # "floatValue":F
    :cond_f
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .restart local v13    # "floatValue":F
    goto :goto_2

    .line 1171
    .end local v13    # "floatValue":F
    .end local v22    # "strVal":Ljava/lang/String;
    :cond_10
    sget-object v24, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1172
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 1173
    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v26

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v8, v0, v1, v2}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 1175
    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_14

    move-object/from16 v22, v23

    .line 1176
    check-cast v22, Ljava/lang/String;

    .line 1178
    .restart local v22    # "strVal":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_12

    .line 1179
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1184
    .local v4, "doubleValue":D
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 1181
    .end local v4    # "doubleValue":D
    :cond_12
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .restart local v4    # "doubleValue":D
    goto :goto_3

    .line 1187
    .end local v4    # "doubleValue":D
    .end local v22    # "strVal":Ljava/lang/String;
    :cond_13
    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 1188
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1192
    :cond_14
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 1193
    .local v14, "format":Ljava/lang/String;
    if-eqz v14, :cond_15

    const-class v24, Ljava/util/Date;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1195
    :try_start_0
    new-instance v24, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1207
    .end local v19    # "paramType":Ljava/lang/reflect/Type;
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1196
    .restart local v19    # "paramType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v6

    .line 1198
    .local v6, "e":Ljava/text/ParseException;
    const/16 v23, 0x0

    .line 1199
    .local v23, "value":Ljava/lang/Object;
    goto :goto_4

    .line 1201
    .end local v6    # "e":Ljava/text/ParseException;
    .end local v23    # "value":Ljava/lang/Object;
    :cond_15
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 1202
    check-cast v19, Ljava/lang/reflect/ParameterizedType;

    .end local v19    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 1204
    .end local v23    # "value":Ljava/lang/Object;
    .restart local v19    # "paramType":Ljava/lang/reflect/Type;
    :cond_16
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 1214
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v14    # "format":Ljava/lang/String;
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v19    # "paramType":Ljava/lang/reflect/Type;
    .end local v23    # "value":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1215
    .local v12, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v0, v12

    move/from16 v21, v0

    .line 1216
    .local v21, "size":I
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 1217
    .local v20, "params":[Ljava/lang/Object;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v15, v0, :cond_19

    .line 1218
    aget-object v11, v12, v15

    .line 1219
    .local v11, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 1220
    .local v18, "param":Ljava/lang/Object;
    if-nez v18, :cond_18

    .line 1221
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    .line 1223
    :cond_18
    aput-object v18, v20, v15

    .line 1217
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1226
    .end local v11    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "param":Ljava/lang/Object;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1a

    .line 1228
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 1235
    .end local v12    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "i":I
    .end local v17    # "object":Ljava/lang/Object;
    .end local v20    # "params":[Ljava/lang/Object;
    .end local v21    # "size":I
    :cond_1a
    return-object v17

    .line 1229
    .restart local v12    # "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v15    # "i":I
    .restart local v17    # "object":Ljava/lang/Object;
    .restart local v20    # "params":[Ljava/lang/Object;
    .restart local v21    # "size":I
    :catch_1
    move-exception v6

    .line 1230
    .local v6, "e":Ljava/lang/Exception;
    new-instance v24, Lcom/alibaba/fastjson/JSONException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "create instance error, "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v26, v0

    .line 1231
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
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
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 22
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 874
    if-nez p1, :cond_1

    .line 875
    const/4 v6, 0x0

    .line 942
    :cond_0
    :goto_0
    return-object v6

    .line 878
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 879
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    aget-object v6, v18, v10

    .line 881
    .local v6, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 879
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 885
    .end local v6    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 888
    .end local v10    # "i":I
    :cond_3
    const/4 v11, 0x0

    .line 889
    .local v11, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v9, v18, -0x1

    .line 891
    .local v9, "high":I
    :goto_2
    if-gt v11, v9, :cond_6

    .line 892
    add-int v18, v11, v9

    ushr-int/lit8 v13, v18, 0x1

    .line 894
    .local v13, "mid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 896
    .local v7, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 898
    .local v4, "cmp":I
    if-gez v4, :cond_4

    .line 899
    add-int/lit8 v11, v13, 0x1

    goto :goto_2

    .line 900
    :cond_4
    if-lez v4, :cond_5

    .line 901
    add-int/lit8 v9, v13, -0x1

    goto :goto_2

    .line 903
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    aget-object v6, v18, v13

    goto :goto_0

    .line 907
    .end local v4    # "cmp":I
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v13    # "mid":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v6, v18

    goto/16 :goto_0

    .line 911
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v8, v0, [J

    .line 913
    .local v8, "hashArray":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_8

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v8, v10

    .line 913
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 916
    :cond_8
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    .line 917
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 920
    .end local v8    # "hashArray":[J
    .end local v10    # "i":I
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v16

    .line 921
    .local v16, "smartKeyHash":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v15

    .line 922
    .local v15, "pos":I
    if-ltz v15, :cond_d

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v12, v0, [I

    .line 925
    .local v12, "mapping":[I
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/util/Arrays;->fill([II)V

    .line 926
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 928
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v20

    .line 927
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    .line 929
    .local v14, "p":I
    if-ltz v14, :cond_a

    .line 930
    aput v10, v12, v14

    .line 926
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 933
    .end local v14    # "p":I
    :cond_b
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 936
    .end local v10    # "i":I
    .end local v12    # "mapping":[I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    move-object/from16 v18, v0

    aget v5, v18, v15

    .line 937
    .local v5, "deserIndex":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_d

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v18, v0

    aget-object v6, v18, v5

    goto/16 :goto_0

    .line 942
    .end local v5    # "deserIndex":I
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5
    .param p1, "fieldHash"    # J

    .prologue
    .line 862
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 863
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v2, v1

    .line 864
    .local v0, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 869
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_1
    return-object v0

    .line 862
    .restart local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1239
    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 1260
    :cond_0
    :goto_0
    return-object v2

    .line 1243
    :cond_1
    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 1244
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1245
    .local v1, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v9, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 1246
    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 1248
    .local v2, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1249
    .local v3, "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1253
    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v4

    .line 1254
    .local v4, "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 1255
    goto :goto_0

    .line 1243
    .end local v2    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v3    # "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .end local v4    # "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    move-object v2, v5

    .line 1260
    goto :goto_0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1056
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1057
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 1058
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setter not found, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1061
    :cond_0
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 1062
    const/4 v6, 0x0

    .line 1063
    .local v6, "type":Ljava/lang/reflect/Type;
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1064
    .local v3, "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
    if-eqz v3, :cond_1

    .line 1065
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1066
    .local v2, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v2, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 1067
    goto :goto_0

    .line 1070
    .end local v2    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    :cond_1
    if-nez v6, :cond_3

    .line 1071
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 1074
    .local v7, "value":Ljava/lang/Object;
    :goto_1
    instance-of v8, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v8, :cond_4

    move-object v0, p2

    .line 1075
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1076
    .local v0, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v0, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    .end local v0    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_2
    return-void

    .line 1072
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1080
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1081
    .local v1, "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
    if-eqz v1, :cond_2

    .line 1082
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1083
    .local v5, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v5, p2, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
