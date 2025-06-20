.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    .line 462
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 1

    .line 900
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0
.end method

.method public parseAlphaTimeZone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 825
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x74

    const/16 v3, 0x54

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 872
    new-instance v0, Ljava/text/ParseException;

    goto/16 :goto_5

    .line 828
    :sswitch_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const/16 v1, 0x1e0

    goto :goto_1

    :sswitch_2
    const/16 v1, 0x1a4

    goto :goto_1

    .line 837
    :sswitch_3
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    const/16 v4, 0x4d

    if-eq v0, v4, :cond_2

    const/16 v4, 0x6d

    if-ne v0, v4, :cond_3

    .line 839
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 845
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :sswitch_4
    const/16 v1, 0x12c

    goto :goto_1

    :sswitch_5
    const/16 v1, 0x168

    :goto_1
    if-eqz v4, :cond_9

    .line 879
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    const/16 v4, 0x53

    if-eq v0, v4, :cond_8

    const/16 v4, 0x73

    if-ne v0, v4, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0x44

    if-eq v0, v4, :cond_5

    const/16 v4, 0x64

    if-ne v0, v4, :cond_9

    .line 886
    :cond_5
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    goto :goto_2

    .line 891
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, -0x3c

    goto :goto_4

    .line 881
    :cond_8
    :goto_3
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v4

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_9

    .line 883
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    :goto_4
    return v1

    :goto_5
    :try_start_1
    const-string v1, "Bad Alpha TimeZone"

    .line 872
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 875
    :catch_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Alpha TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x45 -> :sswitch_4
        0x47 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
        0x55 -> :sswitch_0
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 653
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x55

    const/16 v3, 0x72

    const/16 v4, 0x52

    const/16 v5, 0x61

    const/16 v6, 0x41

    const/16 v7, 0x63

    const/16 v8, 0x43

    const/16 v9, 0x70

    const/16 v10, 0x50

    const/16 v11, 0x65

    const/16 v12, 0x45

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    .line 720
    :sswitch_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v12, :cond_0

    if-ne v0, v11, :cond_19

    .line 722
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v10, :cond_1

    if-ne v0, v9, :cond_19

    :cond_1
    const/16 v0, 0x8

    return v0

    .line 731
    :sswitch_1
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_19

    .line 733
    :cond_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-ne v0, v1, :cond_19

    :cond_3
    const/16 v0, 0x9

    return v0

    .line 742
    :sswitch_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_19

    .line 744
    :cond_4
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x56

    if-eq v0, v1, :cond_5

    const/16 v1, 0x76

    if-ne v0, v1, :cond_19

    :cond_5
    const/16 v0, 0xa

    return v0

    .line 691
    :sswitch_3
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_6

    if-ne v0, v5, :cond_19

    .line 693
    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_9

    if-ne v0, v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x59

    if-eq v0, v1, :cond_8

    const/16 v1, 0x79

    if-ne v0, v1, :cond_19

    :cond_8
    const/4 v0, 0x4

    return v0

    :cond_9
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 657
    :sswitch_4
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v3

    const/16 v3, 0x6e

    const/16 v4, 0x4e

    if-eq v0, v6, :cond_e

    if-eq v0, v2, :cond_a

    if-eq v0, v5, :cond_e

    if-eq v0, v1, :cond_a

    goto/16 :goto_3

    .line 668
    :cond_a
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_b

    goto :goto_1

    :cond_b
    const/16 v1, 0x4c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_19

    :cond_c
    const/4 v0, 0x6

    return v0

    :cond_d
    :goto_1
    const/4 v0, 0x5

    return v0

    .line 660
    :cond_e
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_19

    :cond_f
    const/4 v0, 0x0

    return v0

    .line 680
    :sswitch_5
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v12, :cond_10

    if-ne v0, v11, :cond_19

    .line 682
    :cond_10
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_11

    const/16 v1, 0x62

    if-ne v0, v1, :cond_19

    :cond_11
    const/4 v0, 0x1

    return v0

    .line 753
    :sswitch_6
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v12, :cond_12

    if-ne v0, v11, :cond_19

    .line 755
    :cond_12
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v8, :cond_13

    if-ne v0, v7, :cond_19

    :cond_13
    const/16 v0, 0xb

    return v0

    .line 704
    :sswitch_7
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v5

    if-eq v0, v10, :cond_17

    if-ne v0, v9, :cond_14

    goto :goto_2

    :cond_14
    if-eq v0, v2, :cond_15

    if-ne v0, v1, :cond_19

    .line 711
    :cond_15
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_16

    const/16 v1, 0x67

    if-ne v0, v1, :cond_19

    :cond_16
    const/4 v0, 0x7

    return v0

    .line 706
    :cond_17
    :goto_2
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v4, :cond_18

    if-ne v0, v3, :cond_19

    :cond_18
    const/4 v0, 0x3

    return v0

    .line 765
    :catch_0
    :cond_19
    :goto_3
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Month"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x4a -> :sswitch_4
        0x4d -> :sswitch_3
        0x4e -> :sswitch_2
        0x4f -> :sswitch_1
        0x53 -> :sswitch_0
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6a -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 573
    :goto_0
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v4, v0, :cond_1

    if-eqz v1, :cond_0

    return v3

    .line 640
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 574
    :cond_1
    iget-object v4, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v5, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v4, v4, v5

    packed-switch v4, :pswitch_data_0

    if-eqz v1, :cond_2

    return v3

    :pswitch_0
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x9

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    :pswitch_3
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :pswitch_4
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x5

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :pswitch_6
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v3, v3, 0xa

    .line 632
    :goto_1
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const/4 v1, 0x1

    goto :goto_0

    .line 629
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    .line 802
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Numeric TimeZone"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 805
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v1

    .line 806
    div-int/lit8 v2, v1, 0x64

    mul-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v1, v1, 0x64

    add-int/2addr v2, v1

    if-eqz v0, :cond_2

    neg-int v0, v2

    return v0

    :cond_2
    return v2
.end method

.method public parseTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 774
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 775
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 777
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result v0

    return v0

    .line 779
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result v0

    return v0
.end method

.method public peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 523
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    return v0

    .line 526
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 535
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 536
    iget p1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return-void

    .line 538
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Wrong char"

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 541
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "No more characters"

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipIfChar(C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 550
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 552
    iget p1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 558
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "No more characters"

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipUntilNumber()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 474
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 488
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number Found"

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .locals 3

    .line 501
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 502
    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-void

    .line 508
    :cond_1
    :pswitch_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
