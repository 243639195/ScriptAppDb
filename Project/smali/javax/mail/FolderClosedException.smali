.class public Ljavax/mail/FolderClosedException;
.super Ljavax/mail/MessagingException;
.source "FolderClosedException.java"


# static fields
.field private static final serialVersionUID:J = 0x176c8d33ac752d2bL


# instance fields
.field private transient folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    return-void
.end method


# virtual methods
.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 85
    iget-object v0, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    return-object v0
.end method
