.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "FLAGS.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 56
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 68
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 71
    :cond_0
    aget-object v2, p1, v1

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_9

    const/4 v3, 0x1

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x41

    if-eq v3, v5, :cond_7

    const/16 v5, 0x44

    if-eq v3, v5, :cond_2

    const/16 v4, 0x46

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 100
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :pswitch_0
    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 78
    :pswitch_1
    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 94
    :cond_1
    sget-object v2, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_6

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_5

    const/16 v3, 0x45

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x72

    if-eq v2, v3, :cond_4

    const/16 v3, 0x52

    if-ne v2, v3, :cond_a

    .line 86
    :cond_4
    sget-object v2, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 84
    :cond_5
    :goto_1
    sget-object v2, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 88
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 91
    :cond_7
    sget-object v2, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 97
    :cond_8
    sget-object v2, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 104
    :cond_9
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
