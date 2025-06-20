.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Service$TerminatorEvent;
    }
.end annotation


# instance fields
.field private connected:Z

.field private connectionListeners:Ljava/util/Vector;

.field protected debug:Z

.field private q:Ljavax/mail/EventQueue;

.field private qLock:Ljava/lang/Object;

.field protected session:Ljavax/mail/Session;

.field protected url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Ljavax/mail/Service;->debug:Z

    .line 80
    iput-boolean v1, p0, Ljavax/mail/Service;->connected:Z

    .line 81
    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 555
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 91
    iput-object p2, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 92
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p1

    iput-boolean p1, p0, Ljavax/mail/Service;->debug:Z

    return-void
.end method

.method private terminateQueue()V
    .locals 4

    .line 594
    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-eqz v1, :cond_0

    .line 596
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x1

    .line 597
    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 598
    iget-object v2, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    new-instance v3, Ljavax/mail/Service$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/Service$TerminatorEvent;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    const/4 v1, 0x0

    .line 599
    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 594
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 485
    :cond_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    const/4 v0, 0x3

    .line 426
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 424
    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    iget-object v4, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v4, :cond_5

    .line 223
    iget-object v4, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v4}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_1

    .line 225
    iget-object v6, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v6}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object/from16 v6, p1

    :goto_0
    const/4 v7, -0x1

    move/from16 v8, p2

    if-ne v8, v7, :cond_2

    .line 227
    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v7}, Ljavax/mail/URLName;->getPort()I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    if-nez v2, :cond_3

    .line 230
    iget-object v2, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v2}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_4

    .line 232
    iget-object v3, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-nez p4, :cond_4

    .line 234
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 236
    iget-object v3, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v3}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object/from16 v3, p4

    .line 239
    :goto_2
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    move/from16 v8, p2

    move-object/from16 v6, p1

    move-object/from16 v3, p4

    move v7, v8

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_3
    if-eqz v4, :cond_7

    if-nez v6, :cond_6

    .line 245
    iget-object v6, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".host"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    if-nez v2, :cond_7

    .line 247
    iget-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-nez v6, :cond_8

    .line 252
    iget-object v6, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v9, "mail.host"

    invoke-virtual {v6, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_8
    if-nez v2, :cond_9

    .line 255
    iget-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v9, "mail.user"

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-nez v2, :cond_a

    :try_start_1
    const-string v9, "user.name"

    .line 260
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v9

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 262
    :try_start_2
    iget-boolean v10, v1, Ljavax/mail/Service;->debug:Z

    if-eqz v10, :cond_a

    .line 263
    iget-object v10, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual {v10}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :cond_a
    :goto_4
    const/16 v16, 0x0

    const/4 v15, 0x1

    if-nez v3, :cond_d

    .line 268
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v9, :cond_d

    .line 270
    new-instance v14, Ljavax/mail/URLName;

    const/16 v17, 0x0

    move-object v9, v14

    move-object v10, v4

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    move-object v5, v14

    move-object v14, v2

    move-object/from16 v18, v3

    const/4 v3, 0x1

    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 271
    iget-object v5, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v5

    if-eqz v5, :cond_c

    if-nez v2, :cond_b

    .line 274
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 276
    :cond_b
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 277
    invoke-virtual {v5}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_c
    move-object/from16 v5, v18

    const/16 v17, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v18, v3

    const/4 v3, 0x1

    :cond_e
    move-object/from16 v5, v18

    :goto_5
    const/16 v17, 0x0

    .line 288
    :goto_6
    :try_start_3
    invoke-virtual {v1, v6, v7, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v9

    const/4 v15, 0x0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v15, v0

    :goto_7
    if-nez v16, :cond_f

    .line 297
    :try_start_4
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v9

    goto :goto_8

    :catch_2
    const/4 v10, 0x0

    .line 301
    :goto_8
    :try_start_5
    iget-object v9, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const/4 v13, 0x0

    move v11, v7

    move-object v12, v4

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 306
    invoke-virtual {v9}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v9}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v1, v6, v7, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    :cond_f
    if-nez v16, :cond_11

    if-eqz v15, :cond_10

    .line 317
    throw v15

    .line 319
    :cond_10
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v2}, Ljavax/mail/AuthenticationFailedException;-><init>()V

    throw v2

    .line 322
    :cond_11
    new-instance v15, Ljavax/mail/URLName;

    move-object v9, v15

    move-object v10, v4

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    move-object v14, v2

    move-object v4, v15

    move-object v15, v5

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    if-eqz v17, :cond_12

    .line 325
    iget-object v4, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v6

    .line 326
    new-instance v7, Ljavax/mail/PasswordAuthentication;

    invoke-direct {v7, v2, v5}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4, v6, v7}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 329
    :cond_12
    invoke-virtual {v1, v3}, Ljavax/mail/Service;->setConnected(Z)V

    .line 332
    invoke-virtual {v1, v3}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 209
    monitor-exit p0

    throw v2
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 169
    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 609
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V

    return-void
.end method

.method public declared-synchronized getURLName()Ljavax/mail/URLName;
    .locals 8

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    new-instance v0, Ljavax/mail/URLName;

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 446
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    const/4 v5, 0x0

    .line 447
    iget-object v1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v1}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    .line 445
    invoke-direct/range {v1 .. v7}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 449
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 443
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyConnectionListeners(I)V
    .locals 2

    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 515
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 529
    invoke-direct {p0}, Ljavax/mail/Service;->terminateQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 512
    monitor-exit p0

    throw p1
.end method

.method public protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2

    .line 562
    iget-object v0, p0, Ljavax/mail/Service;->qLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Ljavax/mail/EventQueue;

    invoke-direct {v1}, Ljavax/mail/EventQueue;-><init>()V

    iput-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 562
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    .line 576
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1

    monitor-enter p0

    .line 498
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 497
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 0

    monitor-enter p0

    .line 402
    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 401
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setURLName(Ljavax/mail/URLName;)V
    .locals 0

    monitor-enter p0

    .line 470
    :try_start_0
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 469
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 537
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 541
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
