.class public Lcom/sun/mail/imap/AppendUID;
.super Ljava/lang/Object;
.source "AppendUID.java"


# instance fields
.field public uid:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    .line 56
    iput-wide v0, p0, Lcom/sun/mail/imap/AppendUID;->uid:J

    .line 59
    iput-wide p1, p0, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    .line 60
    iput-wide p3, p0, Lcom/sun/mail/imap/AppendUID;->uid:J

    return-void
.end method
