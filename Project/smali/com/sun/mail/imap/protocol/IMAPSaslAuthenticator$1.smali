.class Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

.field private final synthetic val$p0:Ljava/lang/String;

.field private final synthetic val$r0:Ljava/lang/String;

.field private final synthetic val$u0:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMAP SASL DEBUG: callback length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAP SASL DEBUG: callback "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    :cond_2
    aget-object v2, p1, v1

    instance-of v2, v2, Ljavax/security/auth/callback/NameCallback;

    if-eqz v2, :cond_3

    .line 106
    aget-object v2, p1, v1

    check-cast v2, Ljavax/security/auth/callback/NameCallback;

    .line 107
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 108
    :cond_3
    aget-object v2, p1, v1

    instance-of v2, v2, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v2, :cond_4

    .line 109
    aget-object v2, p1, v1

    check-cast v2, Ljavax/security/auth/callback/PasswordCallback;

    .line 110
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_3

    .line 111
    :cond_4
    aget-object v2, p1, v1

    instance-of v2, v2, Ljavax/security/sasl/RealmCallback;

    if-eqz v2, :cond_6

    .line 112
    aget-object v2, p1, v1

    check-cast v2, Ljavax/security/sasl/RealmCallback;

    .line 113
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 114
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;

    move-result-object v3

    .line 113
    :goto_1
    invoke-virtual {v2, v3}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :cond_6
    aget-object v2, p1, v1

    instance-of v2, v2, Ljavax/security/sasl/RealmChoiceCallback;

    if-eqz v2, :cond_a

    .line 117
    aget-object v2, p1, v1

    check-cast v2, Ljavax/security/sasl/RealmChoiceCallback;

    .line 118
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 119
    invoke-virtual {v2}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_3

    .line 122
    :cond_7
    invoke-virtual {v2}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 123
    :goto_2
    array-length v5, v3

    if-lt v4, v5, :cond_8

    goto :goto_3

    .line 124
    :cond_8
    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 125
    invoke-virtual {v2, v4}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
