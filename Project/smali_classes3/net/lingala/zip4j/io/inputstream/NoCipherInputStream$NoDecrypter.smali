.class Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
.super Ljava/lang/Object;
.source "NoCipherInputStream.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoDecrypter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 0
    .param p1, "buff"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 24
    return p3
.end method
