.class public Lcom/sun/mail/imap/ACL;
.super Ljava/lang/Object;
.source "ACL.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private name:Ljava/lang/String;

.field private rights:Lcom/sun/mail/imap/Rights;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    .line 66
    new-instance p1, Lcom/sun/mail/imap/Rights;

    invoke-direct {p1}, Lcom/sun/mail/imap/Rights;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/ACL;

    .line 114
    iget-object v1, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    invoke-virtual {v1}, Lcom/sun/mail/imap/Rights;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;

    iput-object v1, v0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sun/mail/imap/ACL;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRights()Lcom/sun/mail/imap/Rights;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public setRights(Lcom/sun/mail/imap/Rights;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sun/mail/imap/ACL;->rights:Lcom/sun/mail/imap/Rights;

    return-void
.end method
