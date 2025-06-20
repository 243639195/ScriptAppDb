.class public Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "DefaultFieldDeserializer.java"


# instance fields
.field protected fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 1
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-nez v15, :cond_0

    .line 35
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 38
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 39
    .local v6, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p3

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    .line 40
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 42
    .local v8, "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v8, :cond_1

    .line 43
    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/alibaba/fastjson/parser/ParseContext;->type:Ljava/lang/reflect/Type;

    .line 46
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-static {v15, v0, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 47
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 50
    .end local v8    # "objContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    instance-of v15, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_3

    move-object/from16 v0, p3

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_3

    move-object v5, v6

    .line 52
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .local v5, "fieldParamType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v9, p3

    .line 53
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 55
    .local v9, "objectParamType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 58
    .local v2, "args":[Ljava/lang/reflect/Type;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 59
    .local v11, "rawType":Ljava/lang/reflect/Type;
    instance-of v15, v11, Ljava/lang/Class;

    if-eqz v15, :cond_3

    move-object v10, v11

    .line 60
    check-cast v10, Ljava/lang/Class;

    .line 61
    .local v10, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v13

    .line 62
    .local v13, "typeParameters":[Ljava/lang/reflect/TypeVariable;
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-static {v2, v13, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 63
    .local v3, "changed":Z
    if-eqz v3, :cond_3

    .line 64
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v2, v15, v0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 68
    .end local v2    # "args":[Ljava/lang/reflect/Type;
    .end local v3    # "changed":Z
    .end local v5    # "fieldParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v9    # "objectParamType":Ljava/lang/reflect/ParameterizedType;
    .end local v10    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "rawType":Ljava/lang/reflect/Type;
    .end local v13    # "typeParameters":[Ljava/lang/reflect/TypeVariable;
    .restart local v6    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v15, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 70
    .local v7, "format":Ljava/lang/String;
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    instance-of v15, v15, Lcom/alibaba/fastjson/serializer/DateCodec;

    if-eqz v15, :cond_5

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    check-cast v15, Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v6, v1, v7}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 75
    .local v14, "value":Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v12

    .line 77
    .local v12, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    move-object/from16 v0, p0

    iput-object v0, v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 78
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v15, v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 79
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 97
    .end local v12    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_4
    :goto_1
    return-void

    .line 73
    .end local v14    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldValueDeserilizer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 81
    :cond_6
    if-nez p2, :cond_7

    .line 82
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v15, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_7
    if-nez v14, :cond_8

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 86
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v15, :cond_4

    .line 94
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
