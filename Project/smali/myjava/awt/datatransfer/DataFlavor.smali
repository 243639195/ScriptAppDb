.class public Lmyjava/awt/datatransfer/DataFlavor;
.super Ljava/lang/Object;
.source "DataFlavor.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

.field public static final javaJVMLocalObjectMimeType:Ljava/lang/String; = "application/x-java-jvm-local-objectref"

.field public static final javaRemoteObjectMimeType:Ljava/lang/String; = "application/x-java-remote-object"

.field public static final javaSerializedObjectMimeType:Ljava/lang/String; = "application/x-java-serialized-object"

.field public static final plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor; = null

.field private static final serialVersionUID:J = 0x741da5db78a37333L

.field private static final sortedTextFlavors:[Ljava/lang/String;

.field public static final stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

.field private representationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "text/plain; charset=unicode; class=java.io.InputStream"

    const-string v2, "Plain Text"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 45
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-serialized-object; class=java.lang.String"

    const-string v2, "Unicode String"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 53
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    const-string v1, "application/x-java-file-list; class=java.util.List"

    const-string v2, "application/x-java-file-list"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    const/16 v0, 0x10

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "text/sgml"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "text/xml"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "text/html"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "text/rtf"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "text/enriched"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "text/richtext"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "text/uri-list"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "text/tab-separated-values"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "text/t140"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "text/rfc822-headers"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "text/parityfec"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "text/directory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "text/css"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "text/calendar"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "application/x-java-serialized-object"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "text/plain"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 134
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "application"

    const-string v2, "x-java-serialized-object"

    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz p2, :cond_0

    .line 142
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, "application/x-java-serialized-object"

    .line 144
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 147
    :goto_0
    iget-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v0, "class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, v0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "awt.16C"

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v2, "class"

    invoke-virtual {v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 687
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 702
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0

    .line 688
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyjava/awt/datatransfer/DataFlavor;

    .line 690
    invoke-virtual {v1}, Lmyjava/awt/datatransfer/DataFlavor;->isFlavorTextType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 691
    iget-object v2, v1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 693
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 698
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private getCharset()Ljava/lang/String;
    .locals 2

    .line 199
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRedundant()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v1, "charset"

    invoke-virtual {v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 205
    :cond_1
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 658
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0

    .line 658
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 659
    iget-object v3, v2, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 619
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 620
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyjava/awt/datatransfer/DataFlavor;

    .line 622
    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_2

    goto :goto_0

    :cond_2
    aget-object v5, p1, v4

    .line 624
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 625
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 629
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private getKeyInfo()Ljava/lang/String;
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final getTextPlainUnicodeFlavor()Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .line 91
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text/plain; charset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; class=java.io.InputStream"

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plain Text"

    .line 92
    invoke-direct {v0, v1, v2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 98
    :cond_0
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainUnicodeFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 176
    :try_start_0
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object v0

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 183
    iput-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 188
    :goto_0
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string p2, "class"

    invoke-virtual {p1, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "java.io.InputStream"

    .line 191
    iget-object p2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v0, "class"

    invoke-virtual {p2, v0, p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p3, :cond_2

    .line 194
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 193
    :goto_1
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-void

    .line 179
    :catch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "awt.16D"

    invoke-static {p3, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private isByteCodeFlavor()Z
    .locals 2

    .line 714
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCharsetRedundant()Z
    .locals 2

    .line 231
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/rtf"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/tab-separated-values"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/t140"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/rfc822-headers"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/parityfec"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isCharsetRequired()Z
    .locals 2

    .line 215
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/sgml"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/xml"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/html"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/enriched"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/richtext"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/uri-list"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/directory"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/css"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/calendar"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/x-java-serialized-object"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/plain"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isCharsetSupported(Ljava/lang/String;)Z
    .locals 0

    .line 126
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUnicodeFlavor()Z
    .locals 2

    .line 706
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/io/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    const-class v1, [C

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;"
        }
    .end annotation

    .line 599
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 600
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 602
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_3

    .line 605
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 607
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_2

    .line 613
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v1

    .line 607
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    .line 608
    aget-object v3, v0, v2

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v4}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 577
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-16"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UTF-8"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UTF-16BE"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "UTF-16LE"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 579
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/awt/datatransfer/DTK;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 581
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "US-ASCII"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 583
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByAlphabet(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 589
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v3, :cond_1

    .line 590
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 592
    :cond_1
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .line 554
    const-class v0, Ljava/io/Reader;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 558
    :cond_0
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 562
    :cond_1
    const-class v0, Ljava/nio/CharBuffer;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 566
    :cond_2
    const-class v0, [C

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 568
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 571
    :cond_3
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestByCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object p0

    return-object p0
.end method

.method private static selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Lmyjava/awt/datatransfer/DataFlavor;"
        }
    .end annotation

    .line 639
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 643
    :cond_0
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 647
    :cond_1
    const-class v0, [B

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->getFlavors(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 649
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 652
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0
.end method

.method public static final selectBestTextFlavor([Lmyjava/awt/datatransfer/DataFlavor;)Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 533
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lmyjava/awt/datatransfer/DataFlavor;->sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 535
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 539
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 541
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 542
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmyjava/awt/datatransfer/DataFlavor;

    return-object p0

    .line 545
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 546
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWOCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object p0

    return-object p0

    .line 548
    :cond_3
    invoke-static {p0}, Lmyjava/awt/datatransfer/DataFlavor;->selectBestFlavorWCharset(Ljava/util/List;)Lmyjava/awt/datatransfer/DataFlavor;

    move-result-object p0

    return-object p0
.end method

.method private static sortTextFlavorsByType(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lmyjava/awt/datatransfer/DataFlavor;",
            ">;>;"
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 670
    sget-object v1, Lmyjava/awt/datatransfer/DataFlavor;->sortedTextFlavors:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 677
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    .line 670
    :cond_1
    aget-object v4, v1, v3

    .line 671
    invoke-static {p0, v4}, Lmyjava/awt/datatransfer/DataFlavor;->fetchTextFlavors(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 674
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static final tryToLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 110
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 119
    :catch_2
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 357
    new-instance v0, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/DataFlavor;-><init>()V

    .line 359
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    .line 361
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 361
    check-cast v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 386
    instance-of v0, p1, Lmyjava/awt/datatransfer/DataFlavor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    check-cast p1, Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 427
    :cond_0
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 399
    :cond_1
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez v2, :cond_3

    .line 400
    iget-object p1, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 402
    :cond_3
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v2, v3}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 403
    iget-object v2, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    iget-object v3, p1, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 407
    :cond_4
    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 411
    :cond_5
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-direct {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 417
    :cond_6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 415
    :cond_7
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    :goto_1
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public final getDefaultRepresentationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 278
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final getDefaultRepresentationClassAsString()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getDefaultRepresentationClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method getMimeInfo()Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .locals 1

    .line 241
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "humanpresentablename"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object p1

    .line 262
    :cond_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0, p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReaderForText(Lmyjava/awt/datatransfer/Transferable;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    invoke-interface {p1, p0}, Lmyjava/awt/datatransfer/Transferable;->getTransferData(Lmyjava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 492
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "awt.16E"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_0
    instance-of v0, p1, Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 496
    check-cast p1, Ljava/io/Reader;

    .line 497
    invoke-virtual {p1}, Ljava/io/Reader;->reset()V

    return-object p1

    .line 499
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 500
    new-instance v0, Ljava/io/StringReader;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 501
    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    .line 502
    new-instance v0, Ljava/io/CharArrayReader;

    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0

    .line 503
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 504
    new-instance v0, Ljava/io/CharArrayReader;

    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0

    .line 506
    :cond_4
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 509
    instance-of v1, p1, Ljava/io/InputStream;

    if-eqz v1, :cond_5

    .line 510
    check-cast p1, Ljava/io/InputStream;

    .line 511
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    move-object v1, p1

    goto :goto_0

    .line 512
    :cond_5
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_6

    .line 513
    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 514
    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_8

    .line 515
    new-instance v1, Ljava/io/ByteArrayInputStream;

    check-cast p1, [B

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 521
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    .line 522
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 524
    :cond_7
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 518
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "awt.16F"

    invoke-static {v0}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 436
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getKeyInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFlavorJavaFileListType()Z
    .locals 2

    .line 460
    const-class v0, Ljava/util/List;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->javaFileListFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFlavorRemoteObjectType()Z
    .locals 1

    const-string v0, "application/x-java-remote-object"

    .line 455
    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFlavorSerializedObjectType()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeSerializedObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isRepresentationClassSerializable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFlavorTextType()Z
    .locals 3

    .line 465
    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->stringFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lmyjava/awt/datatransfer/DataFlavor;->plainTextFlavor:Lmyjava/awt/datatransfer/DataFlavor;

    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 472
    :cond_1
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isByteCodeFlavor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    invoke-static {v0}, Lmyjava/awt/datatransfer/DataFlavor;->isCharsetSupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1

    .line 482
    :cond_3
    invoke-direct {p0}, Lmyjava/awt/datatransfer/DataFlavor;->isUnicodeFlavor()Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .locals 1

    .line 334
    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 1

    .line 328
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iget-object p1, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-virtual {v0, p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->equals(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Z

    move-result p1

    return p1

    .line 329
    :cond_0
    iget-object p1, p1, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isMimeTypeSerializedObject()Z
    .locals 1

    const-string v0, "application/x-java-serialized-object"

    .line 381
    invoke-virtual {p0, v0}, Lmyjava/awt/datatransfer/DataFlavor;->isMimeTypeEqual(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassByteBuffer()Z
    .locals 2

    .line 308
    const-class v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassCharBuffer()Z
    .locals 2

    .line 304
    const-class v0, Ljava/nio/CharBuffer;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassInputStream()Z
    .locals 2

    .line 300
    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassReader()Z
    .locals 2

    .line 296
    const-class v0, Ljava/io/Reader;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isRepresentationClassRemote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepresentationClassSerializable()Z
    .locals 2

    .line 286
    const-class v0, Ljava/io/Serializable;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public match(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Lmyjava/awt/datatransfer/DataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result p1

    return p1
.end method

.method public normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p2
.end method

.method public declared-synchronized readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    .line 349
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    .line 351
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    if-eqz p1, :cond_0

    .line 352
    iget-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    const-string v0, "class"

    invoke-virtual {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 351
    :goto_0
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 347
    monitor-exit p0

    throw p1
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[MimeType=("

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");humanPresentableName="

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->humanPresentableName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lmyjava/awt/datatransfer/DataFlavor;->mimeInfo:Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 340
    monitor-exit p0

    throw p1
.end method
