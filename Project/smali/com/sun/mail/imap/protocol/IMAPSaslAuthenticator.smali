.class public Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/SaslAuthenticator;


# instance fields
.field private debug:Z

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/util/Properties;ZLjava/io/PrintStream;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 70
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    .line 72
    iput-boolean p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    .line 73
    iput-object p5, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    .line 74
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    return p0
.end method

.method static synthetic access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    return-object p0
.end method


# virtual methods
.method public authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 80
    iget-object v8, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter v8

    .line 81
    :try_start_0
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 85
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v4, "IMAP SASL DEBUG: Mechanisms:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 87
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 89
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    goto :goto_1

    .line 88
    :cond_0
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    :goto_1
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct {v7, v1, v4, v5, v3}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;-><init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->host:Ljava/lang/String;

    .line 137
    iget-object v6, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->props:Ljava/util/Properties;

    move-object/from16 v3, p3

    .line 136
    invoke-static/range {v2 .. v7}, Ljavax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Ljavax/security/sasl/SaslClient;

    move-result-object v2
    :try_end_1
    .catch Ljavax/security/sasl/SaslException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 145
    :try_start_2
    iget-boolean v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v3, "IMAP SASL DEBUG: No SASL support"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :cond_2
    monitor-exit v8

    return v10

    .line 149
    :cond_3
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_4

    .line 150
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: SASL client "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :cond_4
    :try_start_3
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AUTHENTICATE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    iget-object v4, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getIMAPOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 177
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v7, 0x2

    .line 178
    new-array v7, v7, [B

    fill-array-data v7, :array_0

    .line 181
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->getMechanismName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "XGWTRUSTEDAPP"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    move-object v14, v5

    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_8

    .line 233
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "javax.security.sasl.qop"

    .line 234
    invoke-interface {v2, v3}, Ljavax/security/sasl/SaslClient;->getNegotiatedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v3, "auth-int"

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "auth-conf"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    :cond_5
    iget-boolean v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v2, :cond_6

    .line 239
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v3, "IMAP SASL DEBUG: Mechanism requires integrity or confidentiality"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_6
    monitor-exit v8

    return v10

    .line 251
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/iap/Response;

    .line 252
    invoke-virtual {v9, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 253
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 256
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 257
    iget-object v2, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 258
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v12

    .line 184
    :cond_8
    :try_start_5
    iget-object v14, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->pr:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v14

    .line 185
    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 187
    invoke-interface {v2}, Ljavax/security/sasl/SaslClient;->isComplete()Z

    move-result v15

    if-nez v15, :cond_b

    .line 188
    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/mail/iap/ByteArray;->getNewBytes()[B

    move-result-object v15

    .line 189
    array-length v5, v15

    if-lez v5, :cond_9

    .line 190
    invoke-static {v15}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v15

    .line 191
    :cond_9
    iget-boolean v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_a

    .line 192
    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "IMAP SASL DEBUG: challenge: "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    array-length v10, v15

    move/from16 v16, v13

    const/4 v13, 0x0

    invoke-static {v15, v13, v10}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " :"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 192
    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move/from16 v16, v13

    .line 194
    :goto_3
    invoke-interface {v2, v15}, Ljavax/security/sasl/SaslClient;->evaluateChallenge([B)[B

    move-result-object v5

    goto :goto_4

    :cond_b
    move/from16 v16, v13

    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_d

    .line 197
    iget-boolean v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v5, :cond_c

    .line 198
    iget-object v5, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    const-string v10, "IMAP SASL DEBUG: no response"

    invoke-virtual {v5, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    :cond_c
    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 201
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_5

    .line 203
    :cond_d
    iget-boolean v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_e

    .line 204
    iget-object v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "IMAP SASL DEBUG: response: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    array-length v13, v5

    const/4 v15, 0x0

    invoke-static {v5, v15, v13}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 204
    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    :cond_e
    invoke-static {v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v5

    if-eqz v11, :cond_f

    const-string v10, "XGWTRUSTEDAPP "

    .line 208
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    :cond_f
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 212
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 214
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_5

    :cond_10
    move/from16 v16, v13

    .line 216
    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_6

    .line 219
    :cond_11
    invoke-virtual {v14}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_6

    .line 222
    :cond_12
    invoke-virtual {v9, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    move/from16 v13, v16

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 224
    :try_start_6
    iget-boolean v10, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v10, :cond_13

    .line 225
    invoke-static {v5}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 227
    :cond_13
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v14

    :goto_6
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 157
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_14

    .line 158
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: AUTHENTICATE Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    :cond_14
    monitor-exit v8

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 139
    iget-boolean v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z

    if-eqz v3, :cond_15

    .line 140
    iget-object v3, v1, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMAP SASL DEBUG: Failed to create SASL client: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_15
    monitor-exit v8

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 80
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
