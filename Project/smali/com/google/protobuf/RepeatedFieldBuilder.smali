.class public Lcom/google/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private isMessagesListMutable:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 138
    iput-boolean p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 139
    iput-object p3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 140
    iput-boolean p4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    return-void
.end method

.method private ensureBuilders()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_1

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 167
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private ensureMutableMessageList()V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    :cond_0
    return-void
.end method

.method private getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    return-object p1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 228
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method private incrementModCounts()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->incrementModCount()V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->incrementModCount()V

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->incrementModCount()V

    :cond_2
    return-void
.end method

.method private onChanged()V
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 572
    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 365
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 370
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 372
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 373
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 377
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    .line 378
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    .line 386
    :goto_2
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 387
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0

    .line 382
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 365
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    if-nez v1, :cond_0

    .line 367
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 421
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 423
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 424
    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 423
    invoke-direct {v0, p2, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 425
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 427
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 428
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 429
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 399
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 401
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 402
    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 401
    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 403
    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 406
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 407
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 343
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 346
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 347
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 348
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 351
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 319
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 322
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 327
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public build()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 483
    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    .line 489
    :cond_0
    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 492
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 493
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    .line 494
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v4, :cond_2

    .line 496
    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    if-eq v4, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 504
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    const/4 v1, 0x0

    .line 510
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 516
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 517
    iput-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 518
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    .line 511
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 460
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 461
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 467
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    goto :goto_1

    .line 462
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    goto :goto_0

    .line 469
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 470
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 245
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    .line 248
    new-instance v1, Lcom/google/protobuf/SingleFieldBuilder;

    .line 249
    iget-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 248
    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 250
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    .line 543
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    .line 529
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    return-object v0
.end method

.method public getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageOrBuilder;

    return-object p1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageOrBuilder;

    return-object p1

    .line 279
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getMessageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    .line 557
    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markDirty()V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 440
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 441
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 294
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 297
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 300
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 305
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 306
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method
