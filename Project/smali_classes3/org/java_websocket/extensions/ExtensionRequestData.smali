.class public Lorg/java_websocket/extensions/ExtensionRequestData;
.super Ljava/lang/Object;
.source "ExtensionRequestData.java"


# static fields
.field public static final EMPTY_VALUE:Ljava/lang/String; = ""


# instance fields
.field private extensionName:Ljava/lang/String;

.field private extensionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/extensions/ExtensionRequestData;->extensionParameters:Ljava/util/Map;

    .line 15
    return-void
.end method

.method public static parseExtensionRequest(Ljava/lang/String;)Lorg/java_websocket/extensions/ExtensionRequestData;
    .locals 10
    .param p0, "extensionRequest"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 18
    new-instance v0, Lorg/java_websocket/extensions/ExtensionRequestData;

    invoke-direct {v0}, Lorg/java_websocket/extensions/ExtensionRequestData;-><init>()V

    .line 19
    .local v0, "extensionData":Lorg/java_websocket/extensions/ExtensionRequestData;
    const-string v6, ";"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "parts":[Ljava/lang/String;
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/java_websocket/extensions/ExtensionRequestData;->extensionName:Ljava/lang/String;

    .line 22
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 23
    aget-object v6, v3, v1

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "keyValue":[Ljava/lang/String;
    const-string v5, ""

    .line 27
    .local v5, "value":Ljava/lang/String;
    array-length v6, v2

    if-le v6, v8, :cond_3

    .line 28
    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "tempValue":Ljava/lang/String;
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "\'"

    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 34
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 37
    :cond_2
    move-object v5, v4

    .line 40
    .end local v4    # "tempValue":Ljava/lang/String;
    :cond_3
    iget-object v6, v0, Lorg/java_websocket/extensions/ExtensionRequestData;->extensionParameters:Ljava/util/Map;

    aget-object v7, v2, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "keyValue":[Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public getExtensionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/java_websocket/extensions/ExtensionRequestData;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/java_websocket/extensions/ExtensionRequestData;->extensionParameters:Ljava/util/Map;

    return-object v0
.end method
