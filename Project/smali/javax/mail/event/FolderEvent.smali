.class public Ljavax/mail/event/FolderEvent;
.super Ljavax/mail/event/MailEvent;
.source "FolderEvent.java"


# static fields
.field public static final CREATED:I = 0x1

.field public static final DELETED:I = 0x2

.field public static final RENAMED:I = 0x3

.field private static final serialVersionUID:J = 0x493fb076540416e3L


# instance fields
.field protected transient folder:Ljavax/mail/Folder;

.field protected transient newFolder:Ljavax/mail/Folder;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p2, p3}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 117
    iput-object p2, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    .line 118
    iput-object p3, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    .line 119
    iput p4, p0, Ljavax/mail/event/FolderEvent;->type:I

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2

    .line 160
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    check-cast p1, Ljavax/mail/event/FolderListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderCreated(Ljavax/mail/event/FolderEvent;)V

    return-void

    .line 162
    :cond_0
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 163
    check-cast p1, Ljavax/mail/event/FolderListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderDeleted(Ljavax/mail/event/FolderEvent;)V

    return-void

    .line 164
    :cond_1
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 165
    check-cast p1, Ljavax/mail/event/FolderListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/FolderListener;->folderRenamed(Ljavax/mail/event/FolderEvent;)V

    :cond_2
    return-void
.end method

.method public getFolder()Ljavax/mail/Folder;
    .locals 1

    .line 138
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->folder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getNewFolder()Ljavax/mail/Folder;
    .locals 1

    .line 153
    iget-object v0, p0, Ljavax/mail/event/FolderEvent;->newFolder:Ljavax/mail/Folder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 128
    iget v0, p0, Ljavax/mail/event/FolderEvent;->type:I

    return v0
.end method
