.class public Lcom/sun/mail/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field private static final newline:[B


# instance fields
.field protected atBOL:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 65
    iget v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v1, v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 71
    :cond_2
    :goto_0
    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_0
    if-lt p2, p3, :cond_1

    sub-int/2addr p3, v0

    if-lez p3, :cond_0

    .line 97
    iget-object p2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    :cond_0
    return-void

    .line 83
    :cond_1
    aget-byte v1, p1, p2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 85
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_1

    .line 87
    :cond_2
    aget-byte v1, p1, p2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    .line 88
    iget v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v1, v2, :cond_3

    .line 89
    iget-object v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    :cond_3
    :goto_1
    add-int/lit8 v0, p2, 0x1

    .line 94
    :cond_4
    aget-byte v1, p1, p2

    iput v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public writeln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    return-void
.end method
