.class public Lkiller/openapi/core/PluginMethod;
.super Ljava/lang/Object;
.source "PluginMethod.java"


# instance fields
.field private final handler:Lkiller/openapi/core/PluginHandler;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lkiller/openapi/core/PluginHandler;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "handler"    # Lkiller/openapi/core/PluginHandler;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lkiller/openapi/core/PluginMethod;->method:Ljava/lang/reflect/Method;

    .line 14
    iput-object p2, p0, Lkiller/openapi/core/PluginMethod;->handler:Lkiller/openapi/core/PluginHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lkiller/openapi/core/PluginMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lkiller/openapi/core/PluginMethod;->handler:Lkiller/openapi/core/PluginHandler;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
