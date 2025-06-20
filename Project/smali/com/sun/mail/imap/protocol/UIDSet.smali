.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 57
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 11

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 74
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 88
    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    .line 75
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 76
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    array-length v3, p0

    if-lt v1, v3, :cond_1

    goto :goto_2

    .line 80
    :cond_1
    aget-wide v3, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, p0, v5

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    cmp-long v5, v3, v9

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 83
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    return-wide v0

    .line 133
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v3

    add-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_3

    .line 96
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    array-length v2, p0

    .line 105
    :goto_0
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 106
    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    .line 109
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_2

    const/16 v3, 0x2c

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public size()J
    .locals 6

    .line 64
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x1

    add-long v2, v4, v0

    return-wide v2
.end method
