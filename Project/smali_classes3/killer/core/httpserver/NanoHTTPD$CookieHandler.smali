.class public Lkiller/core/httpserver/NanoHTTPD$CookieHandler;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkiller/core/httpserver/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CookieHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkiller/core/httpserver/NanoHTTPD$Cookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkiller/core/httpserver/NanoHTTPD;


# direct methods
.method public constructor <init>(Lkiller/core/httpserver/NanoHTTPD;Ljava/util/Map;)V
    .locals 10
    .param p1, "this$0"    # Lkiller/core/httpserver/NanoHTTPD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 214
    iput-object p1, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->this$0:Lkiller/core/httpserver/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    .line 215
    const-string v4, "cookie"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, "raw":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 217
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "tokens":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v3, v4

    .line 219
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "data":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 221
    iget-object v7, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    aget-object v8, v0, v5

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v0, "-delete-"

    const/16 v1, -0x1e

    invoke-virtual {p0, p1, v0, v1}, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    new-instance v1, Lkiller/core/httpserver/NanoHTTPD$Cookie;

    invoke-static {p3}, Lkiller/core/httpserver/NanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lkiller/core/httpserver/NanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public set(Lkiller/core/httpserver/NanoHTTPD$Cookie;)V
    .locals 1
    .param p1, "cookie"    # Lkiller/core/httpserver/NanoHTTPD$Cookie;

    .prologue
    .line 255
    iget-object v0, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public unloadQueue(Lkiller/core/httpserver/NanoHTTPD$Response;)V
    .locals 4
    .param p1, "response"    # Lkiller/core/httpserver/NanoHTTPD$Response;

    .prologue
    .line 281
    iget-object v1, p0, Lkiller/core/httpserver/NanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkiller/core/httpserver/NanoHTTPD$Cookie;

    .line 282
    .local v0, "cookie":Lkiller/core/httpserver/NanoHTTPD$Cookie;
    const-string v2, "Set-Cookie"

    invoke-virtual {v0}, Lkiller/core/httpserver/NanoHTTPD$Cookie;->getHTTPHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lkiller/core/httpserver/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "cookie":Lkiller/core/httpserver/NanoHTTPD$Cookie;
    :cond_0
    return-void
.end method
