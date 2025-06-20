.class public Lcom/sun/mail/util/QEncoderStream;
.super Lcom/sun/mail/util/QPEncoderStream;
.source "QEncoderStream.java"


# static fields
.field private static TEXT_SPECIALS:Ljava/lang/String; = "=_?"

.field private static WORD_SPECIALS:Ljava/lang/String; = "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"


# instance fields
.field private specials:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const v0, 0x7fffffff

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-eqz p2, :cond_0

    .line 72
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    return-void
.end method

.method public static encodedLength([BZ)I
    .locals 4

    if-eqz p1, :cond_0

    .line 96
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->WORD_SPECIALS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sun/mail/util/QEncoderStream;->TEXT_SPECIALS:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    return v1

    .line 98
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    const/16 p1, 0x5f

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    return-void

    :cond_0
    if-lt p1, v1, :cond_2

    const/16 v1, 0x7f

    if-ge p1, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/sun/mail/util/QEncoderStream;->specials:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/QEncoderStream;->output(IZ)V

    return-void
.end method
