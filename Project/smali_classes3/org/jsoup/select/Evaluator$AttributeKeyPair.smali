.class public abstract Lorg/jsoup/select/Evaluator$AttributeKeyPair;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttributeKeyPair"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/select/Evaluator$AttributeKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "trimValue"    # Z

    .prologue
    const/4 v1, 0x1

    .line 310
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 311
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 312
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/select/Evaluator$AttributeKeyPair;->key:Ljava/lang/String;

    .line 315
    const-string v2, "\'"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\'"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "\""

    .line 316
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\""

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 317
    .local v0, "isStringLiteral":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 321
    :cond_2
    if-eqz p3, :cond_4

    invoke-static {p2}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/jsoup/select/Evaluator$AttributeKeyPair;->value:Ljava/lang/String;

    .line 322
    return-void

    .line 316
    .end local v0    # "isStringLiteral":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    .restart local v0    # "isStringLiteral":Z
    :cond_4
    invoke-static {p2, v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
