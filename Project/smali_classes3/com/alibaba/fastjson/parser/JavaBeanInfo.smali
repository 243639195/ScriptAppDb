.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final creatorConstructorParameters:[Ljava/lang/String;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeKeyHashCode:J

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 11
    .param p4, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p5, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p6, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p8, "creatorConstructorParameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 49
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 50
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 51
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 52
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 53
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 55
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    array-length v7, v0

    move-object/from16 v0, p5

    array-length v8, v0

    if-ne v7, v8, :cond_0

    .line 57
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 62
    :goto_0
    const/4 v3, 0x0

    .line 63
    .local v3, "parserFeatures":I
    if-eqz p7, :cond_3

    .line 64
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .end local v6    # "typeName":Ljava/lang/String;
    :goto_1
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 67
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "typeKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .end local v5    # "typeKey":Ljava/lang/String;
    :goto_2
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 70
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_4

    aget-object v2, v8, v7

    .line 71
    .local v2, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v10, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v3, v10

    .line 70
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 59
    .end local v2    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    .end local v3    # "parserFeatures":I
    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto :goto_0

    .line 65
    .restart local v3    # "parserFeatures":I
    .restart local v6    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 68
    .end local v6    # "typeName":Ljava/lang/String;
    .restart local v5    # "typeKey":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 74
    .end local v5    # "typeKey":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 75
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 77
    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 78
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKeyHashCode:J

    .line 82
    :goto_4
    iput v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "supportBeanToArray":Z
    if-eqz p7, :cond_7

    .line 86
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_7

    aget-object v2, v8, v7

    .line 87
    .restart local v2    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v2, v10, :cond_5

    .line 88
    const/4 v4, 0x1

    .line 86
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 80
    .end local v2    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    .end local v4    # "supportBeanToArray":Z
    :cond_6
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKeyHashCode:J

    goto :goto_4

    .line 92
    .restart local v4    # "supportBeanToArray":Z
    :cond_7
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 94
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p6

    .line 95
    invoke-static/range {p5 .. p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .end local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_6
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 97
    if-eqz p2, :cond_9

    .line 98
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    .line 100
    :goto_7
    iput v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 102
    return-void

    .restart local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_8
    move-object/from16 p5, p6

    .line 95
    goto :goto_6

    .line 98
    .end local p5    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_9
    if-eqz p4, :cond_a

    .line 100
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    goto :goto_7
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "fieldOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez p2, :cond_2

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 190
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 191
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v3, 0x0

    .line 203
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 201
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 81
    .param p1, "classModifiers"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .param p7, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x0

    .line 216
    .local v19, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v56, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v45, Ljava/util/HashMap;

    invoke-direct/range {v45 .. v45}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v45, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v49

    .line 221
    .local v49, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v65

    .line 222
    .local v65, "kotlin":Z
    const/16 v54, 0x0

    .line 223
    .local v54, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1

    move-object/from16 v0, v49

    array-length v6, v0

    const/4 v13, 0x1

    if-eq v6, v13, :cond_0

    if-nez v65, :cond_1

    .line 225
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v54

    .line 230
    :goto_0
    if-nez v54, :cond_1

    .line 231
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/lit8 v6, p1, 0x8

    if-nez v6, :cond_1

    .line 232
    move-object/from16 v0, v49

    array-length v13, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_1

    aget-object v48, v49, v6

    .line 233
    .local v48, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v48 .. v48}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 234
    .local v76, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x0

    aget-object v14, v76, v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 235
    move-object/from16 v54, v48

    .line 243
    .end local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    const/16 v51, 0x0

    .line 244
    .local v51, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v20, 0x0

    .line 245
    .local v20, "creatorConstructorParameters":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 248
    .local v16, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz p3, :cond_5

    .line 249
    const/16 v69, 0x0

    .line 281
    .local v69, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v52

    .line 283
    .local v52, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_2

    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_b

    :cond_2
    const/16 v63, 0x1

    .line 285
    .local v63, "isInterfaceOrAbstract":Z
    :goto_3
    if-eqz v54, :cond_3

    if-eqz v63, :cond_2d

    .line 286
    :cond_3
    const/16 v51, 0x0

    .line 287
    move-object/from16 v0, v49

    array-length v13, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_d

    aget-object v48, v49, v6

    .line 288
    .restart local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 289
    .local v29, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v29, :cond_f

    .line 290
    if-eqz v51, :cond_c

    .line 291
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "multi-json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 232
    .end local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v20    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v51    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v63    # "isInterfaceOrAbstract":Z
    .end local v69    # "methods":[Ljava/lang/reflect/Method;
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    .end local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v20    # "creatorConstructorParameters":[Ljava/lang/String;
    .restart local v51    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v66, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v47, p0

    .local v47, "cls":Ljava/lang/Class;
    :goto_5
    if-eqz v47, :cond_a

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v47

    if-eq v0, v6, :cond_a

    .line 254
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v53

    .line 255
    .local v53, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v53

    array-length v13, v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_9

    aget-object v23, v53, v6

    .line 256
    .local v23, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v70

    .line 258
    .local v70, "modifier":I
    and-int/lit8 v14, v70, 0x8

    if-eqz v14, :cond_8

    .line 259
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 260
    if-eqz v16, :cond_6

    .line 261
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "multi-json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 264
    :cond_6
    move-object/from16 v16, v23

    .line 255
    :cond_7
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 269
    :cond_8
    and-int/lit8 v14, v70, 0x2

    if-nez v14, :cond_7

    move/from16 v0, v70

    and-int/lit16 v14, v0, 0x100

    if-nez v14, :cond_7

    and-int/lit8 v14, v70, 0x4

    if-nez v14, :cond_7

    .line 273
    move-object/from16 v0, v66

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 253
    .end local v23    # "method":Ljava/lang/reflect/Method;
    .end local v70    # "modifier":I
    :cond_9
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v47

    goto :goto_5

    .line 277
    .end local v53    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_a
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/reflect/Method;

    move-object/from16 v69, v0

    .line 278
    .restart local v69    # "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v66

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_2

    .line 283
    .end local v47    # "cls":Ljava/lang/Class;
    .end local v66    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_b
    const/16 v63, 0x0

    goto/16 :goto_3

    .line 294
    .restart local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v63    # "isInterfaceOrAbstract":Z
    :cond_c
    move-object/from16 v51, v48

    .line 299
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_d
    if-eqz v51, :cond_16

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 302
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 303
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_10

    .line 304
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v60

    .line 307
    .local v60, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_8
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 308
    .local v74, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .local v61, "i":I
    :goto_9
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_14

    .line 309
    aget-object v75, v74, v61

    .line 310
    .local v75, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v30, 0x0

    .line 311
    .local v30, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v13, :cond_e

    aget-object v73, v75, v6

    .line 312
    .local v73, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_11

    move-object/from16 v30, v73

    .line 313
    check-cast v30, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 317
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_e
    if-nez v30, :cond_12

    .line 318
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "illegal json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_10
    move-object/from16 v60, v76

    .line 304
    goto :goto_8

    .line 311
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v61    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 321
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_12
    aget-object v7, v76, v61

    .line 322
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v60, v61

    .line 323
    .local v8, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v45

    invoke-static {v0, v6, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 325
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_13

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 329
    :cond_13
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 330
    .local v10, "ordinal":I
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 331
    .local v11, "serialzeFeatures":I
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 338
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 308
    add-int/lit8 v61, v61, 0x1

    goto :goto_9

    .line 341
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_14
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 342
    .local v17, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 344
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 345
    .local v18, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 348
    if-eqz p4, :cond_15

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    .line 350
    :goto_b
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 351
    const/16 v61, 0x0

    :goto_c
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_2d

    .line 352
    aget-object v6, v17, v61

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v6, v20, v61

    .line 351
    add-int/lit8 v61, v61, 0x1

    goto :goto_c

    .line 348
    :cond_15
    const/16 v19, 0x0

    goto :goto_b

    .line 355
    .end local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_16
    if-eqz v16, :cond_1f

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 358
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 360
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v6, v0

    if-lez v6, :cond_2d

    .line 361
    if-eqz p6, :cond_18

    .line 362
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v59

    .line 365
    .local v59, "genericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 366
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_e
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_1b

    .line 367
    aget-object v75, v74, v61

    .line 368
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v30, 0x0

    .line 369
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v13, :cond_17

    aget-object v73, v75, v6

    .line 370
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_19

    move-object/from16 v30, v73

    .line 371
    check-cast v30, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 375
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_17
    if-nez v30, :cond_1a

    .line 376
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "illegal json creator"

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_18
    move-object/from16 v59, v76

    .line 362
    goto :goto_d

    .line 369
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v61    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 379
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1a
    aget-object v7, v76, v61

    .line 380
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v59, v61

    .line 381
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v45

    invoke-static {v0, v6, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 382
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 383
    .restart local v10    # "ordinal":I
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 384
    .restart local v11    # "serialzeFeatures":I
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 391
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 366
    add-int/lit8 v61, v61, 0x1

    goto :goto_e

    .line 394
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_1b
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 395
    .restart local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 398
    .restart local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 401
    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 402
    move-object/from16 v18, v17

    .line 405
    :cond_1c
    if-nez v19, :cond_1d

    .line 406
    if-eqz p4, :cond_1e

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    .line 408
    :cond_1d
    :goto_10
    new-instance v12, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    .line 764
    .end local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_11
    return-object v12

    .line 406
    .restart local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v61    # "i":I
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1e
    const/16 v19, 0x0

    goto :goto_10

    .line 412
    .end local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v59    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1f
    if-nez v63, :cond_2d

    .line 413
    if-eqz v65, :cond_2c

    move-object/from16 v0, v49

    array-length v6, v0

    if-lez v6, :cond_2c

    .line 414
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v77

    .line 416
    .local v77, "parameters":[Ljava/lang/String;
    if-eqz v77, :cond_2b

    .line 417
    move-object/from16 v0, v49

    array-length v13, v0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v13, :cond_23

    aget-object v48, v49, v6

    .line 418
    .restart local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v48 .. v48}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 419
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v76

    array-length v14, v0

    if-lez v14, :cond_21

    move-object/from16 v0, v76

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v76, v14

    .line 420
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 417
    :cond_20
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 424
    :cond_21
    if-eqz v51, :cond_22

    .line 425
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    move-object/from16 v0, v76

    array-length v15, v0

    if-ge v14, v15, :cond_20

    .line 429
    :cond_22
    move-object/from16 v51, v48

    goto :goto_13

    .line 432
    .end local v48    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_23
    const/4 v6, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 435
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v76

    .line 436
    .restart local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_27

    .line 437
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v60

    .line 440
    .restart local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_14
    invoke-virtual/range {v51 .. v51}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v74

    .line 441
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v61, 0x0

    .restart local v61    # "i":I
    :goto_15
    move-object/from16 v0, v76

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_2a

    .line 442
    aget-object v5, v77, v61

    .line 444
    .local v5, "paramName":Ljava/lang/String;
    aget-object v75, v74, v61

    .line 445
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v30, 0x0

    .line 446
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v13, :cond_24

    aget-object v73, v75, v6

    .line 447
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v14, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v14, :cond_28

    move-object/from16 v30, v73

    .line 448
    check-cast v30, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 453
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_24
    aget-object v7, v76, v61

    .line 454
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v60, v61

    .line 455
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v45

    invoke-static {v0, v5, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 457
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_25

    if-nez v30, :cond_25

    .line 458
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v30

    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v30, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 462
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_25
    if-eqz v30, :cond_29

    .line 463
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 464
    .restart local v10    # "ordinal":I
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 466
    .restart local v11    # "serialzeFeatures":I
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v72

    .line 467
    .local v72, "nameAnnotated":Ljava/lang/String;
    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_26

    .line 468
    move-object/from16 v5, v72

    .line 475
    .end local v72    # "nameAnnotated":Ljava/lang/String;
    :cond_26
    :goto_17
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 482
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 441
    add-int/lit8 v61, v61, 0x1

    goto :goto_15

    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "paramName":Ljava/lang/String;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_27
    move-object/from16 v60, v76

    .line 437
    goto :goto_14

    .line 446
    .restart local v5    # "paramName":Ljava/lang/String;
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v61    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 471
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    :cond_29
    const/4 v10, 0x0

    .line 472
    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .restart local v11    # "serialzeFeatures":I
    goto :goto_17

    .line 485
    .end local v5    # "paramName":Ljava/lang/String;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v75    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_2a
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 486
    .restart local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 488
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 489
    .restart local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 492
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 493
    const/16 v61, 0x0

    :goto_18
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v61

    if-ge v0, v6, :cond_2d

    .line 494
    aget-object v6, v17, v61

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v6, v20, v61

    .line 493
    add-int/lit8 v61, v61, 0x1

    goto :goto_18

    .line 502
    .end local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v60    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v61    # "i":I
    .end local v74    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v76    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2b
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "default constructor not found. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 505
    .end local v77    # "parameters":[Ljava/lang/String;
    :cond_2c
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "default constructor not found. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 510
    :cond_2d
    if-eqz v54, :cond_2e

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 514
    :cond_2e
    if-nez p3, :cond_3e

    .line 515
    move-object/from16 v0, v69

    array-length v14, v0

    const/4 v6, 0x0

    move v13, v6

    :goto_19
    if-ge v13, v14, :cond_3e

    aget-object v23, v69, v13

    .line 516
    .restart local v23    # "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 517
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 518
    .local v67, "methodName":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v15, 0x4

    if-ge v6, v15, :cond_30

    .line 515
    :cond_2f
    :goto_1a
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_19

    .line 522
    :cond_30
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v78

    .line 523
    .local v78, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v78

    if-eq v0, v6, :cond_31

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, v78

    if-ne v0, v6, :cond_2f

    .line 524
    :cond_31
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_2f

    .line 530
    if-eqz p5, :cond_33

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v29, v6

    .line 532
    .local v29, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1b
    if-nez v29, :cond_32

    if-eqz p5, :cond_32

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v29

    .line 536
    :cond_32
    if-eqz v29, :cond_34

    .line 537
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 541
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 542
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 544
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_34

    .line 545
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v22

    .line 546
    .local v22, "propertyName":Ljava/lang/String;
    new-instance v21, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, p0

    move-object/from16 v26, p2

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v31, p6

    invoke-direct/range {v21 .. v31}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_1a

    .line 530
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_33
    const/16 v29, 0x0

    goto :goto_1b

    .line 563
    .restart local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_34
    const-string v6, "set"

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 567
    const/4 v6, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v44

    .line 570
    .local v44, "c3":C
    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 571
    sget-boolean v6, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v6, :cond_36

    .line 572
    const/4 v6, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 586
    .restart local v22    # "propertyName":Ljava/lang/String;
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v52

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 587
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    if-nez v9, :cond_35

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v15, 0x0

    aget-object v6, v6, v15

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v15, :cond_35

    .line 588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "is"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x1

    .line 589
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 590
    .local v62, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v52

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 593
    .end local v62    # "isFieldName":Ljava/lang/String;
    :cond_35
    if-eqz v9, :cond_3c

    .line 594
    if-eqz p5, :cond_3a

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v30, v6

    .line 596
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1d
    if-eqz v30, :cond_3c

    .line 597
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 598
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 600
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 601
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v22

    .line 602
    new-instance v21, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v9

    move-object/from16 v25, p0

    move-object/from16 v26, p2

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v31, p6

    invoke-direct/range {v21 .. v31}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_1a

    .line 574
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "propertyName":Ljava/lang/String;
    goto/16 :goto_1c

    .line 576
    .end local v22    # "propertyName":Ljava/lang/String;
    :cond_37
    const/16 v6, 0x5f

    move/from16 v0, v44

    if-ne v0, v6, :cond_38

    .line 577
    const/4 v6, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "propertyName":Ljava/lang/String;
    goto/16 :goto_1c

    .line 578
    .end local v22    # "propertyName":Ljava/lang/String;
    :cond_38
    const/16 v6, 0x66

    move/from16 v0, v44

    if-ne v0, v6, :cond_39

    .line 579
    const/4 v6, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "propertyName":Ljava/lang/String;
    goto/16 :goto_1c

    .line 580
    .end local v22    # "propertyName":Ljava/lang/String;
    :cond_39
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v15, 0x5

    if-lt v6, v15, :cond_2f

    const/4 v6, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 581
    const/4 v6, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "propertyName":Ljava/lang/String;
    goto/16 :goto_1c

    .line 594
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    :cond_3a
    const/16 v30, 0x0

    goto/16 :goto_1d

    .line 610
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3b
    if-nez v29, :cond_3c

    .line 611
    move-object/from16 v29, v30

    .line 616
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_3c
    if-eqz p7, :cond_3d

    .line 617
    move-object/from16 v0, p7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 620
    :cond_3d
    new-instance v31, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v34, 0x0

    const/16 v40, 0x0

    move-object/from16 v32, v22

    move-object/from16 v33, v23

    move-object/from16 v35, p0

    move-object/from16 v36, p2

    move/from16 v37, v10

    move/from16 v38, v11

    move-object/from16 v39, v29

    move/from16 v41, p6

    invoke-direct/range {v31 .. v41}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v56

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_1a

    .line 630
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v23    # "method":Ljava/lang/reflect/Method;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v44    # "c3":C
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v78    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3e
    new-instance v46, Ljava/util/ArrayList;

    move-object/from16 v0, v52

    array-length v6, v0

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    .local v46, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v52

    array-length v13, v0

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v13, :cond_44

    aget-object v55, v52, v6

    .line 632
    .local v55, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v71

    .line 633
    .local v71, "modifiers":I
    and-int/lit8 v14, v71, 0x8

    if-eqz v14, :cond_40

    .line 631
    :cond_3f
    :goto_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 637
    :cond_40
    and-int/lit8 v14, v71, 0x10

    if-eqz v14, :cond_42

    .line 638
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v58

    .line 639
    .local v58, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/util/Map;

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_41

    const-class v14, Ljava/util/Collection;

    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_43

    :cond_41
    const/16 v80, 0x1

    .line 640
    .local v80, "supportReadOnly":Z
    :goto_20
    if-eqz v80, :cond_3f

    .line 645
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v80    # "supportReadOnly":Z
    :cond_42
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3f

    .line 646
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 639
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    const/16 v80, 0x0

    goto :goto_20

    .line 650
    .end local v55    # "f":Ljava/lang/reflect/Field;
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "modifiers":I
    :cond_44
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v43

    .local v43, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_21
    if-eqz v43, :cond_4b

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v43

    if-eq v0, v6, :cond_4b

    .line 651
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v14, :cond_4a

    aget-object v55, v13, v6

    .line 652
    .restart local v55    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v71

    .line 653
    .restart local v71    # "modifiers":I
    and-int/lit8 v15, v71, 0x8

    if-eqz v15, :cond_46

    .line 651
    :cond_45
    :goto_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 657
    :cond_46
    and-int/lit8 v15, v71, 0x10

    if-eqz v15, :cond_48

    .line 658
    invoke-virtual/range {v55 .. v55}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v58

    .line 659
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, Ljava/util/Map;

    move-object/from16 v0, v58

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-nez v15, :cond_47

    const-class v15, Ljava/util/Collection;

    move-object/from16 v0, v58

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_49

    :cond_47
    const/16 v80, 0x1

    .line 660
    .restart local v80    # "supportReadOnly":Z
    :goto_24
    if-eqz v80, :cond_45

    .line 665
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v80    # "supportReadOnly":Z
    :cond_48
    and-int/lit8 v15, v71, 0x1

    if-eqz v15, :cond_45

    .line 666
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 659
    .restart local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    const/16 v80, 0x0

    goto :goto_24

    .line 650
    .end local v55    # "f":Ljava/lang/reflect/Field;
    .end local v58    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v71    # "modifiers":I
    :cond_4a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v43

    goto :goto_21

    .line 672
    :cond_4b
    invoke-interface/range {v46 .. v46}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4c
    :goto_25
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 673
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v57

    .line 674
    .local v57, "fieldName":Ljava/lang/String;
    const/16 v50, 0x0

    .line 675
    .local v50, "contains":Z
    const/16 v61, 0x0

    .restart local v61    # "i":I
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v79

    .local v79, "size":I
    :goto_26
    move/from16 v0, v61

    move/from16 v1, v79

    if-ge v0, v1, :cond_4e

    .line 676
    move-object/from16 v0, v56

    move/from16 v1, v61

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 677
    .local v64, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v64

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 678
    const/16 v50, 0x1

    .line 675
    :cond_4d
    add-int/lit8 v61, v61, 0x1

    goto :goto_26

    .line 683
    .end local v64    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4e
    if-nez v50, :cond_4c

    .line 687
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 688
    .restart local v11    # "serialzeFeatures":I
    move-object/from16 v22, v57

    .line 690
    .restart local v22    # "propertyName":Ljava/lang/String;
    if-eqz p5, :cond_51

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v30, v6

    .line 692
    .restart local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_27
    if-eqz v30, :cond_4f

    .line 693
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 694
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 696
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 697
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v22

    .line 701
    :cond_4f
    if-eqz p7, :cond_50

    .line 702
    move-object/from16 v0, p7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 705
    :cond_50
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 706
    new-instance v31, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v33, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v22

    move-object/from16 v34, v9

    move-object/from16 v35, p0

    move-object/from16 v36, p2

    move/from16 v37, v10

    move/from16 v38, v11

    move-object/from16 v40, v30

    move/from16 v41, p6

    invoke-direct/range {v31 .. v41}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v56

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_25

    .line 690
    .end local v30    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_51
    const/16 v30, 0x0

    goto :goto_27

    .line 720
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v50    # "contains":Z
    .end local v57    # "fieldName":Ljava/lang/String;
    .end local v61    # "i":I
    .end local v79    # "size":I
    :cond_52
    if-nez p3, :cond_58

    .line 721
    move-object/from16 v0, v69

    array-length v14, v0

    const/4 v6, 0x0

    move v13, v6

    :goto_28
    if-ge v13, v14, :cond_58

    aget-object v23, v69, v13

    .line 722
    .restart local v23    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v67

    .line 723
    .restart local v67    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v15, 0x4

    if-ge v6, v15, :cond_54

    .line 721
    :cond_53
    :goto_29
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_28

    .line 727
    :cond_54
    const-string v6, "get"

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x3

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 728
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_53

    .line 732
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v68

    .line 733
    .local v68, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/Collection;

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_55

    const-class v6, Ljava/util/Map;

    .line 734
    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 738
    :cond_55
    if-eqz p5, :cond_56

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v29, v6

    .line 741
    .restart local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_2a
    if-eqz v29, :cond_57

    .line 742
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v42

    .local v42, "annotationName":Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_57

    move-object/from16 v22, v42

    .line 746
    .end local v42    # "annotationName":Ljava/lang/String;
    .restart local v22    # "propertyName":Ljava/lang/String;
    :goto_2b
    new-instance v31, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    move-object/from16 v32, v22

    move-object/from16 v33, v23

    move-object/from16 v35, p0

    move-object/from16 v36, p2

    move-object/from16 v39, v29

    move/from16 v41, p6

    invoke-direct/range {v31 .. v41}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v56

    move-object/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_29

    .line 738
    .end local v22    # "propertyName":Ljava/lang/String;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_56
    const/16 v29, 0x0

    goto :goto_2a

    .line 742
    .restart local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    .line 744
    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v15, 0x4

    move-object/from16 v0, v67

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_2b

    .line 756
    .end local v23    # "method":Ljava/lang/reflect/Method;
    .end local v29    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v67    # "methodName":Ljava/lang/String;
    .end local v68    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_58
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    .line 757
    .restart local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 759
    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    .line 760
    .restart local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v6, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v17

    array-length v14, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 763
    if-eqz p4, :cond_59

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    .line 764
    :goto_2c
    new-instance v31, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v32, p0

    move-object/from16 v33, v54

    move-object/from16 v34, v51

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    invoke-direct/range {v31 .. v39}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    move-object/from16 v12, v31

    goto/16 :goto_11

    .line 763
    :cond_59
    const/16 v19, 0x0

    goto :goto_2c

    .line 226
    .end local v16    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v17    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v20    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v43    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v46    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v51    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v52    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v63    # "isInterfaceOrAbstract":Z
    .end local v69    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 12
    .param p1, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v11, 0x1

    .line 105
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v9, :cond_0

    move-object v6, p2

    .line 184
    :goto_0
    return-object v6

    .line 109
    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "orders":[Ljava/lang/String;
    if-eqz v8, :cond_14

    array-length v9, v8

    if-eqz v9, :cond_14

    .line 111
    const/4 v1, 0x1

    .line 112
    .local v1, "containsAll":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_2

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "got":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v9, p2

    if-ge v5, v9, :cond_1

    .line 115
    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    const/4 v3, 0x1

    .line 120
    :cond_1
    if-nez v3, :cond_4

    .line 121
    const/4 v1, 0x0

    .line 126
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_2
    if-nez v1, :cond_5

    move-object v6, p2

    .line 127
    goto :goto_0

    .line 114
    .restart local v3    # "got":Z
    .restart local v5    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 112
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_5
    array-length v9, v8

    array-length v10, p1

    if-ne v9, v10, :cond_c

    .line 131
    const/4 v7, 0x1

    .line 132
    .local v7, "orderMatch":Z
    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 133
    aget-object v9, p2, v4

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 134
    const/4 v7, 0x0

    .line 139
    :cond_6
    if-eqz v7, :cond_8

    move-object v6, p2

    .line 140
    goto :goto_0

    .line 132
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 143
    :cond_8
    array-length v9, p2

    new-array v6, v9, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 144
    .local v6, "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_b

    .line 145
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    array-length v9, p2

    if-ge v5, v9, :cond_9

    .line 146
    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 147
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 144
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 145
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 152
    .end local v5    # "j":I
    :cond_b
    move-object p2, v6

    .line 153
    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    goto :goto_0

    .line 157
    .end local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "orderMatch":Z
    :cond_c
    array-length v9, p2

    new-array v6, v9, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 158
    .restart local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v4, 0x0

    :goto_6
    array-length v9, v8

    if-ge v4, v9, :cond_f

    .line 159
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    array-length v9, p2

    if-ge v5, v9, :cond_d

    .line 160
    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 161
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 158
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 159
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 167
    .end local v5    # "j":I
    :cond_f
    array-length v2, v8

    .line 168
    .local v2, "fieldIndex":I
    const/4 v4, 0x0

    :goto_8
    array-length v9, p2

    if-ge v4, v9, :cond_13

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "contains":Z
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    array-length v9, v6

    if-ge v5, v9, :cond_10

    if-ge v5, v2, :cond_10

    .line 171
    aget-object v9, v6, v4

    aget-object v10, p2, v5

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 172
    const/4 v0, 0x1

    .line 176
    :cond_10
    if-nez v0, :cond_11

    .line 177
    aget-object v9, p2, v4

    aput-object v9, v6, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    .line 168
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 170
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 181
    .end local v0    # "contains":Z
    .end local v5    # "j":I
    :cond_13
    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .end local v1    # "containsAll":Z
    .end local v2    # "fieldIndex":I
    .end local v4    # "i":I
    .end local v6    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_14
    move-object v6, p2

    .line 184
    goto/16 :goto_0
.end method
