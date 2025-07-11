.class public Lcom/lidroid/xutils/view/EventListenerManager;
.super Ljava/lang/Object;
.source "EventListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/util/DoubleKeyValueMap<",
            "Lcom/lidroid/xutils/view/ViewInjectInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;-><init>()V

    .line 40
    sput-object v0, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewByInfo(Lcom/lidroid/xutils/view/ViewInjectInfo;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 52
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    .line 53
    invoke-interface {p2}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerType()Ljava/lang/Class;

    move-result-object v0

    .line 54
    invoke-interface {p2}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerSetter()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {p2}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->methodName()Ljava/lang/String;

    move-result-object p2

    .line 58
    sget-object v2, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {v2, p1, v0}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 61
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    .line 62
    invoke-virtual {v4}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {v4, p2, p4}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-nez v5, :cond_2

    .line 68
    new-instance v2, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    invoke-direct {v2, p3}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v2, p2, p4}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 72
    new-array p3, v4, [Ljava/lang/Class;

    aput-object v0, p3, v3

    .line 70
    invoke-static {p2, p3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    sget-object p2, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {p2, p1, v0, v2}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Class;

    aput-object v0, p2, v3

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 79
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v2, p2, v3

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
