.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithJavaBean:Z

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static final mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 47
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 945
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x24

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 948
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[B"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[S"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[I"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[J"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[F"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[D"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[C"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[Z"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.util.HashMap"

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.util.TreeMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.util.Date"

    const-class v2, Ljava/util/Date;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "com.alibaba.fastjson.JSONObject"

    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.util.concurrent.ConcurrentHashMap"

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.text.SimpleDateFormat"

    const-class v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.lang.StackTraceElement"

    const-class v2, Ljava/lang/StackTraceElement;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "java.lang.RuntimeException"

    const-class v2, Ljava/lang/RuntimeException;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1928
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    return-void
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_1

    .line 548
    const/4 p0, 0x0

    .line 678
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 551
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 552
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "clazz is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 555
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq p1, v10, :cond_0

    .line 559
    instance-of v10, p0, Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 560
    const-class v10, Ljava/util/Map;

    if-eq p1, v10, :cond_0

    move-object v7, p0

    .line 564
    check-cast v7, Ljava/util/Map;

    .line 565
    .local v7, "map":Ljava/util/Map;
    const-class v10, Ljava/lang/Object;

    if-ne p1, v10, :cond_3

    const-string v10, "@type"

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 569
    :cond_3
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static/range {p0 .. p3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 572
    .end local v7    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 573
    instance-of v10, p0, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v2, p0

    .line 575
    check-cast v2, Ljava/util/Collection;

    .line 576
    .local v2, "collection":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 577
    .local v5, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 578
    .local v0, "array":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 579
    .local v6, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v6, v11, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 580
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 581
    add-int/lit8 v5, v5, 0x1

    .line 582
    goto :goto_1

    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    move-object p0, v0

    .line 584
    goto :goto_0

    .line 587
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    :cond_6
    const-class v10, [B

    if-ne p1, v10, :cond_7

    .line 588
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 592
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 596
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne p1, v10, :cond_9

    .line 597
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 600
    :cond_9
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_a

    const-class v10, Ljava/lang/Byte;

    if-ne p1, v10, :cond_b

    .line 601
    :cond_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 604
    :cond_b
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_c

    const-class v10, Ljava/lang/Character;

    if-ne p1, v10, :cond_d

    .line 606
    :cond_c
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_d

    move-object v8, p0

    .line 607
    check-cast v8, Ljava/lang/String;

    .line 608
    .local v8, "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 609
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto/16 :goto_0

    .line 614
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_d
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_e

    const-class v10, Ljava/lang/Short;

    if-ne p1, v10, :cond_f

    .line 615
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 618
    :cond_f
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_10

    const-class v10, Ljava/lang/Integer;

    if-ne p1, v10, :cond_11

    .line 619
    :cond_10
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 622
    :cond_11
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_12

    const-class v10, Ljava/lang/Long;

    if-ne p1, v10, :cond_13

    .line 623
    :cond_12
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 626
    :cond_13
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_14

    const-class v10, Ljava/lang/Float;

    if-ne p1, v10, :cond_15

    .line 627
    :cond_14
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 630
    :cond_15
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_16

    const-class v10, Ljava/lang/Double;

    if-ne p1, v10, :cond_17

    .line 631
    :cond_16
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 634
    :cond_17
    const-class v10, Ljava/lang/String;

    if-ne p1, v10, :cond_18

    .line 635
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 638
    :cond_18
    const-class v10, Ljava/math/BigDecimal;

    if-ne p1, v10, :cond_19

    .line 639
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 642
    :cond_19
    const-class v10, Ljava/math/BigInteger;

    if-ne p1, v10, :cond_1a

    .line 643
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 646
    :cond_1a
    const-class v10, Ljava/util/Date;

    if-ne p1, v10, :cond_1b

    .line 647
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 650
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 651
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 654
    :cond_1c
    const-class v10, Ljava/util/Calendar;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 655
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 657
    .local v3, "date":Ljava/util/Date;
    const-class v10, Ljava/util/Calendar;

    if-ne p1, v10, :cond_1d

    .line 658
    sget-object v10, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 666
    .local v1, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v1

    .line 667
    goto/16 :goto_0

    .line 661
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1d
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 662
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 663
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 670
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1e
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_21

    move-object v8, p0

    .line 671
    check-cast v8, Ljava/lang/String;

    .line 672
    .restart local v8    # "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1f

    const-string v10, "null"

    .line 673
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 674
    :cond_1f
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 677
    :cond_20
    const-class v10, Ljava/util/Currency;

    if-ne p1, v10, :cond_21

    .line 678
    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    .line 682
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_21
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 24
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 740
    if-nez p0, :cond_0

    .line 844
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 744
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v17

    .line 746
    .local v17, "rawTye":Ljava/lang/reflect/Type;
    const-class v21, Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    const-class v21, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 748
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v10, v21, v22

    .line 750
    .local v10, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/List;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v14, p0

    .line 751
    check-cast v14, Ljava/util/List;

    .line 753
    .local v14, "listObj":Ljava/util/List;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 754
    .local v15, "listObjSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    .local v4, "arrayList":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v15, :cond_4

    .line 757
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 760
    .local v9, "item":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/Class;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 761
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 762
    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .end local v9    # "item":Ljava/lang/Object;
    move-object/from16 v21, v10

    check-cast v21, Ljava/lang/Class;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v11

    .line 770
    .local v11, "itemValue":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v11    # "itemValue":Ljava/lang/Object;
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_2
    move-object/from16 v21, v10

    .line 764
    check-cast v21, Ljava/lang/Class;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v9, v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "itemValue":Ljava/lang/Object;
    goto :goto_2

    .line 767
    .end local v11    # "itemValue":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    invoke-static {v9, v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "itemValue":Ljava/lang/Object;
    goto :goto_2

    .end local v9    # "item":Ljava/lang/Object;
    .end local v11    # "itemValue":Ljava/lang/Object;
    :cond_4
    move-object/from16 p0, v4

    .line 773
    goto :goto_0

    .line 777
    .end local v4    # "arrayList":Ljava/util/ArrayList;
    .end local v7    # "i":I
    .end local v10    # "itemType":Ljava/lang/reflect/Type;
    .end local v14    # "listObj":Ljava/util/List;
    .end local v15    # "listObjSize":I
    :cond_5
    const-class v21, Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    const-class v21, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    const-class v21, Ljava/util/TreeSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    const-class v21, Ljava/util/List;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    const-class v21, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 782
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v10, v21, v22

    .line 784
    .restart local v10    # "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 786
    const-class v21, Ljava/util/Set;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    const-class v21, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 787
    :cond_7
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 794
    .local v5, "collection":Ljava/util/Collection;
    :goto_3
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 795
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 798
    .restart local v9    # "item":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/Class;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 799
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 800
    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .end local v9    # "item":Ljava/lang/Object;
    move-object/from16 v21, v10

    check-cast v21, Ljava/lang/Class;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v9, v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v11

    .line 808
    .restart local v11    # "itemValue":Ljava/lang/Object;
    :goto_5
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 788
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v11    # "itemValue":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    const-class v21, Ljava/util/TreeSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 789
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .restart local v5    # "collection":Ljava/util/Collection;
    goto :goto_3

    .line 791
    .end local v5    # "collection":Ljava/util/Collection;
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "collection":Ljava/util/Collection;
    goto :goto_3

    .end local p0    # "obj":Ljava/lang/Object;
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "item":Ljava/lang/Object;
    :cond_a
    move-object/from16 v21, v10

    .line 802
    check-cast v21, Ljava/lang/Class;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v9, v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "itemValue":Ljava/lang/Object;
    goto :goto_5

    .line 805
    .end local v11    # "itemValue":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p2

    invoke-static {v9, v10, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "itemValue":Ljava/lang/Object;
    goto :goto_5

    .end local v9    # "item":Ljava/lang/Object;
    .end local v11    # "itemValue":Ljava/lang/Object;
    :cond_c
    move-object/from16 p0, v5

    .line 811
    goto/16 :goto_0

    .line 815
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "itemType":Ljava/lang/reflect/Type;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_d
    const-class v21, Ljava/util/Map;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    const-class v21, Ljava/util/HashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 816
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v13, v21, v22

    .line 817
    .local v13, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v20, v21, v22

    .line 819
    .local v20, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 820
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 822
    .local v16, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 823
    .local v6, "entry":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    .line 824
    .local v12, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v19

    .line 826
    .local v19, "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .end local v6    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "key":Ljava/lang/Object;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_f
    move-object/from16 p0, v16

    .line 829
    goto/16 :goto_0

    .line 833
    .end local v13    # "keyType":Ljava/lang/reflect/Type;
    .end local v16    # "map":Ljava/util/Map;
    .end local v20    # "valueType":Ljava/lang/reflect/Type;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v18, p0

    .line 834
    check-cast v18, Ljava/lang/String;

    .line 835
    .local v18, "strVal":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "null"

    .line 836
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 837
    :cond_11
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 841
    .end local v18    # "strVal":Ljava/lang/String;
    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 842
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v3, v21, v22

    .line 843
    .local v3, "argType":Ljava/lang/reflect/Type;
    instance-of v0, v3, Ljava/lang/reflect/WildcardType;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 844
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 848
    .end local v3    # "argType":Ljava/lang/reflect/Type;
    :cond_13
    new-instance v21, Lcom/alibaba/fastjson/JSONException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "can not cast to : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 711
    if-nez p0, :cond_1

    move-object p0, v1

    .line 732
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 715
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 716
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 719
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 720
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 723
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 724
    check-cast v0, Ljava/lang/String;

    .line 725
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 726
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 727
    goto :goto_0

    .line 731
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    .line 735
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p0, :cond_0

    move-object p0, v1

    .line 266
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 252
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 253
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 256
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 257
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 260
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "null"

    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_4
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 270
    if-nez p0, :cond_0

    move-object p0, v1

    .line 288
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 274
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 275
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 278
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 279
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 282
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 501
    if-nez p0, :cond_0

    move-object p0, v3

    .line 530
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 505
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 506
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 509
    :cond_1
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_3

    .line 510
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 513
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_5

    .line 514
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 517
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v0, p0

    .line 518
    check-cast v0, Ljava/lang/String;

    .line 519
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "null"

    .line 520
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object p0, v3

    .line 521
    goto :goto_0

    .line 524
    :cond_7
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "1"

    .line 525
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 526
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 528
    :cond_9
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "0"

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 530
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 534
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 193
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 182
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 183
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 186
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 196
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToBytes(Ljava/lang/Object;)[B
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 489
    instance-of v1, p0, [B

    if-eqz v1, :cond_0

    .line 490
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    .line 495
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 493
    .end local v0    # "string":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 494
    check-cast v0, Ljava/lang/String;

    .line 495
    .restart local v0    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object p0

    goto :goto_0

    .line 497
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-nez p0, :cond_0

    move-object p0, v1

    .line 219
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 204
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 205
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 208
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 211
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 216
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 222
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 11
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 337
    if-nez p0, :cond_0

    move-object p0, v8

    .line 401
    .end local p0    # "value":Ljava/lang/Object;
    .local v4, "longValue":J
    :goto_0
    return-object p0

    .line 341
    .end local v4    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v9, p0, Ljava/util/Calendar;

    if-eqz v9, :cond_1

    .line 342
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 345
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v9, p0, Ljava/util/Date;

    if-eqz v9, :cond_2

    .line 346
    check-cast p0, Ljava/util/Date;

    goto :goto_0

    .line 349
    :cond_2
    const-wide/16 v4, -0x1

    .line 351
    .restart local v4    # "longValue":J
    instance-of v9, p0, Ljava/math/BigDecimal;

    if-eqz v9, :cond_5

    move-object v1, p0

    .line 352
    check-cast v1, Ljava/math/BigDecimal;

    .line 353
    .local v1, "decimal":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    .line 354
    .local v6, "scale":I
    const/16 v8, -0x64

    if-lt v6, v8, :cond_4

    const/16 v8, 0x64

    if-gt v6, v8, :cond_4

    .line 355
    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 397
    .end local v1    # "decimal":Ljava/math/BigDecimal;
    .end local v6    # "scale":I
    :cond_3
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_e

    .line 398
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not cast to Date, value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 357
    .restart local v1    # "decimal":Ljava/math/BigDecimal;
    .restart local v6    # "scale":I
    :cond_4
    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    goto :goto_1

    .line 359
    .end local v1    # "decimal":Ljava/math/BigDecimal;
    .end local v6    # "scale":I
    :cond_5
    instance-of v9, p0, Ljava/lang/Number;

    if-eqz v9, :cond_6

    move-object v8, p0

    .line 360
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_1

    .line 361
    :cond_6
    instance-of v9, p0, Ljava/lang/String;

    if-eqz v9, :cond_3

    move-object v7, p0

    .line 362
    check-cast v7, Ljava/lang/String;

    .line 364
    .local v7, "strVal":Ljava/lang/String;
    const/16 v9, 0x2d

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    .line 366
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sget-object v9, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 367
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 380
    .local v3, "format":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 381
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v8, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 383
    :try_start_0
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 368
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "format":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_8

    .line 369
    const-string v3, "yyyy-MM-dd"

    .restart local v3    # "format":Ljava/lang/String;
    goto :goto_2

    .line 370
    .end local v3    # "format":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 371
    const-string v3, "yyyy-MM-dd HH:mm:ss"

    .restart local v3    # "format":Ljava/lang/String;
    goto :goto_2

    .line 372
    .end local v3    # "format":Ljava/lang/String;
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x1d

    if-ne v8, v9, :cond_a

    const/16 v8, 0x1a

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_a

    const/16 v8, 0x1c

    .line 374
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_a

    .line 375
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .restart local v3    # "format":Ljava/lang/String;
    goto :goto_2

    .line 377
    .end local v3    # "format":Ljava/lang/String;
    :cond_a
    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v3    # "format":Ljava/lang/String;
    goto :goto_2

    .line 384
    .restart local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Ljava/text/ParseException;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not cast to Date, value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 389
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "format":Ljava/lang/String;
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "null"

    .line 390
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    move-object p0, v8

    .line 391
    goto/16 :goto_0

    .line 394
    :cond_d
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1

    .line 401
    .end local v7    # "strVal":Ljava/lang/String;
    :cond_e
    new-instance p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static final castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 314
    if-nez p0, :cond_1

    .line 330
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 318
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 319
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 322
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 333
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 689
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 690
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 691
    const/4 v5, 0x0

    .line 699
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 693
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto :goto_0

    .line 695
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    instance-of v5, p0, Ljava/lang/Integer;

    if-nez v5, :cond_2

    instance-of v5, p0, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 696
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 697
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 698
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 699
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 703
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 706
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 292
    if-nez p0, :cond_1

    .line 307
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 296
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 297
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 300
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 310
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 452
    if-nez p0, :cond_0

    move-object p0, v3

    .line 482
    .end local p0    # "value":Ljava/lang/Object;
    .local v2, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 456
    .end local v2    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p0, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 457
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 460
    :cond_1
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_3

    move-object v0, p0

    .line 461
    check-cast v0, Ljava/math/BigDecimal;

    .line 463
    .local v0, "decimal":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 464
    .local v1, "scale":I
    const/16 v3, -0x64

    if-lt v1, v3, :cond_2

    const/16 v3, 0x64

    if-gt v1, v3, :cond_2

    .line 465
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 471
    .end local v0    # "decimal":Ljava/math/BigDecimal;
    .end local v1    # "scale":I
    :cond_3
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 472
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 475
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v2, p0

    .line 476
    check-cast v2, Ljava/lang/String;

    .line 477
    .restart local v2    # "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "null"

    .line 478
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object p0, v3

    .line 479
    goto :goto_0

    .line 482
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 485
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to int, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 20
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v17, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 859
    const-string v17, "className"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 860
    .local v4, "declaringClass":Ljava/lang/String;
    const-string v17, "methodName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 861
    .local v14, "methodName":Ljava/lang/String;
    const-string v17, "fileName"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 864
    .local v8, "fileName":Ljava/lang/String;
    const-string v17, "lineNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    .line 865
    .local v16, "value":Ljava/lang/Number;
    if-nez v16, :cond_0

    .line 866
    const/4 v12, 0x0

    .line 874
    .end local v16    # "value":Ljava/lang/Number;
    .local v12, "lineNumber":I
    :goto_0
    new-instance v17, Ljava/lang/StackTraceElement;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v14, v8, v12}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 939
    .end local v4    # "declaringClass":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "lineNumber":I
    .end local v14    # "methodName":Ljava/lang/String;
    :goto_1
    return-object v17

    .line 867
    .restart local v4    # "declaringClass":Ljava/lang/String;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v14    # "methodName":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/Number;
    :cond_0
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/math/BigDecimal;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 868
    check-cast v16, Ljava/math/BigDecimal;

    .end local v16    # "value":Ljava/lang/Number;
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v12

    .restart local v12    # "lineNumber":I
    goto :goto_0

    .line 870
    .end local v12    # "lineNumber":I
    .restart local v16    # "value":Ljava/lang/Number;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v12

    .restart local v12    # "lineNumber":I
    goto :goto_0

    .line 878
    .end local v4    # "declaringClass":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v12    # "lineNumber":I
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Number;
    :cond_2
    const-string v17, "@type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 879
    .local v9, "iClassObject":Ljava/lang/Object;
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 880
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 882
    .local v3, "className":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 883
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 886
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v13

    .line 888
    .local v13, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_4

    .line 889
    new-instance v17, Ljava/lang/ClassNotFoundException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v3    # "className":Ljava/lang/String;
    .end local v9    # "iClassObject":Ljava/lang/Object;
    .end local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 941
    .local v7, "e":Ljava/lang/Exception;
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 892
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v9    # "iClassObject":Ljava/lang/Object;
    .restart local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 893
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v17

    goto :goto_1

    .line 898
    .end local v3    # "className":Ljava/lang/String;
    .end local v13    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 901
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 902
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v15, v0

    .line 907
    .local v15, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez p2, :cond_6

    .line 908
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 911
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 912
    .local v5, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v5, :cond_8

    .line 913
    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 914
    .local v11, "json":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_1

    .line 904
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v11    # "json":Ljava/lang/String;
    .end local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_7
    new-instance v15, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 917
    .restart local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_1

    .line 921
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_9
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 922
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 925
    :cond_a
    if-nez p2, :cond_b

    .line 926
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 929
    :cond_b
    const/4 v10, 0x0

    .line 930
    .local v10, "javaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 931
    .local v6, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v6, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 932
    move-object v0, v6

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object v10, v0

    .line 935
    :cond_c
    if-nez v10, :cond_d

    .line 936
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    const-string v18, "can not get javaBeanDeserializer"

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 939
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto/16 :goto_1
.end method

.method public static final castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 405
    if-nez p0, :cond_1

    .line 444
    .local v4, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 409
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v6, p0, Ljava/math/BigDecimal;

    if-eqz v6, :cond_3

    move-object v2, p0

    .line 410
    check-cast v2, Ljava/math/BigDecimal;

    .line 411
    .local v2, "decimal":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    .line 412
    .local v3, "scale":I
    const/16 v5, -0x64

    if-lt v3, v5, :cond_2

    const/16 v5, 0x64

    if-gt v3, v5, :cond_2

    .line 413
    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 419
    .end local v2    # "decimal":Ljava/math/BigDecimal;
    .end local v3    # "scale":I
    :cond_3
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_4

    .line 420
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 423
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_6

    move-object v4, p0

    .line 424
    check-cast v4, Ljava/lang/String;

    .line 425
    .restart local v4    # "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "null"

    .line 426
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 431
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 432
    :catch_0
    move-exception v5

    .line 436
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "dateParser":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v0, 0x0

    .line 438
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 439
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 441
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 443
    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 448
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to long, value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 226
    if-nez p0, :cond_1

    .line 241
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 230
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 231
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 234
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 235
    check-cast v0, Ljava/lang/String;

    .line 236
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 244
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 1932
    move-object v1, p0

    .line 1933
    .local v1, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1935
    .local v2, "genericComponentType":Ljava/lang/reflect/Type;
    const-string v3, "["

    .line 1936
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_0

    .line 1937
    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    .line 1938
    .end local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1939
    .restart local v2    # "genericComponentType":Ljava/lang/reflect/Type;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1942
    :cond_0
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1

    move-object v0, v2

    .line 1943
    check-cast v0, Ljava/lang/Class;

    .line 1944
    .local v0, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1946
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    .line 1947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1968
    .end local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-object v1

    .line 1948
    .restart local v0    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_3

    .line 1949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1950
    :cond_3
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_4

    .line 1951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1952
    :cond_4
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_5

    .line 1953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1954
    :cond_5
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_6

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 1956
    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_7

    .line 1957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 1958
    :cond_7
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_8

    .line 1959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    .line 1960
    :cond_8
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_1

    .line 1961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 1963
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public static computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 55
    .param p1, "modifiers"    # I
    .param p2, "fieldOnly"    # Z
    .param p3, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p5, "sorted"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v39, Ljava/util/LinkedHashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1077
    .local v39, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 1079
    .local v28, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v33

    .line 1080
    .local v33, "declaredFields":[Ljava/lang/reflect/Field;
    if-nez p2, :cond_22

    .line 1081
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v43

    .line 1083
    .local v43, "kotlin":Z
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .local v44, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v30, p0

    .local v30, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v30, :cond_3

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_3

    .line 1086
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v34

    .line 1087
    .local v34, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v34

    array-length v8, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_2

    aget-object v6, v34, v4

    .line 1088
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v46

    .line 1090
    .local v46, "modifier":I
    and-int/lit8 v9, v46, 0x8

    if-nez v9, :cond_0

    and-int/lit8 v9, v46, 0x2

    if-nez v9, :cond_0

    move/from16 v0, v46

    and-int/lit16 v9, v0, 0x100

    if-nez v9, :cond_0

    and-int/lit8 v9, v46, 0x4

    if-eqz v9, :cond_1

    .line 1087
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1097
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1098
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 1099
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/ClassLoader;

    if-eq v9, v14, :cond_0

    .line 1100
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v14, Ljava/lang/Object;

    if-eq v9, v14, :cond_0

    .line 1105
    move-object/from16 v0, v44

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1085
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v46    # "modifier":I
    :cond_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v30

    goto :goto_0

    .line 1110
    .end local v34    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_3
    const/16 v31, 0x0

    .line 1111
    .local v31, "constructors":[Ljava/lang/reflect/Constructor;
    const/16 v50, 0x0

    check-cast v50, [[Ljava/lang/annotation/Annotation;

    .line 1112
    .local v50, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v53, 0x0

    .line 1113
    .local v53, "paramNames":[Ljava/lang/String;
    const/16 v52, 0x0

    .line 1115
    .local v52, "paramNameMapping":[S
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 1116
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v45

    .line 1117
    .local v45, "methodName":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ordinal":I
    const/4 v11, 0x0

    .line 1119
    .local v11, "serialzeFeatures":I
    const-string v4, "getMetaClass"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1120
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1124
    :cond_5
    if-eqz p6, :cond_8

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v12, v4

    .line 1126
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_4
    if-nez v12, :cond_6

    if-eqz p6, :cond_6

    .line 1127
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v12

    .line 1130
    :cond_6
    if-eqz v43, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1134
    :cond_7
    if-nez v12, :cond_c

    if-eqz v43, :cond_c

    .line 1135
    if-nez v31, :cond_a

    .line 1136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v31

    .line 1137
    move-object/from16 v0, v31

    array-length v4, v0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    .line 1138
    const/4 v4, 0x0

    aget-object v4, v31, v4

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v50

    .line 1139
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v53

    .line 1141
    if-eqz v53, :cond_a

    .line 1142
    move-object/from16 v0, v53

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v54, v0

    .line 1143
    .local v54, "paramNames_sorted":[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v53

    array-length v9, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-static {v0, v4, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    invoke-static/range {v54 .. v54}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1146
    move-object/from16 v0, v53

    array-length v4, v0

    new-array v0, v4, [S

    move-object/from16 v52, v0

    .line 1147
    const/16 v48, 0x0

    .local v48, "p":S
    :goto_5
    move-object/from16 v0, v53

    array-length v4, v0

    move/from16 v0, v48

    if-ge v0, v4, :cond_9

    .line 1148
    aget-object v4, v53, v48

    move-object/from16 v0, v54

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v41

    .line 1149
    .local v41, "index":I
    aput-short v48, v52, v41

    .line 1147
    add-int/lit8 v4, v48, 0x1

    int-to-short v0, v4

    move/from16 v48, v0

    goto :goto_5

    .line 1124
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v41    # "index":I
    .end local v48    # "p":S
    .end local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 1151
    .restart local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v48    # "p":S
    .restart local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_9
    move-object/from16 v53, v54

    .line 1156
    .end local v48    # "p":S
    .end local v54    # "paramNames_sorted":[Ljava/lang/String;
    :cond_a
    if-eqz v53, :cond_c

    if-eqz v52, :cond_c

    const-string v4, "get"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1157
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    .local v5, "propertyName":Ljava/lang/String;
    move-object/from16 v0, v53

    invoke-static {v0, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v48

    .line 1159
    .local v48, "p":I
    if-gez v48, :cond_b

    .line 1160
    const/16 v40, 0x0

    .local v40, "i":I
    :goto_6
    move-object/from16 v0, v53

    array-length v4, v0

    move/from16 v0, v40

    if-ge v0, v4, :cond_b

    .line 1161
    aget-object v4, v53, v40

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1162
    move/from16 v48, v40

    .line 1167
    .end local v40    # "i":I
    :cond_b
    if-ltz v48, :cond_c

    .line 1168
    aget-short v41, v52, v48

    .line 1169
    .local v41, "index":S
    aget-object v51, v50, v41

    .line 1170
    .local v51, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v51, :cond_c

    .line 1171
    move-object/from16 v0, v51

    array-length v8, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v8, :cond_c

    aget-object v49, v51, v4

    .line 1172
    .local v49, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v49

    instance-of v9, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v9, :cond_f

    move-object/from16 v12, v49

    .line 1173
    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1182
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v41    # "index":S
    .end local v48    # "p":I
    .end local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_c
    const/16 v36, 0x0

    .line 1183
    .local v36, "fieldAnnotationExists":Z
    if-eqz v12, :cond_10

    .line 1184
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1188
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1189
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1191
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1192
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1193
    .restart local v5    # "propertyName":Ljava/lang/String;
    const/16 v36, 0x1

    .line 1195
    if-eqz p4, :cond_d

    .line 1196
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1197
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1202
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1203
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1160
    .end local v36    # "fieldAnnotationExists":Z
    .restart local v40    # "i":I
    .restart local v48    # "p":I
    :cond_e
    add-int/lit8 v40, v40, 0x1

    goto :goto_6

    .line 1171
    .end local v40    # "i":I
    .restart local v41    # "index":S
    .restart local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1209
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v41    # "index":S
    .end local v48    # "p":I
    .end local v49    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v51    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v36    # "fieldAnnotationExists":Z
    :cond_10
    const-string v4, "get"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1210
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x4

    if-lt v4, v8, :cond_4

    const-string v4, "getClass"

    .line 1211
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1216
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 1219
    .local v27, "c3":C
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1220
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_19

    .line 1221
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1239
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1240
    .local v7, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x0

    .line 1241
    .local v13, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_11

    .line 1242
    if-eqz p6, :cond_1d

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1244
    :goto_9
    if-eqz v13, :cond_11

    .line 1245
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1249
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1250
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1252
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    .line 1253
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1254
    const/16 v36, 0x1

    .line 1256
    if-eqz p4, :cond_11

    .line 1257
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1258
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1266
    :cond_11
    if-eqz p8, :cond_12

    if-nez v36, :cond_12

    .line 1267
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1270
    :cond_12
    if-eqz p4, :cond_13

    .line 1271
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1272
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1277
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1278
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "c3":C
    :cond_14
    const-string v4, "is"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1284
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x3

    if-lt v4, v8, :cond_4

    .line 1288
    const/4 v4, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 1291
    .local v26, "c2":C
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1292
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v4, :cond_1e

    .line 1293
    const/4 v4, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1305
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1309
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-static {v0, v5, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1311
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-nez v7, :cond_15

    .line 1312
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1315
    :cond_15
    const/4 v13, 0x0

    .line 1316
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_16

    .line 1317
    if-eqz p6, :cond_21

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1319
    :goto_b
    if-eqz v13, :cond_16

    .line 1320
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1324
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1325
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1327
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_16

    .line 1328
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1330
    if-eqz p4, :cond_16

    .line 1331
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1332
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1340
    :cond_16
    if-eqz p8, :cond_17

    .line 1341
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1344
    :cond_17
    if-eqz p4, :cond_18

    .line 1345
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1346
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 1351
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1352
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1353
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move/from16 v14, p7

    invoke-direct/range {v4 .. v14}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1223
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "c2":C
    .restart local v27    # "c3":C
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1225
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1a
    const/16 v4, 0x5f

    move/from16 v0, v27

    if-ne v0, v4, :cond_1b

    .line 1226
    const/4 v4, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1227
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1b
    const/16 v4, 0x66

    move/from16 v0, v27

    if-ne v0, v4, :cond_1c

    .line 1228
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1229
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x5

    if-lt v4, v8, :cond_4

    const/4 v4, 0x4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1230
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_8

    .line 1242
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 1295
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "c3":C
    .restart local v26    # "c2":C
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_a

    .line 1297
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_1f
    const/16 v4, 0x5f

    move/from16 v0, v26

    if-ne v0, v4, :cond_20

    .line 1298
    const/4 v4, 0x3

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_a

    .line 1299
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_20
    const/16 v4, 0x66

    move/from16 v0, v26

    if-ne v0, v4, :cond_4

    .line 1300
    const/4 v4, 0x2

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propertyName":Ljava/lang/String;
    goto/16 :goto_a

    .line 1317
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_21
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 1362
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "c2":C
    .end local v30    # "cls":Ljava/lang/Class;
    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v36    # "fieldAnnotationExists":Z
    .end local v43    # "kotlin":Z
    .end local v44    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v45    # "methodName":Ljava/lang/String;
    .end local v50    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v52    # "paramNameMapping":[S
    .end local v53    # "paramNames":[Ljava/lang/String;
    :cond_22
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    array-length v4, v0

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1363
    .local v29, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v33

    array-length v8, v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v8, :cond_25

    aget-object v35, v33, v4

    .line 1364
    .local v35, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_24

    .line 1363
    :cond_23
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1368
    :cond_24
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v14, "this$0"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 1372
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_23

    .line 1373
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1377
    .end local v35    # "f":Ljava/lang/reflect/Field;
    :cond_25
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    .local v25, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e
    if-eqz v25, :cond_29

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v25

    if-eq v0, v4, :cond_29

    .line 1378
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v9, :cond_28

    aget-object v35, v8, v4

    .line 1379
    .restart local v35    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_27

    .line 1378
    :cond_26
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1383
    :cond_27
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_26

    .line 1384
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1377
    .end local v35    # "f":Ljava/lang/reflect/Field;
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v25

    goto :goto_e

    .line 1390
    :cond_29
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2a
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 1391
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_2e

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v13, v4

    .line 1393
    .restart local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_12
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 1394
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1395
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v13, :cond_2b

    .line 1396
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1400
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    .line 1401
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1403
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 1404
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 1408
    :cond_2b
    if-eqz p4, :cond_2c

    .line 1409
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "propertyName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1410
    .restart local v5    # "propertyName":Ljava/lang/String;
    if-eqz v5, :cond_2a

    .line 1415
    :cond_2c
    if-eqz p8, :cond_2d

    .line 1416
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1419
    :cond_2d
    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 1420
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v7, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1421
    new-instance v14, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object v15, v5

    move-object/from16 v17, v7

    move-object/from16 v18, p0

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v23, v13

    move/from16 v24, p7

    invoke-direct/range {v14 .. v24}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 1391
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v13    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2e
    const/4 v13, 0x0

    goto :goto_12

    .line 1435
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :cond_2f
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v38, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v32, 0x0

    .line 1438
    .local v32, "containsAll":Z
    const/16 v47, 0x0

    .line 1440
    .local v47, "orders":[Ljava/lang/String;
    if-eqz p3, :cond_30

    .line 1441
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v47

    .line 1443
    if-eqz v47, :cond_32

    move-object/from16 v0, v47

    array-length v4, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v4, v8, :cond_32

    .line 1444
    const/16 v32, 0x1

    .line 1445
    move-object/from16 v0, v47

    array-length v8, v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v8, :cond_30

    aget-object v42, v47, v4

    .line 1446
    .local v42, "item":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 1447
    const/16 v32, 0x0

    .line 1456
    .end local v42    # "item":Ljava/lang/String;
    :cond_30
    :goto_14
    if-eqz v32, :cond_33

    .line 1457
    move-object/from16 v0, v47

    array-length v8, v0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v8, :cond_35

    aget-object v42, v47, v4

    .line 1458
    .restart local v42    # "item":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1459
    .local v37, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1445
    .end local v37    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1452
    .end local v42    # "item":Ljava/lang/String;
    :cond_32
    const/16 v32, 0x0

    goto :goto_14

    .line 1462
    :cond_33
    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1463
    .restart local v37    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1466
    .end local v37    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_34
    if-eqz p5, :cond_35

    .line 1467
    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1471
    :cond_35
    return-object v38
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1605
    if-eqz p0, :cond_0

    .line 1606
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1615
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1613
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1614
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1615
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static defaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1729
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 1730
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1746
    :goto_0
    return-object v0

    .line 1731
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 1732
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 1733
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 1734
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1735
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 1736
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1737
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 1738
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1739
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 1740
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1741
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 1742
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1743
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 1744
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 1746
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fnv_64_lower(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1905
    if-nez p0, :cond_1

    .line 1906
    const-wide/16 v2, 0x0

    .line 1924
    :cond_0
    return-wide v2

    .line 1909
    :cond_1
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1910
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1911
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1912
    .local v0, "ch":C
    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    .line 1910
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1916
    :cond_3
    const/16 v4, 0x41

    if-lt v0, v4, :cond_4

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_4

    .line 1917
    add-int/lit8 v4, v0, 0x20

    int-to-char v0, v4

    .line 1920
    :cond_4
    int-to-long v4, v0

    xor-long/2addr v2, v4

    .line 1921
    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    goto :goto_1
.end method

.method public static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 10
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 1750
    if-eqz p2, :cond_0

    array-length v7, p1

    if-nez v7, :cond_2

    .line 1751
    :cond_0
    const/4 v0, 0x0

    .line 1775
    :cond_1
    return v0

    .line 1754
    :cond_2
    const/4 v0, 0x0

    .line 1755
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_1

    .line 1756
    aget-object v6, p0, v1

    .line 1757
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v4, v6

    .line 1758
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1759
    .local v4, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1760
    .local v5, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v5, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v3

    .line 1761
    .local v3, "p_changed":Z
    if-eqz v3, :cond_3

    .line 1762
    new-instance v7, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v7, p0, v1

    .line 1763
    const/4 v0, 0x1

    .line 1755
    .end local v3    # "p_changed":Z
    .end local v4    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1765
    :cond_4
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_3

    .line 1766
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 1767
    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1768
    aget-object v7, p2, v2

    aput-object v7, p0, v1

    .line 1769
    const/4 v0, 0x1

    .line 1766
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1583
    check-cast p0, Ljava/lang/Class;

    .line 1601
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1586
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 1587
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1590
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    .line 1591
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Class;

    move-object p0, v1

    goto :goto_0

    .line 1594
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_3

    .line 1595
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1596
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1597
    aget-object v1, v0, v3

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1601
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_3
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 986
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x0

    .line 1701
    const/4 v2, 0x0

    .line 1702
    .local v2, "itemType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 1703
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 1704
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v0, v6, v8

    .line 1706
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 1707
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 1708
    .local v5, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1709
    .local v4, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1710
    aget-object v0, v4, v8

    .line 1714
    .end local v4    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_0
    move-object v2, v0

    .line 1721
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1722
    const-class v2, Ljava/lang/Object;

    .line 1725
    :cond_2
    return-object v2

    .line 1715
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    .line 1716
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1717
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1718
    .local v3, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1646
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v4, 0x1

    .line 1650
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1651
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1655
    :cond_0
    if-nez v0, :cond_1

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1659
    :cond_1
    if-nez v0, :cond_2

    .line 1660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "mName":Ljava/lang/String;
    invoke-static {p0, v1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1664
    .end local v1    # "mName":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 12
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1668
    array-length v9, p2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v2, p2, v7

    .line 1669
    .local v2, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1670
    .local v3, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1697
    .end local v2    # "item":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 1675
    .restart local v2    # "item":Ljava/lang/reflect/Field;
    .restart local v3    # "itemName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    .line 1676
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c0":C
    const/16 v10, 0x61

    if-lt v0, v10, :cond_2

    const/16 v10, 0x7a

    if-gt v0, v10, :cond_2

    const/4 v10, 0x1

    .line 1677
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c1":C
    const/16 v10, 0x41

    if-lt v1, v10, :cond_2

    const/16 v10, 0x5a

    if-gt v1, v10, :cond_2

    .line 1678
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1668
    .end local v0    # "c0":C
    .end local v1    # "c1":C
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1683
    .end local v2    # "item":Ljava/lang/reflect/Field;
    .end local v3    # "itemName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 1685
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_4

    const-class v7, Ljava/lang/Object;

    if-ne v4, v7, :cond_5

    :cond_4
    move-object v2, v6

    .line 1686
    goto :goto_1

    .line 1689
    :cond_5
    if-eqz p3, :cond_7

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Field;

    move-object v5, v6

    .line 1690
    .local v5, "superClassFields":[Ljava/lang/reflect/Field;
    :goto_2
    if-nez v5, :cond_6

    .line 1691
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1692
    if-eqz p3, :cond_6

    .line 1693
    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    :cond_6
    invoke-static {v4, p1, v5, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_1

    .end local v5    # "superClassFields":[Ljava/lang/reflect/Field;
    :cond_7
    move-object v5, v6

    .line 1689
    goto :goto_2
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1576
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .line 1577
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1576
    :cond_0
    return-object p0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 16
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 118
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-nez v13, :cond_0

    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v13, :cond_0

    .line 120
    :try_start_0
    const-string v13, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    .line 122
    const-string v13, "getConstructors"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    .line 124
    const-string v13, "kotlin.reflect.KFunction"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 125
    .local v1, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string v13, "getParameters"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v1, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    .line 127
    const-string v13, "kotlin.reflect.KParameter"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string v13, "getName"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    sput-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    .end local v1    # "class_kotlin_kfunction":Ljava/lang/Class;
    .end local v2    # "class_kotlinn_kparameter":Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    if-nez v13, :cond_2

    .line 135
    const/4 v10, 0x0

    .line 166
    :cond_1
    :goto_1
    return-object v10

    .line 129
    :catch_0
    move-exception v4

    .line 130
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    goto :goto_0

    .line 138
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    sget-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v13, :cond_3

    .line 139
    const/4 v10, 0x0

    goto :goto_1

    .line 143
    :cond_3
    const/4 v3, 0x0

    .line 144
    .local v3, "constructor":Ljava/lang/Object;
    :try_start_1
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 145
    .local v9, "kclassImpl":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 146
    .local v6, "it":Ljava/lang/Iterable;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v3    # "constructor":Ljava/lang/Object;
    .local v8, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 147
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 148
    .local v7, "item":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v7, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 149
    .local v12, "parameters":Ljava/util/List;
    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 146
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 162
    .end local v6    # "it":Ljava/lang/Iterable;
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "iterator":Ljava/util/Iterator;
    .end local v9    # "kclassImpl":Ljava/lang/Object;
    .end local v12    # "parameters":Ljava/util/List;
    :catch_1
    move-exception v4

    .line 163
    .restart local v4    # "e":Ljava/lang/Throwable;
    const/4 v13, 0x1

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 166
    const/4 v10, 0x0

    goto :goto_1

    .line 152
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v6    # "it":Ljava/lang/Iterable;
    .restart local v7    # "item":Ljava/lang/Object;
    .restart local v8    # "iterator":Ljava/util/Iterator;
    .restart local v9    # "kclassImpl":Ljava/lang/Object;
    .restart local v12    # "parameters":Ljava/util/List;
    :cond_4
    move-object v3, v7

    .restart local v3    # "constructor":Ljava/lang/Object;
    goto :goto_3

    .line 155
    .end local v3    # "constructor":Ljava/lang/Object;
    .end local v7    # "item":Ljava/lang/Object;
    .end local v12    # "parameters":Ljava/util/List;
    :cond_5
    :try_start_2
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v3, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 156
    .restart local v12    # "parameters":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v10, v13, [Ljava/lang/String;

    .line 157
    .local v10, "names":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_1

    .line 158
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 159
    .local v11, "param":Ljava/lang/Object;
    sget-object v13, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v10, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public static getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 20
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1475
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v14

    array-length v15, v14

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v4, v14, v13

    .line 1476
    .local v4, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    aget-object v5, v16, v12

    .line 1477
    .local v5, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1476
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1481
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1482
    .local v6, "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 1483
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1487
    const/4 v8, 0x1

    .line 1488
    .local v8, "match":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 1489
    aget-object v18, v6, v3

    aget-object v19, v9, v3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1490
    const/4 v8, 0x0

    .line 1495
    :cond_2
    if-eqz v8, :cond_0

    .line 1499
    const-class v18, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1500
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v2, :cond_0

    .line 1541
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "i":I
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_3
    return-object v2

    .line 1488
    .restart local v3    # "i":I
    .restart local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "match":Z
    .restart local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1475
    .end local v3    # "i":I
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v6    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 1506
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    .line 1507
    .local v10, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_6

    .line 1508
    const/4 v2, 0x0

    goto :goto_3

    .line 1511
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1512
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 1514
    .local v11, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_b

    aget-object v5, v13, v12

    .line 1515
    .restart local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1516
    .local v7, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v15, v7

    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 1514
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1519
    :cond_8
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1522
    const/4 v8, 0x1

    .line 1523
    .restart local v8    # "match":Z
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    array-length v15, v11

    if-ge v3, v15, :cond_9

    .line 1524
    aget-object v15, v7, v3

    aget-object v16, v11, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1525
    const/4 v8, 0x0

    .line 1530
    :cond_9
    if-eqz v8, :cond_7

    .line 1534
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1535
    .restart local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v2, :cond_7

    goto :goto_3

    .line 1523
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1541
    .end local v3    # "i":I
    .end local v5    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v11    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_b
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1562
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1572
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v0, "superType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 1566
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 1567
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1568
    .restart local v0    # "superType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 1569
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    move v1, v2

    .line 1572
    goto :goto_0
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z
    .locals 8
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1545
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1546
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    .line 1547
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1554
    .end local v0    # "item":Ljava/lang/String;
    :goto_1
    return v3

    .line 1546
    .restart local v0    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1553
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1554
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1557
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1556
    invoke-static {v1, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    move v3, v2

    .line 1554
    goto :goto_1

    :cond_2
    move v2, v4

    .line 1556
    goto :goto_2
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 64
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v1, :cond_0

    .line 66
    :try_start_0
    const-string v1, "kotlin.Metadata"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 73
    const/4 v1, 0x0

    .line 76
    :goto_1
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 13
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 80
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v10, :cond_0

    sget-boolean v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v10, :cond_0

    .line 82
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string v10, "kotlin.ranges.CharRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "charRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v10, "kotlin.ranges.IntRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 88
    .local v5, "intRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v10, "kotlin.ranges.LongRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 91
    .local v6, "longRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v10, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 94
    .local v3, "floatRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v10, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "doubleRangeClass":Ljava/lang/Class;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "getEndInclusive"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "isEmpty"

    aput-object v12, v10, v11

    invoke-interface {v7, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "charRangeClass":Ljava/lang/Class;
    .end local v1    # "doubleRangeClass":Ljava/lang/Class;
    .end local v3    # "floatRangeClass":Ljava/lang/Class;
    .end local v5    # "intRangeClass":Ljava/lang/Class;
    .end local v6    # "longRangeClass":Ljava/lang/Class;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    :cond_0
    :goto_0
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v10, :cond_2

    .line 114
    :cond_1
    :goto_1
    return v9

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "error":Ljava/lang/Throwable;
    sput-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    goto :goto_0

    .line 109
    .end local v2    # "error":Ljava/lang/Throwable;
    :cond_2
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v10, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 110
    .local v4, "ignores":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 114
    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_3

    :goto_2
    move v9, v8

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_2
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 990
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 994
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 1064
    :cond_1
    :goto_0
    return-object v0

    .line 998
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-lt v5, v6, :cond_3

    .line 999
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className too long. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1002
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1004
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 1008
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_5

    .line 1009
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 1010
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_4

    move-object v0, v4

    .line 1011
    goto :goto_0

    .line 1013
    :cond_4
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1016
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-string v4, "L"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1017
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "newClassName":Ljava/lang/String;
    invoke-static {v3, p1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1022
    .end local v3    # "newClassName":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_7

    .line 1023
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1025
    if-eqz p2, :cond_1

    .line 1026
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v4

    .line 1037
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1039
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_8

    if-eq v2, p1, :cond_8

    .line 1040
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1042
    if-eqz p2, :cond_1

    .line 1043
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1048
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v4

    .line 1054
    :cond_8
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1056
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1059
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1779
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1780
    .local v3, "len":I
    const/16 v8, 0xa

    if-le v3, v8, :cond_0

    .line 1781
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 1838
    :goto_0
    return-wide v8

    .line 1784
    :cond_0
    const/4 v6, 0x0

    .line 1786
    .local v6, "negative":Z
    const-wide/16 v4, 0x0

    .line 1787
    .local v4, "longValue":J
    const/4 v7, 0x0

    .line 1788
    .local v7, "scale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1789
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1790
    .local v0, "ch":C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_1

    if-nez v2, :cond_1

    .line 1791
    const/4 v6, 0x1

    .line 1788
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1795
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 1796
    if-eqz v7, :cond_2

    .line 1797
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_0

    .line 1799
    :cond_2
    sub-int v8, v3, v2

    add-int/lit8 v7, v8, -0x1

    .line 1800
    goto :goto_2

    .line 1803
    :cond_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    .line 1804
    add-int/lit8 v1, v0, -0x30

    .line 1805
    .local v1, "digit":I
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v4

    int-to-long v10, v1

    add-long v4, v8, v10

    .line 1806
    goto :goto_2

    .line 1807
    .end local v1    # "digit":I
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_0

    .line 1811
    .end local v0    # "ch":C
    :cond_5
    if-eqz v6, :cond_6

    .line 1812
    neg-long v4, v4

    .line 1815
    :cond_6
    packed-switch v7, :pswitch_data_0

    .line 1838
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_0

    .line 1817
    :pswitch_0
    long-to-double v8, v4

    goto :goto_0

    .line 1819
    :pswitch_1
    long-to-double v8, v4

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1821
    :pswitch_2
    long-to-double v8, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1823
    :pswitch_3
    long-to-double v8, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1825
    :pswitch_4
    long-to-double v8, v4

    const-wide v10, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1827
    :pswitch_5
    long-to-double v8, v4

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1829
    :pswitch_6
    long-to-double v8, v4

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    goto :goto_0

    .line 1831
    :pswitch_7
    long-to-double v8, v4

    const-wide v10, 0x416312d000000000L    # 1.0E7

    div-double/2addr v8, v10

    goto :goto_0

    .line 1833
    :pswitch_8
    long-to-double v8, v4

    const-wide v10, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v8, v10

    goto/16 :goto_0

    .line 1835
    :pswitch_9
    long-to-double v8, v4

    const-wide v10, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v8, v10

    goto/16 :goto_0

    .line 1815
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1843
    .local v3, "len":I
    const/16 v8, 0xa

    if-lt v3, v8, :cond_0

    .line 1844
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 1901
    :goto_0
    return v8

    .line 1847
    :cond_0
    const/4 v6, 0x0

    .line 1849
    .local v6, "negative":Z
    const-wide/16 v4, 0x0

    .line 1850
    .local v4, "longValue":J
    const/4 v7, 0x0

    .line 1851
    .local v7, "scale":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 1852
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1853
    .local v0, "ch":C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_1

    if-nez v2, :cond_1

    .line 1854
    const/4 v6, 0x1

    .line 1851
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1858
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 1859
    if-eqz v7, :cond_2

    .line 1860
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_0

    .line 1862
    :cond_2
    sub-int v8, v3, v2

    add-int/lit8 v7, v8, -0x1

    .line 1863
    goto :goto_2

    .line 1866
    :cond_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    .line 1867
    add-int/lit8 v1, v0, -0x30

    .line 1868
    .local v1, "digit":I
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v4

    int-to-long v10, v1

    add-long v4, v8, v10

    .line 1869
    goto :goto_2

    .line 1870
    .end local v1    # "digit":I
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_0

    .line 1874
    .end local v0    # "ch":C
    :cond_5
    if-eqz v6, :cond_6

    .line 1875
    neg-long v4, v4

    .line 1878
    :cond_6
    packed-switch v7, :pswitch_data_0

    .line 1901
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_0

    .line 1880
    :pswitch_0
    long-to-float v8, v4

    goto :goto_0

    .line 1882
    :pswitch_1
    long-to-float v8, v4

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1884
    :pswitch_2
    long-to-float v8, v4

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1886
    :pswitch_3
    long-to-float v8, v4

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1888
    :pswitch_4
    long-to-float v8, v4

    const v9, 0x461c4000    # 10000.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1890
    :pswitch_5
    long-to-float v8, v4

    const v9, 0x47c35000    # 100000.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1892
    :pswitch_6
    long-to-float v8, v4

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1894
    :pswitch_7
    long-to-float v8, v4

    const v9, 0x4b189680    # 1.0E7f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1896
    :pswitch_8
    long-to-float v8, v4

    const v9, 0x4cbebc20    # 1.0E8f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1898
    :pswitch_9
    long-to-float v8, v4

    const v9, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v8, v9

    goto :goto_0

    .line 1878
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z
    .locals 6
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "classMofifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Member;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1619
    if-eqz p1, :cond_0

    sget-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v5, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v3

    .line 1625
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1627
    .local v2, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    const-class v5, Ljava/lang/Object;

    if-ne v2, v5, :cond_3

    .line 1628
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_0

    :cond_3
    move-object v1, p1

    .line 1634
    check-cast v1, Ljava/lang/reflect/AccessibleObject;

    .line 1637
    .local v1, "obj":Ljava/lang/reflect/AccessibleObject;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1638
    goto :goto_0

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "error":Ljava/security/AccessControlException;
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method
