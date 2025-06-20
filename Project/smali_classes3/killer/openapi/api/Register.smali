.class public Lkiller/openapi/api/Register;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Lkiller/openapi/core/PluginRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "native"

    return-object v0
.end method

.method public register(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkiller/openapi/core/PluginHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lkiller/openapi/core/PluginHandler;>;"
    new-instance v0, Lkiller/openapi/api/PluginApi;

    invoke-direct {v0}, Lkiller/openapi/api/PluginApi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lkiller/openapi/api/CloudApi;

    invoke-direct {v0}, Lkiller/openapi/api/CloudApi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Lkiller/openapi/api/ScriptApi;

    invoke-direct {v0}, Lkiller/openapi/api/ScriptApi;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
