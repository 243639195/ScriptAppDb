.class public Lorg/apache/commons/mail/EmailAttachment;
.super Ljava/lang/Object;
.source "EmailAttachment.java"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final INLINE:Ljava/lang/String; = "inline"


# instance fields
.field private description:Ljava/lang/String;

.field private disposition:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    const-string v0, "attachment"

    .line 48
    iput-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/mail/EmailAttachment;->url:Ljava/net/URL;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->disposition:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->path:Ljava/lang/String;

    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/apache/commons/mail/EmailAttachment;->url:Ljava/net/URL;

    return-void
.end method
