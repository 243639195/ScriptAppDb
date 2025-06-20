.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "()<>@,;:\\\"\t .[]"

    .line 191
    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 168
    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 169
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 172
    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    if-nez v3, :cond_4

    const/16 v2, 0x5c

    if-ne v4, v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/16 v2, 0xd

    if-ne v4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    .line 381
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 247
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 248
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 251
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 252
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 297
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    const/16 v5, 0x5c

    const/16 v6, 0x28

    const/4 v7, 0x1

    if-eq v3, v6, :cond_c

    const/16 v1, 0x22

    if-ne v3, v1, :cond_7

    .line 303
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_1
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v3, :cond_2

    .line 322
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Unbalanced quoted string"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    .line 306
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_2
    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne v0, v1, :cond_6

    .line 311
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    if-eqz v2, :cond_5

    .line 315
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v7

    invoke-static {v0, v8, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 317
    :cond_5
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v7

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_3
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 303
    :cond_6
    :goto_4
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    :cond_7
    const/16 v2, 0x20

    if-lt v3, v2, :cond_b

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_b

    .line 326
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8

    goto :goto_7

    .line 334
    :cond_8
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_5
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v3, v5, :cond_9

    goto :goto_6

    .line 335
    :cond_9
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_a

    if-ge v3, v4, :cond_a

    if-eq v3, v6, :cond_a

    if-eq v3, v2, :cond_a

    if-eq v3, v1, :cond_a

    .line 339
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_a

    .line 334
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v7

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    .line 342
    :cond_a
    :goto_6
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 327
    :cond_b
    :goto_7
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v7

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 328
    new-array v1, v7, [C

    aput-char v3, v1, v0

    .line 330
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v3, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 265
    :cond_c
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v7

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v8, v2

    const/4 v2, 0x1

    :goto_8
    if-lez v2, :cond_12

    .line 266
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v9, v10, :cond_d

    goto :goto_b

    .line 268
    :cond_d
    iget-object v9, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_e

    .line 270
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v8, v7

    iput v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_9
    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    if-ne v9, v4, :cond_f

    goto :goto_9

    :cond_f
    if-ne v9, v6, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const/16 v10, 0x29

    if-ne v9, v10, :cond_11

    add-int/lit8 v2, v2, -0x1

    .line 267
    :cond_11
    :goto_a
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v9, v7

    iput v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_8

    :cond_12
    :goto_b
    if-eqz v2, :cond_13

    .line 280
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v1, "Unbalanced comments"

    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_13
    iget-boolean v2, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v2, :cond_15

    if-eqz v8, :cond_14

    .line 287
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v7

    invoke-static {v0, v3, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 289
    :cond_14
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v7

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_c
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 295
    :cond_15
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v2

    if-ne v2, v1, :cond_16

    .line 296
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    :cond_16
    move v2, v8

    goto/16 :goto_0
.end method

.method private skipWhiteSpace()I
    .locals 2

    .line 348
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 351
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    .line 348
    :cond_1
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .line 237
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 206
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 207
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 208
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 224
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 225
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 226
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    return-object v0
.end method
