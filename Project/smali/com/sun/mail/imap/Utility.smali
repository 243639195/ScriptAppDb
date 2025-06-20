.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 7

    .line 76
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    .line 80
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 124
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    .line 81
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 82
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-nez v4, :cond_7

    .line 85
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    if-eqz p1, :cond_2

    .line 87
    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 90
    :cond_2
    new-instance v3, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v3}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 91
    iput v4, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    :cond_3
    :goto_1
    add-int/2addr v2, v1

    .line 94
    array-length v5, p0

    if-lt v2, v5, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    aget-object v5, p0, v2

    check-cast v5, Lcom/sun/mail/imap/IMAPMessage;

    .line 98
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-nez v6, :cond_3

    .line 100
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    if-eqz p1, :cond_5

    .line 103
    invoke-interface {p1, v5}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    add-int/lit8 v5, v4, 0x1

    if-ne v6, v5, :cond_6

    move v4, v6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 116
    :goto_2
    iput v4, v3, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 117
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 12

    .line 134
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    .line 138
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 175
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    .line 139
    :cond_1
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 140
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-nez v4, :cond_5

    .line 143
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    .line 145
    new-instance v5, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v5}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 146
    iput-wide v3, v5, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :cond_2
    :goto_1
    add-int/2addr v2, v1

    .line 149
    array-length v6, p0

    if-lt v2, v6, :cond_3

    goto :goto_2

    .line 151
    :cond_3
    aget-object v6, p0, v2

    check-cast v6, Lcom/sun/mail/imap/IMAPMessage;

    .line 153
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-nez v7, :cond_2

    .line 155
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v10, v3, v8

    cmp-long v8, v6, v10

    if-nez v8, :cond_4

    move-wide v3, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 167
    :goto_2
    iput-wide v3, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/2addr v2, v1

    goto :goto_0
.end method
