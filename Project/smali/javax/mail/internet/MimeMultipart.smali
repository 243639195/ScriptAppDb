.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z = true

.field private static ignoreMissingBoundaryParameter:Z = true

.field private static ignoreMissingEndBoundary:Z = true


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "false"

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 111
    :goto_0
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "false"

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 116
    :goto_1
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v0, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "false"

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "mixed"

    .line 161
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string p1, "boundary"

    .line 179
    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_0

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    :cond_0
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_1

    .line 211
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized parsebm()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 718
    :try_start_0
    iget-boolean v2, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 719
    monitor-exit p0

    return-void

    .line 726
    :cond_0
    :try_start_1
    iget-object v2, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 727
    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_1

    .line 728
    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_1

    .line 729
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_1

    .line 730
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 734
    :cond_1
    :try_start_2
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_2

    .line 735
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 737
    :goto_0
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    .line 739
    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 742
    :cond_3
    sget-boolean v5, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v5, :cond_4

    .line 743
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    const/4 v5, 0x0

    .line 747
    :goto_1
    :try_start_3
    new-instance v6, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v6, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 751
    :goto_2
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v9, :cond_5

    move-object v4, v9

    goto :goto_5

    .line 759
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    :goto_3
    if-gez v15, :cond_6

    goto :goto_4

    .line 760
    :cond_6
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v11, :cond_36

    if-ne v4, v10, :cond_7

    goto/16 :goto_22

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 764
    invoke-virtual {v9, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_9

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v24, v6

    goto/16 :goto_20

    :cond_9
    const-string v9, "--"

    .line 774
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v5, v4

    :goto_5
    if-nez v4, :cond_a

    .line 799
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    if-eqz v7, :cond_b

    .line 802
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 805
    :cond_b
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 806
    array-length v5, v4

    const/16 v7, 0x100

    .line 813
    new-array v7, v7, [I

    const/4 v8, 0x0

    :goto_6
    if-lt v8, v5, :cond_32

    .line 818
    new-array v8, v5, [I

    move v9, v5

    :goto_7
    if-gtz v9, :cond_2e

    add-int/lit8 v9, v5, -0x1

    .line 836
    aput v14, v8, v9

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v3, :cond_11

    .line 847
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    .line 849
    :cond_d
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_d

    :cond_e
    if-nez v10, :cond_10

    .line 852
    sget-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v3, :cond_f

    .line 853
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 856
    :cond_f
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1027
    :goto_9
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1033
    :catch_0
    :try_start_5
    iput-boolean v14, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1034
    monitor-exit p0

    return-void

    :cond_10
    move-wide/from16 v21, v16

    const/4 v10, 0x0

    goto :goto_a

    .line 861
    :cond_11
    :try_start_6
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v10

    move-wide/from16 v21, v16

    .line 864
    :goto_a
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-nez v16, :cond_12

    .line 865
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Stream doesn\'t support mark"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    if-nez v3, :cond_13

    .line 870
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_b

    .line 872
    :cond_13
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    const/4 v11, 0x0

    .line 884
    :goto_b
    new-array v14, v5, [B

    .line 885
    new-array v12, v5, [B

    const/16 v16, 0x1

    const/16 v23, 0x0

    :goto_c
    add-int/lit8 v13, v5, 0x4

    add-int/lit16 v13, v13, 0x3e8

    .line 895
    invoke-virtual {v2, v13}, Ljava/io/InputStream;->mark(I)V

    move-object/from16 v24, v6

    const/4 v13, 0x0

    .line 897
    invoke-static {v2, v14, v13, v5}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ge v6, v5, :cond_16

    .line 900
    sget-boolean v13, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v13, :cond_14

    .line 901
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    if-eqz v3, :cond_15

    .line 904
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    :cond_15
    const/4 v13, 0x0

    .line 905
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-object/from16 v27, v8

    move/from16 v25, v9

    move-wide/from16 v8, v18

    move/from16 v15, v23

    const/4 v13, 0x0

    :goto_d
    const/16 v26, 0x1

    goto/16 :goto_17

    :cond_16
    move v13, v9

    :goto_e
    if-gez v13, :cond_17

    move/from16 v25, v9

    move/from16 v26, v15

    goto :goto_f

    :cond_17
    move/from16 v25, v9

    .line 912
    aget-byte v9, v14, v13

    move/from16 v26, v15

    aget-byte v15, v4, v13

    if-ne v9, v15, :cond_18

    add-int/lit8 v13, v13, -0x1

    move/from16 v9, v25

    move/from16 v15, v26

    goto :goto_e

    :cond_18
    :goto_f
    if-gez v13, :cond_29

    const/16 v9, 0xd

    if-nez v16, :cond_1b

    move/from16 v15, v23

    add-int/lit8 v23, v15, -0x1

    .line 920
    aget-byte v13, v12, v23

    if-eq v13, v9, :cond_19

    const/16 v9, 0xa

    if-ne v13, v9, :cond_1c

    goto :goto_10

    :cond_19
    const/16 v9, 0xa

    :goto_10
    if-ne v13, v9, :cond_1a

    const/4 v9, 0x2

    if-lt v15, v9, :cond_1a

    add-int/lit8 v23, v15, -0x2

    .line 924
    aget-byte v9, v12, v23

    const/16 v13, 0xd

    if-ne v9, v13, :cond_1a

    const/4 v13, 0x2

    goto :goto_11

    :cond_1a
    const/4 v13, 0x1

    goto :goto_11

    :cond_1b
    move/from16 v15, v23

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    if-nez v16, :cond_1e

    if-lez v13, :cond_1d

    goto :goto_12

    :cond_1d
    move-object/from16 v27, v8

    goto :goto_15

    :cond_1e
    :goto_12
    if-eqz v3, :cond_1f

    .line 934
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    move-object/from16 v27, v8

    int-to-long v8, v5

    sub-long v18, v16, v8

    int-to-long v8, v13

    sub-long v16, v18, v8

    move-wide/from16 v18, v16

    goto :goto_13

    :cond_1f
    move-object/from16 v27, v8

    .line 937
    :goto_13
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_20

    move/from16 v28, v8

    .line 939
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-ne v8, v9, :cond_21

    const/4 v8, 0x1

    .line 940
    iput-boolean v8, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-wide/from16 v8, v18

    goto :goto_d

    :cond_20
    move/from16 v28, v8

    :cond_21
    move/from16 v8, v28

    :goto_14
    const/16 v9, 0x20

    if-eq v8, v9, :cond_28

    move/from16 v29, v13

    const/16 v13, 0x9

    if-eq v8, v13, :cond_27

    const/16 v9, 0xa

    if-eq v8, v9, :cond_23

    const/16 v13, 0xd

    if-ne v8, v13, :cond_22

    const/4 v8, 0x1

    .line 952
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v9, :cond_23

    .line 954
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_16

    :cond_22
    :goto_15
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    const/4 v13, 0x0

    goto/16 :goto_1a

    :cond_23
    :goto_16
    move-wide/from16 v8, v18

    move/from16 v13, v29

    :goto_17
    if-eqz v3, :cond_24

    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    .line 1010
    invoke-interface {v3, v4, v5, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    goto :goto_18

    :cond_24
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-wide/from16 v4, v21

    sub-int v13, v15, v13

    if-lez v13, :cond_25

    const/4 v15, 0x0

    .line 1014
    invoke-virtual {v11, v12, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1017
    :cond_25
    iget-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v12, :cond_26

    if-lez v6, :cond_26

    const/4 v12, 0x0

    .line 1018
    invoke-virtual {v11, v14, v12, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1019
    :cond_26
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v10, v6}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v6

    .line 1021
    :goto_18
    invoke-super {v1, v6}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-object/from16 v6, v24

    move/from16 v9, v25

    move/from16 v15, v26

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_27
    move-object/from16 v30, v4

    move/from16 v31, v5

    goto :goto_19

    :cond_28
    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v29, v13

    :goto_19
    move-wide/from16 v4, v21

    const/16 v9, 0xa

    const/16 v13, 0xd

    .line 947
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    move-wide/from16 v21, v4

    move/from16 v13, v29

    move-object/from16 v4, v30

    move/from16 v5, v31

    goto/16 :goto_14

    :cond_29
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v27, v8

    move-wide/from16 v4, v21

    move/from16 v15, v23

    :goto_1a
    add-int/lit8 v6, v13, 0x1

    .line 968
    aget-byte v8, v14, v13

    and-int/lit8 v8, v8, 0x7f

    aget v8, v7, v8

    sub-int/2addr v6, v8

    aget v8, v27, v13

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2c

    if-nez v3, :cond_2a

    const/4 v6, 0x1

    if-le v15, v6, :cond_2a

    add-int/lit8 v6, v15, -0x1

    const/4 v8, 0x0

    .line 975
    invoke-virtual {v11, v12, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_2a
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    const-wide/16 v8, 0x1

    .line 977
    invoke-direct {v1, v2, v8, v9}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    if-lez v15, :cond_2b

    add-int/lit8 v23, v15, -0x1

    .line 980
    aget-byte v6, v12, v23

    const/4 v8, 0x0

    aput-byte v6, v12, v8

    .line 981
    aget-byte v6, v14, v8

    const/4 v13, 0x1

    aput-byte v6, v12, v13

    const/16 v23, 0x2

    goto :goto_1c

    :cond_2b
    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 985
    aget-byte v8, v14, v6

    aput-byte v8, v12, v6

    const/16 v23, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v13, 0x1

    if-lez v15, :cond_2d

    if-nez v3, :cond_2d

    const/4 v8, 0x0

    .line 992
    invoke-virtual {v11, v12, v8, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    :cond_2d
    const/4 v8, 0x0

    .line 995
    :goto_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v8, v6

    .line 996
    invoke-direct {v1, v2, v8, v9}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move/from16 v23, v6

    move-object/from16 v32, v14

    move-object v14, v12

    move-object/from16 v12, v32

    :goto_1c
    move-wide/from16 v21, v4

    move-object/from16 v6, v24

    move/from16 v9, v25

    move/from16 v15, v26

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v24, v6

    move-object/from16 v27, v8

    const/16 v4, 0x20

    const/4 v13, 0x1

    add-int/lit8 v5, v31, -0x1

    :goto_1d
    if-ge v5, v9, :cond_30

    :goto_1e
    if-gtz v5, :cond_2f

    goto :goto_1f

    :cond_2f
    add-int/lit8 v5, v5, -0x1

    .line 834
    aput v9, v27, v5

    goto :goto_1e

    .line 824
    :cond_30
    aget-byte v6, v30, v5

    sub-int v8, v5, v9

    aget-byte v8, v30, v8

    if-ne v6, v8, :cond_31

    add-int/lit8 v6, v5, -0x1

    .line 826
    aput v9, v27, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_31
    :goto_1f
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v6, v24

    move-object/from16 v8, v27

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_7

    :cond_32
    move-object/from16 v30, v4

    move/from16 v31, v5

    move-object/from16 v24, v6

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 815
    aget-byte v5, v30, v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v5

    move-object/from16 v6, v24

    move-object/from16 v4, v30

    move/from16 v5, v31

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_6

    .line 781
    :goto_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v6, :cond_35

    if-nez v8, :cond_33

    :try_start_7
    const-string v6, "line.separator"

    const-string v8, "\n"

    .line 787
    invoke-static {v6, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_21

    :catch_1
    :try_start_8
    const-string v6, "\n"

    :goto_21
    move-object v8, v6

    :cond_33
    if-nez v7, :cond_34

    .line 794
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x2

    add-int/2addr v7, v10

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v6

    .line 795
    :cond_34
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_35
    move-object/from16 v6, v24

    goto/16 :goto_2

    :cond_36
    :goto_22
    move-object/from16 v24, v6

    const/16 v4, 0x20

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v13, 0x1

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v6, v24

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_23

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 1024
    :try_start_9
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IO Error"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1027
    :goto_23
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1031
    :catch_3
    :try_start_b
    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 732
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No inputstream from datasource"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 717
    monitor-exit p0

    throw v2
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    goto :goto_1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    .line 1072
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 1074
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "can\'t skip"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    sub-long v0, p2, v2

    move-wide p2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 324
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 346
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 344
    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1092
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1125
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1109
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 254
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 270
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    .line 277
    monitor-exit p0

    return-object p1

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 273
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 275
    monitor-exit p0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 267
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 241
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 378
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 376
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 365
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 363
    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v2, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    sget-boolean v2, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v2, :cond_1

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    monitor-exit p0

    return-void

    .line 475
    :cond_1
    :try_start_2
    iget-object v2, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 476
    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_2

    .line 477
    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_2

    .line 478
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_2

    .line 479
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 483
    :cond_2
    :try_start_3
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_3

    .line 484
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 486
    :goto_0
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    .line 488
    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 491
    :cond_4
    sget-boolean v5, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v5, :cond_5

    .line 492
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Missing boundary parameter"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    const/4 v5, 0x0

    .line 496
    :goto_1
    :try_start_4
    new-instance v6, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v6, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 500
    :cond_6
    :goto_2
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v9, :cond_7

    goto :goto_5

    .line 508
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_3
    if-gez v14, :cond_8

    goto :goto_4

    .line 509
    :cond_8
    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v11, :cond_2a

    if-ne v15, v10, :cond_9

    goto/16 :goto_16

    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 513
    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_a

    .line 515
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    goto :goto_5

    :cond_a
    const-string v14, "--"

    .line 523
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    move-object v5, v9

    :goto_5
    if-nez v9, :cond_b

    .line 548
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Missing start boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    if-eqz v7, :cond_c

    .line 551
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 554
    :cond_c
    invoke-static {v5}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 555
    array-length v7, v5

    const-wide/16 v8, 0x0

    move-wide v14, v8

    move-wide/from16 v16, v14

    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v3, :cond_12

    .line 566
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v14

    .line 568
    :cond_e
    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_e

    :cond_f
    if-nez v9, :cond_11

    .line 571
    sget-boolean v3, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v3, :cond_10

    .line 572
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 575
    :cond_10
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    :goto_7
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 701
    :catch_0
    :try_start_6
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 702
    monitor-exit p0

    return-void

    :cond_11
    const/4 v9, 0x0

    goto :goto_8

    .line 580
    :cond_12
    :try_start_7
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v9

    .line 583
    :goto_8
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_13

    .line 584
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Stream doesn\'t support mark"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_13
    if-nez v3, :cond_14

    .line 589
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_9

    .line 591
    :cond_14
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    const/4 v4, 0x0

    :goto_9
    move-wide/from16 v22, v16

    const/4 v12, -0x1

    const/16 v16, 0x1

    const/16 v21, -0x1

    :goto_a
    if-eqz v16, :cond_1d

    add-int/lit8 v10, v7, 0x4

    add-int/lit16 v10, v10, 0x3e8

    .line 607
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    const/4 v10, 0x0

    :goto_b
    if-lt v10, v7, :cond_15

    goto :goto_c

    .line 610
    :cond_15
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    aget-byte v13, v5, v10

    and-int/lit16 v13, v13, 0xff

    if-ne v11, v13, :cond_16

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x20

    const/4 v13, 0x1

    goto :goto_b

    :cond_16
    :goto_c
    if-ne v10, v7, :cond_1a

    .line 614
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_17

    .line 616
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v13

    if-ne v13, v11, :cond_17

    const/4 v11, 0x1

    .line 617
    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v8, 0x1

    goto :goto_e

    :cond_17
    :goto_d
    const/16 v11, 0x20

    if-eq v10, v11, :cond_19

    const/16 v13, 0x9

    if-eq v10, v13, :cond_19

    const/16 v11, 0xa

    if-eq v10, v11, :cond_18

    const/16 v13, 0xd

    if-ne v10, v13, :cond_1a

    const/4 v10, 0x1

    .line 629
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    if-eq v10, v11, :cond_18

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_18
    :goto_e
    const/4 v13, 0x0

    goto :goto_11

    .line 624
    :cond_19
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    goto :goto_d

    .line 636
    :cond_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    if-eqz v4, :cond_1d

    const/4 v10, -0x1

    if-eq v12, v10, :cond_1c

    .line 641
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v11, v21

    if-eq v11, v10, :cond_1b

    .line 643
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1b
    const/4 v12, -0x1

    const/16 v21, -0x1

    goto :goto_10

    :cond_1c
    move/from16 v11, v21

    goto :goto_f

    :cond_1d
    move/from16 v11, v21

    const/4 v10, -0x1

    :goto_f
    move/from16 v21, v11

    .line 649
    :goto_10
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v11

    if-gez v11, :cond_20

    .line 650
    sget-boolean v8, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-nez v8, :cond_1e

    .line 651
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "missing multipart end boundary"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e
    const/4 v13, 0x0

    .line 653
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v8, 0x1

    :goto_11
    if-eqz v3, :cond_1f

    move-wide/from16 v10, v22

    .line 686
    invoke-interface {v3, v14, v15, v10, v11}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    goto :goto_12

    :cond_1f
    move-wide/from16 v10, v22

    .line 688
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    .line 689
    :goto_12
    invoke-super {v1, v4}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v16, v10

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_20
    move-wide/from16 v16, v22

    const/16 v10, 0xd

    const/4 v13, 0x0

    if-eq v11, v10, :cond_23

    const/16 v10, 0xa

    if-ne v11, v10, :cond_21

    goto :goto_13

    :cond_21
    if-eqz v4, :cond_22

    .line 677
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_22
    move-wide/from16 v22, v16

    const/16 v11, 0x20

    const/4 v13, 0x1

    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_23
    :goto_13
    if-eqz v3, :cond_24

    .line 665
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v16

    const-wide/16 v19, 0x1

    sub-long v22, v16, v19

    goto :goto_14

    :cond_24
    move-wide/from16 v22, v16

    :goto_14
    const/16 v10, 0xd

    if-ne v11, v10, :cond_26

    const/4 v10, 0x1

    .line 668
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    const/16 v10, 0xa

    if-ne v12, v10, :cond_25

    move/from16 v21, v12

    const/4 v13, 0x1

    const/16 v16, 0x1

    move v12, v11

    const/16 v11, 0x20

    goto/16 :goto_a

    .line 672
    :cond_25
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_26
    move v12, v11

    const/16 v11, 0x20

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto/16 :goto_a

    .line 530
    :cond_27
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez v4, :cond_6

    if-nez v8, :cond_28

    :try_start_8
    const-string v4, "line.separator"

    const-string v8, "\n"

    .line 536
    invoke-static {v4, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_15

    :catch_1
    :try_start_9
    const-string v4, "\n"

    :goto_15
    move-object v8, v4

    :cond_28
    if-nez v7, :cond_29

    .line 543
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v7, v4

    .line 544
    :cond_29
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_2a
    :goto_16
    const/4 v13, 0x0

    add-int/lit8 v14, v14, -0x1

    const/16 v10, 0x9

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_17

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 692
    :try_start_a
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "IO Error"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 695
    :goto_17
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 699
    :catch_3
    :try_start_c
    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 481
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "No inputstream from datasource"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 461
    monitor-exit p0

    throw v2
.end method

.method public removeBodyPart(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 310
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 293
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 393
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 231
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 230
    monitor-exit p0

    throw p1
.end method

.method protected updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 436
    array-length v3, v2

    if-lez v3, :cond_0

    .line 437
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    :cond_0
    const/4 v2, 0x0

    .line 442
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 424
    monitor-exit p0

    throw p1
.end method
