.class final Lorg/jsoup/parser/Token$Comment;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Comment"
.end annotation


# instance fields
.field bogus:Z

.field private final data:Ljava/lang/StringBuilder;

.field private dataS:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    .line 320
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 321
    return-void
.end method

.method private ensureData()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method final append(C)Lorg/jsoup/parser/Token$Comment;
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Comment;->ensureData()V

    .line 339
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    return-object p0
.end method

.method final append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Comment;->ensureData()V

    .line 329
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iput-object p1, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    .line 334
    :goto_0
    return-object p0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Comment;->reset(Ljava/lang/StringBuilder;)V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    .line 316
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
