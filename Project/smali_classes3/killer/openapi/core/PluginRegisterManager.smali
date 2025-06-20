.class public Lkiller/openapi/core/PluginRegisterManager;
.super Ljava/lang/Object;
.source "PluginRegisterManager.java"


# static fields
.field private static final handleMethods:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lkiller/openapi/core/PluginMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lkiller/openapi/core/PluginRegisterManager;->handleMethods:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private detectHandlerMethods(Lkiller/openapi/core/PluginRegister;Lkiller/openapi/core/PluginHandler;)V
    .locals 7
    .param p1, "register"    # Lkiller/openapi/core/PluginRegister;
    .param p2, "handler"    # Lkiller/openapi/core/PluginHandler;

    .prologue
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    .local v2, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 69
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v6, Lkiller/openapi/core/PluginMapper;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lkiller/openapi/core/PluginMapper;

    .line 70
    .local v3, "router":Lkiller/openapi/core/PluginMapper;
    if-nez v3, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lkiller/openapi/core/PluginRegisterManager;->getMappingForMethod(Lkiller/openapi/core/PluginRegister;Lkiller/openapi/core/PluginHandler;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "mapping":Ljava/lang/String;
    const-string v6, "mapping"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p2, v1, v0}, Lkiller/openapi/core/PluginRegisterManager;->registerHandlerMethod(Lkiller/openapi/core/PluginHandler;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    .end local v0    # "mapping":Ljava/lang/String;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "router":Lkiller/openapi/core/PluginMapper;
    :cond_1
    return-void
.end method

.method private getMappingForMethod(Lkiller/openapi/core/PluginRegister;Lkiller/openapi/core/PluginHandler;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 6
    .param p1, "register"    # Lkiller/openapi/core/PluginRegister;
    .param p2, "handler"    # Lkiller/openapi/core/PluginHandler;
    .param p3, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 92
    const-class v2, Lkiller/openapi/core/PluginMapper;

    invoke-virtual {p3, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lkiller/openapi/core/PluginMapper;

    .line 93
    .local v1, "methodRouter":Lkiller/openapi/core/PluginMapper;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lkiller/openapi/core/PluginMapper;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lkiller/openapi/core/PluginMapper;

    .line 94
    .local v0, "handlerRouter":Lkiller/openapi/core/PluginMapper;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 95
    const-string v2, "/%s/%s/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lkiller/openapi/core/PluginRegister;->getPluginName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Lkiller/openapi/core/PluginMapper;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {v1}, Lkiller/openapi/core/PluginMapper;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerHandlerMethod(Lkiller/openapi/core/PluginHandler;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lkiller/openapi/core/PluginHandler;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "mapping"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lkiller/openapi/core/PluginMethod;

    invoke-direct {v0, p2, p1}, Lkiller/openapi/core/PluginMethod;-><init>(Ljava/lang/reflect/Method;Lkiller/openapi/core/PluginHandler;)V

    .line 81
    .local v0, "handlerMethod":Lkiller/openapi/core/PluginMethod;
    sget-object v1, Lkiller/openapi/core/PluginRegisterManager;->handleMethods:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private registerPluginHandler(Lkiller/openapi/core/PluginRegister;Ljava/util/List;)V
    .locals 4
    .param p1, "register"    # Lkiller/openapi/core/PluginRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkiller/openapi/core/PluginRegister;",
            "Ljava/util/List",
            "<",
            "Lkiller/openapi/core/PluginHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "handlers":Ljava/util/List;, "Ljava/util/List<Lkiller/openapi/core/PluginHandler;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiller/openapi/core/PluginHandler;

    .line 53
    .local v0, "handler":Lkiller/openapi/core/PluginHandler;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 54
    .local v1, "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lkiller/openapi/core/PluginMapper;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 57
    invoke-direct {p0, p1, v0}, Lkiller/openapi/core/PluginRegisterManager;->detectHandlerMethods(Lkiller/openapi/core/PluginRegister;Lkiller/openapi/core/PluginHandler;)V

    goto :goto_0

    .line 59
    .end local v0    # "handler":Lkiller/openapi/core/PluginHandler;
    .end local v1    # "handlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs dispatcher(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "arg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 24
    sget-object v1, Lkiller/openapi/core/PluginRegisterManager;->handleMethods:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiller/openapi/core/PluginMethod;

    .line 25
    .local v0, "handlerMethod":Lkiller/openapi/core/PluginMethod;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p2}, Lkiller/openapi/core/PluginMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerPlugin(Lkiller/openapi/core/PluginRegister;)V
    .locals 2
    .param p1, "register"    # Lkiller/openapi/core/PluginRegister;

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "pluginHandlers":Ljava/util/List;, "Ljava/util/List<Lkiller/openapi/core/PluginHandler;>;"
    invoke-interface {p1, v0}, Lkiller/openapi/core/PluginRegister;->register(Ljava/util/List;)V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0, p1, v0}, Lkiller/openapi/core/PluginRegisterManager;->registerPluginHandler(Lkiller/openapi/core/PluginRegister;Ljava/util/List;)V

    goto :goto_0
.end method
