.class public Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "QueryParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final NTH_AB:Ljava/util/regex/Pattern;

.field private static final NTH_B:Ljava/util/regex/Pattern;

.field private static final combinators:[Ljava/lang/String;


# instance fields
.field private final evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;

.field private final tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    const-class v0, Lorg/jsoup/select/QueryParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/jsoup/select/QueryParser;->$assertionsDisabled:Z

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ","

    aput-object v3, v0, v2

    const-string v3, ">"

    aput-object v3, v0, v1

    const-string v3, "+"

    aput-object v3, v0, v4

    const-string v3, "~"

    aput-object v3, v0, v5

    const-string v3, " "

    aput-object v3, v0, v6

    sput-object v0, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "="

    aput-object v3, v0, v2

    const-string v2, "!="

    aput-object v2, v0, v1

    const-string v1, "^="

    aput-object v1, v0, v4

    const-string v1, "$="

    aput-object v1, v0, v5

    const-string v1, "*="

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "~="

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 309
    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    .line 310
    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    move v0, v2

    .line 17
    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 34
    return-void
.end method

.method private allElements()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method private byAttribute()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 258
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "cq":Lorg/jsoup/parser/TokenQueue;
    sget-object v2, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 263
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeStarting;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v3, v1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 282
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 287
    :cond_7
    new-instance v2, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v3, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v2, v3, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private byClass()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private byId()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method private byTag()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    .line 238
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "tagName":Ljava/lang/String;
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 242
    const-string v2, "*|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "plainTag":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/CombiningEvaluator$Or;

    new-array v4, v4, [Lorg/jsoup/select/Evaluator;

    const/4 v5, 0x0

    new-instance v6, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v6, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/jsoup/select/Evaluator$TagEndsWith;

    const-string v7, "*|"

    const-string v8, ":"

    .line 246
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 244
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v0    # "plainTag":Ljava/lang/String;
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const-string v2, "|"

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_1
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v3, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private combinator(C)V
    .locals 11
    .param p1, "combinator"    # C

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 85
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v7}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 86
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "subQuery":Ljava/lang/String;
    invoke-static {v6}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v2

    .line 91
    .local v2, "newEval":Lorg/jsoup/select/Evaluator;
    const/4 v4, 0x0

    .line 93
    .local v4, "replaceRightMost":Z
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 94
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    .local v0, "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v5, v0

    .line 96
    .local v5, "rootEval":Lorg/jsoup/select/Evaluator;
    instance-of v7, v5, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz v7, :cond_1

    const/16 v7, 0x2c

    if-eq p1, v7, :cond_1

    .line 97
    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    invoke-virtual {v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->rightMostEvaluator()Lorg/jsoup/select/Evaluator;

    move-result-object v0

    .line 98
    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    sget-boolean v7, Lorg/jsoup/select/QueryParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 99
    :cond_0
    const/4 v4, 0x1

    .line 105
    :cond_1
    :goto_0
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 108
    sparse-switch p1, :sswitch_data_0

    .line 133
    new-instance v7, Lorg/jsoup/select/Selector$SelectorParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown combinator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 103
    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    .end local v5    # "rootEval":Lorg/jsoup/select/Evaluator;
    :cond_2
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v7}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v5, v0

    .restart local v5    # "rootEval":Lorg/jsoup/select/Evaluator;
    goto :goto_0

    .line 110
    :sswitch_0
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v7, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v8, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v8, v0}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    .local v1, "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v0, v1

    .line 136
    .end local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    :goto_1
    if-eqz v4, :cond_4

    move-object v7, v5

    .line 137
    check-cast v7, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v7, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->replaceRightMostEvaluator(Lorg/jsoup/select/Evaluator;)V

    .line 139
    :goto_2
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void

    .line 113
    :sswitch_1
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v7, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v8, Lorg/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v8, v0}, Lorg/jsoup/select/StructuralEvaluator$Parent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v0, v1

    .line 114
    .end local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    goto :goto_1

    .line 116
    :sswitch_2
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v7, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v8, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v8, v0}, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v0, v1

    .line 117
    .end local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    goto :goto_1

    .line 119
    :sswitch_3
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v7, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v8, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v8, v0}, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-direct {v1, v7}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .end local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    move-object v0, v1

    .line 120
    .end local v1    # "currentEval":Lorg/jsoup/select/Evaluator;
    .restart local v0    # "currentEval":Lorg/jsoup/select/Evaluator;
    goto :goto_1

    .line 123
    :sswitch_4
    instance-of v7, v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz v7, :cond_3

    move-object v3, v0

    .line 124
    check-cast v3, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 129
    .local v3, "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    :goto_3
    invoke-virtual {v3, v2}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    .line 130
    move-object v0, v3

    .line 131
    goto :goto_1

    .line 126
    .end local v3    # "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    :cond_3
    new-instance v3, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-direct {v3}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>()V

    .line 127
    .restart local v3    # "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    invoke-virtual {v3, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    goto :goto_3

    .line 138
    .end local v3    # "or":Lorg/jsoup/select/CombiningEvaluator$Or;
    :cond_4
    move-object v5, v0

    goto :goto_2

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_4
        0x3e -> :sswitch_0
        0x7e -> :sswitch_3
    .end sparse-switch
.end method

