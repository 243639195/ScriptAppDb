.class public Ljavax/mail/ReadOnlyFolderException;
.super Ljavax/mail/MessagingException;
.source "ReadOnlyFolderException.java"


# static fields
.field private static final serialVersionUID:J = 0x4f447e8d4f54375dL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;

    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 84
    iget-object v0, p0, Ljavax/mail/ReadOnlyFolderException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
