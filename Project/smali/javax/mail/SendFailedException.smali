.class public Ljavax/mail/SendFailedException;
.super Ljavax/mail/MessagingException;
.source "SendFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x599dc2cbe43ae131L


# instance fields
.field protected transient invalid:[Ljavax/mail/Address;

.field protected transient validSent:[Ljavax/mail/Address;

.field protected transient validUnsent:[Ljavax/mail/Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    iput-object p3, p0, Ljavax/mail/SendFailedException;->validSent:[Ljavax/mail/Address;

    .line 110
    iput-object p4, p0, Ljavax/mail/SendFailedException;->validUnsent:[Ljavax/mail/Address;

    .line 111
    iput-object p5, p0, Ljavax/mail/SendFailedException;->invalid:[Ljavax/mail/Address;

    return-void
.end method


# virtual methods
.method public getInvalidAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 138
    iget-object v0, p0, Ljavax/mail/SendFailedException;->invalid:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidSentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 119
    iget-object v0, p0, Ljavax/mail/SendFailedException;->validSent:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidUnsentAddresses()[Ljavax/mail/Address;
    .locals 1

    .line 129
    iget-object v0, p0, Ljavax/mail/SendFailedException;->validUnsent:[Ljavax/mail/Address;

    return-object v0
.end method
