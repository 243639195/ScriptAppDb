.class final Lorg/jsoup/parser/Token$EOF;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EOF"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 401
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$EOF;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 402
    return-void
.end method


# virtual methods
.method reset()Lorg/jsoup/parser/Token;
    .locals 0

    .prologue
    .line 406
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-string v0, ""

    return-object v0
.end method
