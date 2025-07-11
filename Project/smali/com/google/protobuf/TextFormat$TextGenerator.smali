.class final Lcom/google/protobuf/TextFormat$TextGenerator;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextGenerator"
.end annotation


# instance fields
.field private atStartOfLine:Z

.field private final indent:Ljava/lang/StringBuilder;

.field private final output:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    .line 487
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private write(Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 534
    :cond_0
    iget-boolean p2, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 535
    iput-boolean p2, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    .line 536
    iget-object p2, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 538
    :cond_1
    iget-object p2, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->output:Ljava/lang/Appendable;

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final indent()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final outdent()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->indent:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final print(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 526
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->write(Ljava/lang/CharSequence;I)V

    return-void

    .line 520
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 521
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    sub-int v2, v1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-direct {p0, v3, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;->write(Ljava/lang/CharSequence;I)V

    add-int/lit8 v2, v1, 0x1

    .line 523
    iput-boolean v4, p0, Lcom/google/protobuf/TextFormat$TextGenerator;->atStartOfLine:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
