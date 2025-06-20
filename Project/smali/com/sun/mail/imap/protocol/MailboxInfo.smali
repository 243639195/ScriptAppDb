.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 55
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 57
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 58
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    const-wide/16 v1, -0x1

    .line 59
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 60
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 121
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz p1, :cond_0

    .line 123
    new-instance p1, Ljavax/mail/Flags;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    invoke-direct {p1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    :cond_1
    return-void

    .line 65
    :cond_2
    aget-object v3, p1, v2

    if-eqz v3, :cond_b

    aget-object v3, p1, v2

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v3, :cond_b

    .line 68
    aget-object v3, p1, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v4, "EXISTS"

    .line 70
    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 72
    aput-object v0, p1, v2

    goto/16 :goto_3

    :cond_3
    const-string v4, "RECENT"

    .line 74
    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 76
    aput-object v0, p1, v2

    goto/16 :goto_3

    :cond_4
    const-string v4, "FLAGS"

    .line 78
    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 79
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v3}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 80
    aput-object v0, p1, v2

    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 89
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 91
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_a

    .line 97
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNSEEN"

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 99
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_1

    :cond_6
    const-string v5, "UIDVALIDITY"

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_1

    :cond_7
    const-string v5, "PERMANENTFLAGS"

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 103
    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v3}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_1

    :cond_8
    const-string v5, "UIDNEXT"

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 105
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    .line 110
    aput-object v0, p1, v2

    goto :goto_3

    .line 112
    :cond_a
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
