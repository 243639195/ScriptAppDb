.class public Lorg/java_websocket/protocols/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"

# interfaces
.implements Lorg/java_websocket/protocols/IProtocol;


# static fields
.field private static final patternComma:Ljava/util/regex/Pattern;

.field private static final patternSpace:Ljava/util/regex/Pattern;


# instance fields
.field private final providedProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/java_websocket/protocols/Protocol;->patternSpace:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/java_websocket/protocols/Protocol;->patternComma:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providedProtocol"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public acceptProvidedProtocol(Ljava/lang/String;)Z
    .locals 8
    .param p1, "inputProtocolHeader"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    const-string v5, ""

    iget-object v6, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v3

    .line 62
    :cond_1
    sget-object v5, Lorg/java_websocket/protocols/Protocol;->patternSpace:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "protocolHeader":Ljava/lang/String;
    sget-object v5, Lorg/java_websocket/protocols/Protocol;->patternComma:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "headers":[Ljava/lang/String;
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 65
    .local v0, "header":Ljava/lang/String;
    iget-object v7, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "header":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 69
    goto :goto_0
.end method

.method public copyInstance()Lorg/java_websocket/protocols/IProtocol;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lorg/java_websocket/protocols/Protocol;

    invoke-virtual {p0}, Lorg/java_websocket/protocols/Protocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 93
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 96
    check-cast v0, Lorg/java_websocket/protocols/Protocol;

    .line 98
    .local v0, "protocol":Lorg/java_websocket/protocols/Protocol;
    iget-object v1, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    iget-object v2, v0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getProvidedProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/java_websocket/protocols/Protocol;->providedProtocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/java_websocket/protocols/Protocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
