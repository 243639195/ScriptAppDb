.class public interface abstract Ljavax/activation/DataContentHandler;
.super Ljava/lang/Object;
.source "DataContentHandler.java"


# virtual methods
.method public abstract getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyjava/awt/datatransfer/UnsupportedFlavorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
.end method

.method public abstract writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
