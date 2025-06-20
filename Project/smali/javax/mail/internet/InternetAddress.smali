.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "()<>@,;:\\\"\t .[]"

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 324
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 323
    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    const/4 v0, 0x1

    .line 105
    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 107
    array-length v2, v1

    if-eq v2, v0, :cond_0

    .line 108
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    .line 116
    aget-object v0, v1, p1

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 117
    aget-object v0, v1, p1

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 118
    aget-object p1, v1, p1

    iget-object p1, p1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 160
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 135
    iget-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 887
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :goto_0
    const-string p1, ",:"

    .line 894
    invoke-static {p0, p1, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    .line 896
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_2

    .line 897
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal route-addr"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 898
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, p1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 911
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_7

    if-ne p1, v1, :cond_5

    .line 913
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing local name"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 914
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_6

    .line 915
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing domain"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_6
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    .line 917
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    .line 929
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing final \'@domain\'"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8
    const/4 p1, 0x0

    move-object p2, p0

    :goto_2
    const-string v0, " \t\n\r"

    .line 939
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 940
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal whitespace in address"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v0, "()<>,;:\\\"[]@"

    .line 942
    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_a

    .line 943
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal character in local name"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a
    if-eqz p1, :cond_b

    const/16 p2, 0x5b

    .line 945
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_b

    const-string p2, "()<>,;:\\\"[]@"

    .line 946
    invoke-static {p1, p2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 947
    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal character in domain"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "user.name"

    .line 505
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "mail.from"

    .line 508
    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v2, "mail.user"

    .line 510
    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "user.name"

    .line 512
    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 513
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v2, "user.name"

    .line 514
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v3, "mail.host"

    .line 515
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 517
    :cond_5
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 519
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object p0, v0

    move-object v2, p0

    :cond_7
    :goto_0
    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 524
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p0, :cond_8

    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    if-eqz v1, :cond_9

    .line 529
    new-instance p0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_9
    return-object v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1007
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    const/4 v0, -0x1

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lt p2, v1, :cond_0

    return v0

    .line 1014
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    return v0
.end method

.method private isSimple()Z
    .locals 2

    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 2

    const-string v0, "\r\n"

    .line 469
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "\r\n"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 485
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 546
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 569
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 609
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 614
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_0
    if-lt v7, v3, :cond_8

    if-ltz v8, :cond_7

    if-ne v9, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v9

    .line 830
    :goto_1
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-nez v12, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_3

    .line 843
    :cond_1
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 844
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    .line 845
    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {v0, v5, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 847
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 848
    invoke-virtual {v1, v0}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p1, :cond_4

    if-nez p2, :cond_5

    .line 833
    :cond_4
    invoke-static {v3, v11, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 834
    :cond_5
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 835
    invoke-virtual {v1, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v13, :cond_6

    .line 838
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 840
    :cond_6
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 854
    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 855
    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    .line 618
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x22

    const/16 v6, 0x5c

    const/16 v16, 0x1

    sparse-switch v15, :sswitch_data_0

    const/4 v5, -0x1

    const/4 v15, 0x0

    if-ne v8, v5, :cond_30

    move v8, v7

    goto/16 :goto_1a

    :goto_5
    :sswitch_0
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_9

    goto :goto_6

    .line 723
    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    :goto_6
    :pswitch_0
    if-lt v7, v3, :cond_a

    .line 735
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \']\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_a
    const/4 v5, -0x1

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 696
    :sswitch_1
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'<\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :sswitch_2
    if-eqz v11, :cond_b

    .line 659
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Extra route-addr"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_b
    if-nez v10, :cond_d

    if-ltz v8, :cond_c

    move v14, v7

    :cond_c
    add-int/lit8 v9, v7, 0x1

    move v11, v8

    goto :goto_7

    :cond_d
    move v9, v8

    move v11, v13

    :goto_7
    move v15, v14

    const/4 v8, 0x0

    :goto_8
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_e

    goto :goto_9

    .line 670
    :cond_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v5, :cond_14

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_10

    if-eq v12, v6, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    if-eqz v8, :cond_11

    goto :goto_8

    :cond_11
    :goto_9
    if-lt v7, v3, :cond_13

    if-eqz v8, :cond_12

    .line 688
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'\"\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 690
    :cond_12
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'>\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_13
    move v8, v9

    move v13, v11

    move v14, v15

    const/4 v5, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v15, 0x0

    move v9, v7

    goto/16 :goto_1a

    :cond_14
    xor-int/lit8 v8, v8, 0x1

    goto :goto_8

    :sswitch_3
    const/4 v5, -0x1

    if-ne v8, v5, :cond_15

    move v8, v7

    :cond_15
    if-nez v10, :cond_16

    .line 794
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal semicolon, not in group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_16
    if-ne v8, v5, :cond_17

    move v8, v7

    .line 799
    :cond_17
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    add-int/lit8 v6, v7, 0x1

    .line 801
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    goto :goto_c

    :sswitch_4
    if-eqz v10, :cond_18

    .line 784
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Nested group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_18
    const/4 v5, -0x1

    if-ne v8, v5, :cond_19

    move v8, v7

    :cond_19
    const/4 v10, 0x1

    :goto_a
    const/4 v12, 0x1

    goto :goto_b

    :sswitch_5
    const/4 v5, -0x1

    if-ne v8, v5, :cond_1a

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    const/4 v15, 0x0

    goto/16 :goto_1a

    :cond_1a
    if-eqz v10, :cond_1b

    :goto_c
    const/4 v11, 0x0

    goto :goto_b

    :cond_1b
    if-ne v9, v5, :cond_1c

    move v9, v7

    .line 752
    :cond_1c
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-nez v12, :cond_1f

    if-nez p1, :cond_1f

    if-eqz p2, :cond_1d

    goto :goto_e

    .line 766
    :cond_1d
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 767
    :goto_d
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v15, 0x0

    goto :goto_11

    .line 768
    :cond_1e
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 769
    invoke-static {v5, v8, v8}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 770
    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v8}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 771
    invoke-virtual {v8, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1f
    :goto_e
    if-nez p1, :cond_21

    if-nez p2, :cond_20

    goto :goto_f

    :cond_20
    const/4 v15, 0x0

    goto :goto_10

    :cond_21
    :goto_f
    const/4 v15, 0x0

    .line 755
    invoke-static {v5, v11, v15}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    :goto_10
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    invoke-virtual {v6, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v13, :cond_22

    .line 760
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 759
    invoke-static {v5}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, -0x1

    .line 763
    :cond_22
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_11
    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    .line 654
    :sswitch_6
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'(\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :sswitch_7
    const/4 v15, 0x0

    if-ltz v8, :cond_23

    const/4 v5, -0x1

    if-ne v9, v5, :cond_24

    move v9, v7

    goto :goto_12

    :cond_23
    const/4 v5, -0x1

    :cond_24
    :goto_12
    if-ne v13, v5, :cond_25

    add-int/lit8 v13, v7, 0x1

    :cond_25
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    :goto_13
    if-ge v7, v3, :cond_28

    if-gtz v5, :cond_26

    goto :goto_15

    .line 631
    :cond_26
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v6, :cond_27

    packed-switch v12, :pswitch_data_1

    goto :goto_14

    :pswitch_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_27
    add-int/lit8 v7, v7, 0x1

    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_28
    :goto_15
    if-lez v5, :cond_29

    .line 647
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \')\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_29
    add-int/lit8 v7, v7, -0x1

    const/4 v5, -0x1

    if-ne v14, v5, :cond_2f

    move v14, v7

    goto :goto_19

    :sswitch_8
    const/4 v5, -0x1

    const/4 v15, 0x0

    if-ne v8, v5, :cond_2a

    move v8, v7

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    :goto_16
    if-lt v7, v3, :cond_2b

    goto :goto_18

    .line 704
    :cond_2b
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v12, 0x22

    if-eq v5, v12, :cond_2d

    if-eq v5, v6, :cond_2c

    goto :goto_17

    :cond_2c
    add-int/lit8 v7, v7, 0x1

    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_2d
    :goto_18
    if-lt v7, v3, :cond_2e

    .line 716
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'\"\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_2e
    const/4 v5, -0x1

    :cond_2f
    :goto_19
    const/4 v12, 0x1

    goto :goto_1a

    :sswitch_9
    const/4 v15, 0x0

    const/4 v5, -0x1

    :cond_30
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xd -> :sswitch_9
        0x20 -> :sswitch_9
        0x22 -> :sswitch_8
        0x28 -> :sswitch_7
        0x29 -> :sswitch_6
        0x2c -> :sswitch_5
        0x3a -> :sswitch_4
        0x3b -> :sswitch_3
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 594
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x22

    if-lt v2, v0, :cond_1

    if-eqz v3, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 353
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0

    .line 331
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v4, :cond_6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x20

    if-ge v5, v4, :cond_3

    const/16 v4, 0xd

    if-eq v5, v4, :cond_3

    const/16 v4, 0xa

    if-eq v5, v4, :cond_3

    const/16 v4, 0x9

    if-ne v5, v4, :cond_4

    :cond_3
    const/16 v4, 0x7f

    if-ge v5, v4, :cond_4

    .line 346
    sget-object v4, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    if-lt v1, v0, :cond_7

    .line 343
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_8

    if-ne v3, v6, :cond_9

    .line 340
    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 416
    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_4

    .line 440
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 445
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, ", "

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x2

    .line 451
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p1

    const/16 v4, 0x4c

    if-le v3, v4, :cond_3

    const-string p1, "\r\n\t"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x8

    .line 457
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "\""

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    .line 365
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_1

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 368
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 369
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 171
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 381
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 384
    :cond_0
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 385
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 387
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/16 v1, 0x3a

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 995
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-static {v0, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 262
    :catch_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 397
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 970
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 228
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 230
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void

    .line 212
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :catch_0
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_3
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 2

    .line 298
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " <"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :cond_2
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    return-void
.end method
