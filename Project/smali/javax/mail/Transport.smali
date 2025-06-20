.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 118
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 140
    invoke-static {p0, p1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V

    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_16

    .line 147
    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_10

    .line 154
    :cond_0
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 157
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 158
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 159
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 161
    :goto_0
    array-length v9, v2

    if-lt v8, v9, :cond_14

    .line 174
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 176
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v2, "No recipient addresses"

    invoke-direct {v1, v2}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_1
    iget-object v9, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    iget-object v9, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v9

    invoke-static {v9, v10}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v9

    :goto_1
    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    .line 186
    aget-object v3, v2, v7

    invoke-virtual {v9, v3}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v3

    .line 188
    :try_start_0
    invoke-virtual {v3}, Ljavax/mail/Transport;->connect()V

    .line 189
    invoke-virtual {v3, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3}, Ljavax/mail/Transport;->close()V

    .line 192
    throw v1

    .line 203
    :cond_3
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move-object v14, v10

    const/4 v3, 0x0

    .line 204
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_9

    if-nez v3, :cond_5

    .line 258
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    return-void

    .line 262
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 263
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Address;

    .line 264
    invoke-virtual {v5, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object v15, v1

    goto :goto_4

    :cond_6
    move-object v15, v10

    .line 266
    :goto_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 267
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Address;

    .line 268
    invoke-virtual {v6, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object/from16 v16, v1

    goto :goto_5

    :cond_7
    move-object/from16 v16, v10

    .line 270
    :goto_5
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 271
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v10, v1, [Ljavax/mail/Address;

    .line 272
    invoke-virtual {v4, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v17, v10

    .line 274
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v13, "Sending failed"

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    .line 205
    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Vector;

    .line 206
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [Ljavax/mail/Address;

    .line 207
    invoke-virtual {v8, v12}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 210
    aget-object v8, v12, v7

    invoke-virtual {v9, v8}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v8

    if-nez v8, :cond_b

    const/4 v8, 0x0

    .line 213
    :goto_6
    array-length v13, v12

    if-lt v8, v13, :cond_a

    goto :goto_2

    .line 214
    :cond_a
    aget-object v13, v12, v8

    invoke-virtual {v4, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 218
    :cond_b
    :try_start_1
    invoke-virtual {v8}, Ljavax/mail/Transport;->connect()V

    .line 219
    invoke-virtual {v8, v1, v12}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_1
    .catch Ljavax/mail/SendFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v3, v0

    if-nez v14, :cond_c

    move-object v14, v3

    goto :goto_7

    .line 251
    :cond_c
    :try_start_2
    invoke-virtual {v14, v3}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :cond_d
    :goto_7
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    const/4 v3, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    if-nez v14, :cond_e

    move-object v14, v3

    goto :goto_8

    .line 226
    :cond_e
    :try_start_3
    invoke-virtual {v14, v3}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 229
    :goto_8
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v12

    if-eqz v12, :cond_10

    const/4 v13, 0x0

    .line 231
    :goto_9
    array-length v15, v12

    if-lt v13, v15, :cond_f

    goto :goto_a

    .line 232
    :cond_f
    aget-object v15, v12, v13

    invoke-virtual {v4, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 235
    :cond_10
    :goto_a
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v12

    if-eqz v12, :cond_12

    const/4 v13, 0x0

    .line 237
    :goto_b
    array-length v15, v12

    if-lt v13, v15, :cond_11

    goto :goto_c

    .line 238
    :cond_11
    aget-object v15, v12, v13

    invoke-virtual {v5, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 241
    :cond_12
    :goto_c
    invoke-virtual {v3}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v12, 0x0

    .line 243
    :goto_d
    array-length v13, v3

    if-lt v12, v13, :cond_13

    goto :goto_7

    .line 244
    :cond_13
    aget-object v13, v3, v12

    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 253
    :goto_e
    invoke-virtual {v8}, Ljavax/mail/Transport;->close()V

    .line 254
    throw v1

    .line 163
    :cond_14
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 164
    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Vector;

    .line 165
    aget-object v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    .line 168
    :cond_15
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 169
    aget-object v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 170
    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 148
    :cond_16
    :goto_10
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v2, "No recipient addresses"

    invoke-direct {v1, v2}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 317
    :cond_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit p0

    throw p1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 8

    .line 347
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance v0, Ljavax/mail/event/TransportEvent;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 352
    iget-object p1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, p1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1

    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 329
    monitor-exit p0

    throw p1
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
