.class Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;
.source "SearchSequence.java"


# static fields
.field private static cal:Ljava/util/Calendar;

.field private static monthTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 357
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Feb"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Mar"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Apr"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "May"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Jun"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Jul"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Aug"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Sep"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Oct"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Nov"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Dec"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    const/4 v0, 0x0

    .line 153
    aget-object v0, p0, v0

    invoke-static {v0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    .line 156
    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "BODY"

    .line 321
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v0

    .line 251
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 253
    invoke-virtual {p0}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v2

    .line 255
    invoke-virtual {p0}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object p0

    .line 256
    array-length v3, v2

    if-nez v3, :cond_0

    array-length v3, p0

    if-nez v3, :cond_0

    .line 257
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Invalid FlagTerm"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 259
    :goto_0
    array-length v5, v2

    if-lt v4, v5, :cond_3

    .line 274
    :goto_1
    array-length v2, p0

    if-lt v3, v2, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "KEYWORD"

    goto :goto_2

    :cond_2
    const-string v2, "UNKEYWORD"

    .line 275
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 276
    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    :cond_3
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_4

    const-string v5, "DELETED"

    goto :goto_3

    :cond_4
    const-string v5, "UNDELETED"

    .line 261
    :goto_3
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    .line 262
    :cond_5
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_7

    if-eqz v0, :cond_6

    const-string v5, "ANSWERED"

    goto :goto_4

    :cond_6
    const-string v5, "UNANSWERED"

    .line 263
    :goto_4
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    .line 264
    :cond_7
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_9

    if-eqz v0, :cond_8

    const-string v5, "DRAFT"

    goto :goto_5

    :cond_8
    const-string v5, "UNDRAFT"

    .line 265
    :goto_5
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    .line 266
    :cond_9
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_b

    if-eqz v0, :cond_a

    const-string v5, "FLAGGED"

    goto :goto_6

    :cond_a
    const-string v5, "UNFLAGGED"

    .line 267
    :goto_6
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    .line 268
    :cond_b
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_d

    if-eqz v0, :cond_c

    const-string v5, "RECENT"

    goto :goto_7

    :cond_c
    const-string v5, "OLD"

    .line 269
    :goto_7
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_9

    .line 270
    :cond_d
    aget-object v5, v2, v4

    sget-object v6, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v5, v6, :cond_f

    if-eqz v0, :cond_e

    const-string v5, "SEEN"

    goto :goto_8

    :cond_e
    const-string v5, "UNSEEN"

    .line 271
    :goto_8
    invoke-virtual {v1, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :cond_f
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private static from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "FROM"

    .line 285
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    instance-of v0, p0, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_1

    .line 69
    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_2

    .line 71
    check-cast p0, Ljavax/mail/search/NotTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 72
    :cond_2
    instance-of v0, p0, Ljavax/mail/search/HeaderTerm;

    if-eqz v0, :cond_3

    .line 73
    check-cast p0, Ljavax/mail/search/HeaderTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 74
    :cond_3
    instance-of v0, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_4

    .line 75
    check-cast p0, Ljavax/mail/search/FlagTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 76
    :cond_4
    instance-of v0, p0, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_5

    .line 77
    check-cast p0, Ljavax/mail/search/FromTerm;

    .line 78
    invoke-virtual {p0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 80
    :cond_5
    instance-of v0, p0, Ljavax/mail/search/FromStringTerm;

    if-eqz v0, :cond_6

    .line 81
    check-cast p0, Ljavax/mail/search/FromStringTerm;

    .line 82
    invoke-virtual {p0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 84
    :cond_6
    instance-of v0, p0, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_7

    .line 85
    check-cast p0, Ljavax/mail/search/RecipientTerm;

    .line 86
    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {v0, p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 90
    :cond_7
    instance-of v0, p0, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v0, :cond_8

    .line 91
    check-cast p0, Ljavax/mail/search/RecipientStringTerm;

    .line 92
    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {v0, p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 96
    :cond_8
    instance-of v0, p0, Ljavax/mail/search/SubjectTerm;

    if-eqz v0, :cond_9

    .line 97
    check-cast p0, Ljavax/mail/search/SubjectTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 98
    :cond_9
    instance-of v0, p0, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_a

    .line 99
    check-cast p0, Ljavax/mail/search/BodyTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 100
    :cond_a
    instance-of v0, p0, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_b

    .line 101
    check-cast p0, Ljavax/mail/search/SizeTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 102
    :cond_b
    instance-of v0, p0, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_c

    .line 103
    check-cast p0, Ljavax/mail/search/SentDateTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 104
    :cond_c
    instance-of v0, p0, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_d

    .line 105
    check-cast p0, Ljavax/mail/search/ReceivedDateTerm;

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 106
    :cond_d
    instance-of v0, p0, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_e

    .line 107
    check-cast p0, Ljavax/mail/search/MessageIDTerm;

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    return-object p0

    .line 109
    :cond_e
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string p1, "Search too complex"

    invoke-direct {p0, p1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    .line 232
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isAscii(Ljava/lang/String;)Z
    .locals 5

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 142
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static isAscii(Ljavax/mail/search/SearchTerm;)Z
    .locals 3

    .line 117
    :goto_0
    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-nez v0, :cond_3

    instance-of v1, p0, Ljavax/mail/search/OrTerm;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_1

    .line 128
    check-cast p0, Ljavax/mail/search/NotTerm;

    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_1
    instance-of v0, p0, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_2

    .line 130
    check-cast p0, Ljavax/mail/search/StringTerm;

    invoke-virtual {p0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 131
    :cond_2
    instance-of v0, p0, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_5

    .line 132
    check-cast p0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 120
    check-cast p0, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_2

    .line 122
    :cond_4
    check-cast p0, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    :goto_3
    array-length v2, p0

    if-lt v1, v2, :cond_6

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 125
    :cond_6
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "HEADER"

    .line 241
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    const-string v1, "Message-ID"

    .line 242
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "NOT"

    .line 213
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object p0

    .line 221
    instance-of v1, p0, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_1

    .line 222
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :goto_1
    return-object v0
.end method

.method private static or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    .line 168
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 169
    aget-object v0, p0, v1

    move-object v3, v0

    const/4 v0, 0x1

    .line 172
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 175
    check-cast v3, Ljavax/mail/search/OrTerm;

    .line 177
    invoke-virtual {v3}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object p0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v4, Ljavax/mail/search/OrTerm;

    aget-object v5, p0, v0

    invoke-direct {v4, v3, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 184
    array-length v3, p0

    if-le v3, v2, :cond_2

    const-string v3, "OR"

    .line 185
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 192
    :cond_2
    aget-object v3, p0, v1

    instance-of v3, v3, Ljavax/mail/search/AndTerm;

    if-nez v3, :cond_4

    aget-object v3, p0, v1

    instance-of v3, v3, Ljavax/mail/search/FlagTerm;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 195
    :cond_3
    aget-object v1, p0, v1

    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_3

    .line 193
    :cond_4
    :goto_2
    aget-object v1, p0, v1

    invoke-static {v1, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 198
    :goto_3
    array-length v1, p0

    if-le v1, v2, :cond_7

    .line 199
    aget-object v1, p0, v2

    instance-of v1, v1, Ljavax/mail/search/AndTerm;

    if-nez v1, :cond_6

    aget-object v1, p0, v2

    instance-of v1, v1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_5

    goto :goto_4

    .line 202
    :cond_5
    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)V

    goto :goto_5

    .line 200
    :cond_6
    :goto_4
    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    :cond_7
    :goto_5
    return-object v0
.end method

.method private static receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 410
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 432
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 423
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "NOT ON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "ON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "BEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR BEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 295
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_0

    const-string p0, "TO"

    .line 296
    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_1

    const-string p0, "CC"

    .line 298
    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p0, v1, :cond_2

    const-string p0, "BCC"

    .line 300
    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 304
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 302
    :cond_2
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string p1, "Illegal Recipient type"

    invoke-direct {p0, p1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 378
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 379
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p0}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 401
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Date Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SENTSINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SENTON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTSINCE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "NOT SENTON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTON "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SENTBEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "OR SENTBEFORE "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SENTON "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 330
    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 339
    new-instance p0, Ljavax/mail/search/SearchException;

    const-string v0, "Cannot handle Comparison"

    invoke-direct {p0, v0}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v1, "LARGER"

    .line 332
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "SMALLER"

    .line 335
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sun/mail/iap/Argument;->writeNumber(I)V

    return-object v0
.end method

.method private static subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    const-string v1, "SUBJECT"

    .line 312
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 369
    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    sget-object p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