.method private consumeIndex()I
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "indexS":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 143
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    .local v0, "sq":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x28

    const/16 v4, 0x29

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v3, 0x5b

    const/16 v4, 0x5d

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 157
    :cond_2
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 153
    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    goto :goto_0

    .line 155
    :cond_4
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private contains(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 361
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":containsOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "searchText":Ljava/lang/String;
    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-eqz p1, :cond_1

    .line 365
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_1
    return-void

    .line 361
    .end local v0    # "searchText":Ljava/lang/String;
    :cond_0
    const-string v1, ":contains"

    goto :goto_0

    .line 367
    .restart local v0    # "searchText":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private containsData()V
    .locals 4

    .prologue
    .line 372
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":containsData"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "searchText":Ljava/lang/String;
    const-string v1, ":containsData(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsData;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method private cssNthChild(ZZ)V
    .locals 9
    .param p1, "backwards"    # Z
    .param p2, "ofType"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 313
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "argS":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 315
    .local v3, "mAB":Ljava/util/regex/Matcher;
    sget-object v5, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 317
    .local v4, "mB":Ljava/util/regex/Matcher;
    const-string v5, "odd"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    const/4 v0, 0x2

    .line 319
    .local v0, "a":I
    const/4 v2, 0x1

    .line 332
    .local v2, "b":I
    :goto_0
    if-eqz p2, :cond_7

    .line 333
    if-eqz p1, :cond_6

    .line 334
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :goto_1
    return-void

    .line 320
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_0
    const-string v5, "even"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    const/4 v0, 0x2

    .line 322
    .restart local v0    # "a":I
    const/4 v2, 0x0

    .restart local v2    # "b":I
    goto :goto_0

    .line 323
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .restart local v0    # "a":I
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "b":I
    :cond_3
    goto :goto_0

    .line 326
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    const/4 v0, 0x0

    .line 328
    .restart local v0    # "a":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, "^\\+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "b":I
    goto :goto_0

    .line 330
    .end local v0    # "a":I
    .end local v2    # "b":I
    :cond_5
    new-instance v5, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v6, "Could not parse nth-index \'%s\': unexpected format"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v1, v7, v2

    invoke-direct {v5, v6, v7}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 336
    .restart local v0    # "a":I
    .restart local v2    # "b":I
    :cond_6
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_7
    if-eqz p1, :cond_8

    .line 339
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_8
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {v6, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private findElements()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byId()V

    .line 220
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byClass()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    :cond_2
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byTag()V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byAttribute()V

    goto :goto_0

    .line 169
    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->allElements()V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexLessThan()V

    goto :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexGreaterThan()V

    goto :goto_0

    .line 175
    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexEquals()V

    goto :goto_0

    .line 177
    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->has()V

    goto :goto_0

    .line 179
    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_0

    .line 181
    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":containsOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    invoke-direct {p0, v5}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_0

    .line 183
    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":containsData("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->containsData()V

    goto/16 :goto_0

    .line 185
    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matches("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    invoke-direct {p0, v4}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 187
    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matchesOwn("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 188
    invoke-direct {p0, v5}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_0

    .line 189
    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":not("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->not()V

    goto/16 :goto_0

    .line 191
    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-child("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 192
    invoke-direct {p0, v4, v4}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 193
    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-last-child("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 194
    invoke-direct {p0, v5, v4}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 195
    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-of-type("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 196
    invoke-direct {p0, v4, v5}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 197
    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 198
    invoke-direct {p0, v5, v5}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_0

    .line 199
    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 200
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 201
    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 202
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 203
    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 204
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 205
    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 206
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 207
    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 209
    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 210
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 211
    :cond_19
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 212
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsEmpty;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    :cond_1a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 214
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    :cond_1b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matchText"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 216
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$MatchText;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$MatchText;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 218
    :cond_1c
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v3}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private has()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":has"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method private indexEquals()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method private indexLessThan()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method private matches(Z)V
    .locals 4
    .param p1, "own"    # Z

    .prologue
    .line 380
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    if-eqz p1, :cond_0

    const-string v1, ":matchesOwn"

    :goto_0
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "regex":Ljava/lang/String;
    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-eqz p1, :cond_1

    .line 385
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :goto_1
    return-void

    .line 380
    .end local v0    # "regex":Ljava/lang/String;
    :cond_0
    const-string v1, ":matches"

    goto :goto_0

    .line 387
    .restart local v0    # "regex":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Matches;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private not()V
    .locals 4

    .prologue
    .line 392
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":not"

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "subQuery":Ljava/lang/String;
    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jsoup/select/StructuralEvaluator$Not;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 5
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Lorg/jsoup/select/QueryParser;

    invoke-direct {v1, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "p":Lorg/jsoup/select/QueryParser;
    invoke-virtual {v1}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 46
    .end local v1    # "p":Lorg/jsoup/select/QueryParser;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method parse()Lorg/jsoup/select/Evaluator;
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 58
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v2}, Lorg/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    .line 65
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v0

    .line 69
    .local v0, "seenWhite":Z
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 62
    .end local v0    # "seenWhite":Z
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    .line 71
    .restart local v0    # "seenWhite":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    goto :goto_0

    .line 78
    .end local v0    # "seenWhite":Z
    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 79
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 81
    :goto_1
    return-object v1

    :cond_4
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    return-object v0
.end method
