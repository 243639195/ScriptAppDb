.class final enum Lorg/jsoup/parser/TokeniserState$19;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 1
    .param p1, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p2, "r"    # Lorg/jsoup/parser/CharacterReader;

    .prologue
    .line 312
    sget-object v0, Lorg/jsoup/parser/TokeniserState$19;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;->access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V

    .line 313
    return-void
.end method
