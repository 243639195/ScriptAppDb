.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x41

    const/16 v11, 0x39

    const/4 v8, 0x0

    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 36
    const/4 v5, -0x1

    .line 39
    .local v5, "version":I
    :try_start_0
    const-string v6, "android.os.Build$VERSION"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "SDK_INT"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 46
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move v6, v7

    :goto_1
    sput-boolean v6, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 1990
    const/16 v6, 0x67

    new-array v6, v6, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    .line 1993
    const/16 v3, 0x30

    .local v3, "i":I
    :goto_2
    if-gt v3, v11, :cond_1

    .line 1994
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x30

    aput v9, v6, v3

    .line 1993
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_0
    move v6, v8

    .line 46
    goto :goto_1

    .line 1997
    .restart local v3    # "i":I
    :cond_1
    const/16 v3, 0x61

    :goto_3
    const/16 v6, 0x66

    if-gt v3, v6, :cond_2

    .line 1998
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1997
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2000
    :cond_2
    const/16 v3, 0x41

    :goto_4
    const/16 v6, 0x46

    if-gt v3, v6, :cond_3

    .line 2001
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 2000
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4763
    :cond_3
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 4764
    new-array v6, v10, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4766
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4767
    const/4 v3, 0x0

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    array-length v4, v6

    .local v4, "iS":I
    :goto_5
    if-ge v3, v4, :cond_4

    .line 4768
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v9, v9, v3

    aput v3, v6, v9

    .line 4767
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4770
    :cond_4
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v9, 0x3d

    aput v8, v6, v9

    .line 4829
    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    .line 4831
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_6
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 4832
    if-lt v0, v12, :cond_6

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_6

    .line 4833
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4831
    :cond_5
    :goto_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_6

    .line 4834
    :cond_6
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_7

    .line 4835
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4836
    :cond_7
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    .line 4837
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4842
    :cond_8
    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4845
    const/4 v0, 0x0

    :goto_8
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_d

    .line 4846
    if-lt v0, v12, :cond_a

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_a

    .line 4847
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4845
    :cond_9
    :goto_9
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_8

    .line 4848
    :cond_a
    const/16 v6, 0x61

    if-lt v0, v6, :cond_b

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_b

    .line 4849
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4850
    :cond_b
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_c

    .line 4851
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4852
    :cond_c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_9

    if-gt v0, v11, :cond_9

    .line 4853
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4856
    :cond_d
    return-void

    .line 42
    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "iS":I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 90
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 63
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 64
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    .line 75
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 77
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 102
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 104
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v1, :cond_0

    .line 105
    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 108
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 116
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 117
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1a

    .line 119
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 121
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v4, 0xfeff

    if-ne v1, v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 129
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 125
    goto :goto_1

    :cond_4
    move v1, v3

    .line 128
    goto :goto_2
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 94
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    .line 95
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 6
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4718
    if-lt p0, v3, :cond_0

    const/16 v1, 0x33

    if-le p0, v1, :cond_1

    .line 4759
    :cond_0
    :goto_0
    return v0

    .line 4721
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    .line 4724
    if-lt p2, v2, :cond_0

    if-gt p2, v4, :cond_0

    .line 4727
    if-lt p3, v2, :cond_0

    if-gt p3, v4, :cond_0

    .line 4731
    if-ne p4, v2, :cond_4

    .line 4732
    if-lt p5, v3, :cond_0

    if-gt p5, v4, :cond_0

    .line 4743
    :cond_2
    if-ne p6, v2, :cond_5

    .line 4744
    if-lt p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    .line 4759
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4735
    :cond_4
    if-ne p4, v3, :cond_0

    .line 4736
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v5, :cond_2

    goto :goto_0

    .line 4747
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v5, :cond_7

    .line 4748
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v4, :cond_3

    goto :goto_0

    .line 4751
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 4752
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method static checkTime(CCCCCC)Z
    .locals 6
    .param p0, "h0"    # C
    .param p1, "h1"    # C
    .param p2, "m0"    # C
    .param p3, "m1"    # C
    .param p4, "s0"    # C
    .param p5, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4664
    if-ne p0, v2, :cond_1

    .line 4665
    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    .line 4704
    :cond_0
    :goto_0
    return v0

    .line 4668
    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    .line 4669
    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    .line 4680
    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    .line 4681
    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    .line 4692
    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    .line 4693
    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    .line 4704
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 4672
    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    .line 4673
    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 4684
    :cond_6
    if-ne p2, v5, :cond_0

    .line 4685
    if-eq p3, v2, :cond_3

    goto :goto_0

    .line 4696
    :cond_7
    if-ne p4, v5, :cond_0

    .line 4697
    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 4775
    if-nez p2, :cond_0

    .line 4776
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 4826
    :goto_0
    return-object v2

    .line 4779
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 4782
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 4783
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4786
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 4787
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4790
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 4791
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 4792
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 4794
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 4795
    .local v11, "len":I
    new-array v2, v11, [B

    .line 4798
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 4799
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 4801
    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .line 4802
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 4805
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4806
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 4807
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4810
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 4811
    add-int/lit8 v14, v15, 0x2

    .line 4812
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 4814
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 4790
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4792
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 4816
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 4818
    const/4 v9, 0x0

    .line 4819
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 4820
    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 4819
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 4822
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 4823
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4822
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method private matchFieldHash(J)I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2105
    const/4 v8, 0x1

    .line 2106
    .local v8, "offset":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2107
    .local v3, "fieldQuote":C
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 2109
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_1

    .line 2130
    :cond_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2131
    .local v6, "hash":J
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v5, v10, v9

    .local v5, "i":I
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_c

    .line 2132
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2133
    .local v0, "ch":C
    if-ne v0, v3, :cond_5

    .line 2135
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v10, v5, v10

    sub-int/2addr v10, v9

    add-int v8, v9, v10

    .line 2143
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    cmp-long v10, v6, p1

    if-eqz v10, :cond_6

    .line 2144
    iput-wide v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2145
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2146
    const/4 v10, 0x0

    .line 2176
    .end local v5    # "i":I
    .end local v6    # "hash":J
    :goto_3
    return v10

    .line 2111
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    .line 2113
    const/16 v10, 0x20

    if-eq v3, v10, :cond_2

    const/16 v10, 0xa

    if-eq v3, v10, :cond_2

    const/16 v10, 0xd

    if-eq v3, v10, :cond_2

    const/16 v10, 0x9

    if-eq v3, v10, :cond_2

    const/16 v10, 0xc

    if-eq v3, v10, :cond_2

    const/16 v10, 0x8

    if-ne v3, v10, :cond_4

    .line 2119
    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2120
    .local v2, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_3

    const/16 v3, 0x1a

    :goto_4
    move v9, v8

    .line 2122
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2120
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_3
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2122
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 2124
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_4
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2125
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2126
    const/4 v8, 0x0

    move v10, v8

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_3

    .line 2139
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v5    # "i":I
    .restart local v6    # "hash":J
    .restart local v9    # "offset":I
    :cond_5
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 2140
    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 2131
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2149
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_6
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    add-int v2, v10, v8

    .line 2150
    .restart local v2    # "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_7

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_5
    move v9, v8

    .line 2154
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_8

    .line 2155
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v10, v8

    .line 2176
    goto :goto_3

    .line 2150
    .end local v1    # "chLocal":C
    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2152
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2159
    .end local v8    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_8
    const/16 v10, 0x20

    if-gt v1, v10, :cond_b

    const/16 v10, 0x20

    if-eq v1, v10, :cond_9

    const/16 v10, 0xa

    if-eq v1, v10, :cond_9

    const/16 v10, 0xd

    if-eq v1, v10, :cond_9

    const/16 v10, 0x9

    if-eq v1, v10, :cond_9

    const/16 v10, 0xc

    if-eq v1, v10, :cond_9

    const/16 v10, 0x8

    if-ne v1, v10, :cond_b

    .line 2166
    :cond_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2167
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_a

    const/16 v1, 0x1a

    :goto_7
    move v9, v8

    .line 2170
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_6

    .line 2167
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2169
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2173
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_b
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    :cond_c
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_2
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 825
    new-array v4, p1, [C

    .line 826
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 827
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 828
    aget-char v0, p0, v1

    .line 830
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 831
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 827
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 836
    sparse-switch v0, :sswitch_data_0

    .line 903
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 838
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 841
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 844
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 847
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 850
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 853
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 856
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 859
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 862
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 865
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 868
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 871
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 875
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 878
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 881
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 884
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 887
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 890
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 893
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 896
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 906
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanIdent()V
    .locals 2

    .prologue
    .line 1183
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1187
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1190
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "ident":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1214
    :goto_0
    return-void

    .line 1198
    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1200
    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1202
    :cond_3
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1204
    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1206
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1208
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1211
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 4708
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4709
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 4710
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 4711
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 4712
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4713
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4714
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4715
    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1225
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1231
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    .line 137
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 140
    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 150
    if-eqz p2, :cond_1

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_0

    .line 157
    if-eqz p2, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 161
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 162
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 30
    .param p1, "decimal"    # Z

    .prologue
    .line 1873
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v8, v25, -0x1

    .line 1874
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v8, v0, :cond_0

    const/16 v7, 0x1a

    .line 1878
    .local v7, "chLocal":C
    :goto_0
    const/16 v25, 0x46

    move/from16 v0, v25

    if-ne v7, v0, :cond_1

    .line 1879
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1957
    :goto_1
    return-object v25

    .line 1874
    .end local v7    # "chLocal":C
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1876
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_0

    .line 1882
    .restart local v7    # "chLocal":C
    :cond_1
    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 1883
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto :goto_1

    .line 1886
    :cond_2
    if-eqz p1, :cond_3

    .line 1887
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v25

    goto :goto_1

    .line 1889
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v17, v25, -0x1

    .line 1890
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v23, v0

    .line 1893
    .local v23, "sp":I
    const/16 v25, 0x4c

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x53

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x42

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x46

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    .line 1898
    :cond_4
    add-int/lit8 v23, v23, -0x1

    .line 1904
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v21, v0

    .local v21, "offset":I
    move/from16 v10, v23

    .line 1906
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1914
    .local v9, "chars":[C
    :goto_2
    const/16 v25, 0x9

    move/from16 v0, v25

    if-gt v10, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 1915
    const/16 v19, 0x0

    .line 1917
    .local v19, "negative":Z
    const/4 v15, 0x0

    .line 1918
    .local v15, "i":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v6, v9, v15

    .line 1920
    .local v6, "c":C
    const/16 v25, 0x2d

    move/from16 v0, v25

    if-ne v6, v0, :cond_8

    .line 1921
    const/16 v19, 0x1

    .line 1922
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v6, v9, v16

    .line 1923
    const/16 v20, 0x1

    .line 1931
    .local v20, "off":I
    :goto_3
    add-int/lit8 v18, v6, -0x30

    .line 1932
    .local v18, "intVal":I
    const/16 v22, 0x0

    .line 1933
    .local v22, "power":I
    :goto_4
    if-ge v15, v10, :cond_b

    .line 1934
    aget-char v6, v9, v15

    .line 1936
    const/16 v25, 0x2e

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 1937
    const/16 v22, 0x1

    .line 1933
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1910
    .end local v6    # "c":C
    .end local v9    # "chars":[C
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v20    # "off":I
    .end local v22    # "power":I
    :cond_7
    new-array v9, v10, [C

    .line 1911
    .restart local v9    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v9, v3}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1959
    .end local v9    # "chars":[C
    .end local v10    # "count":I
    .end local v17    # "index":I
    .end local v21    # "offset":I
    .end local v23    # "sp":I
    :catch_0
    move-exception v14

    .line 1960
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1924
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v9    # "chars":[C
    .restart local v10    # "count":I
    .restart local v16    # "i":I
    .restart local v17    # "index":I
    .restart local v19    # "negative":Z
    .restart local v21    # "offset":I
    .restart local v23    # "sp":I
    :cond_8
    const/16 v25, 0x2b

    move/from16 v0, v25

    if-ne v6, v0, :cond_9

    .line 1925
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :try_start_2
    aget-char v6, v9, v16

    .line 1926
    const/16 v20, 0x1

    .restart local v20    # "off":I
    goto :goto_3

    .line 1928
    .end local v15    # "i":I
    .end local v20    # "off":I
    .restart local v16    # "i":I
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "off":I
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_3

    .line 1940
    .restart local v18    # "intVal":I
    .restart local v22    # "power":I
    :cond_a
    add-int/lit8 v11, v6, -0x30

    .line 1941
    .local v11, "digit":I
    mul-int/lit8 v25, v18, 0xa

    add-int v18, v25, v11

    .line 1943
    if-eqz v22, :cond_6

    .line 1944
    mul-int/lit8 v22, v22, 0xa

    goto :goto_5

    .line 1948
    .end local v11    # "digit":I
    :cond_b
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v12, v26, v28

    .line 1949
    .local v12, "doubleVal":D
    if-eqz v19, :cond_c

    .line 1950
    neg-double v12, v12

    .line 1953
    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_1

    .line 1955
    .end local v6    # "c":C
    .end local v12    # "doubleVal":D
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v20    # "off":I
    .end local v22    # "power":I
    :cond_d
    new-instance v24, Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v9, v1, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1957
    .local v24, "str":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v25

    goto/16 :goto_1
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1965
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    .line 1966
    .local v3, "index":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1968
    .local v0, "chLocal":C
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1969
    .local v5, "sp":I
    const/16 v6, 0x4c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x53

    if-eq v0, v6, :cond_0

    const/16 v6, 0x42

    if-eq v0, v6, :cond_0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_0

    const/16 v6, 0x44

    if-ne v0, v6, :cond_1

    .line 1974
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 1979
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v4, "offset":I
    move v2, v5

    .line 1980
    .local v2, "count":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 1981
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v6, v4, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1982
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v6, v7, v9, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 1986
    :goto_0
    return-object v6

    .line 1984
    :cond_2
    new-array v1, v2, [C

    .line 1985
    .local v1, "chars":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    invoke-virtual {v6, v4, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1986
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 914
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 914
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final intValue()I
    .locals 14

    .prologue
    const/16 v11, 0x1a

    .line 1117
    const/4 v10, 0x0

    .line 1118
    .local v10, "result":I
    const/4 v9, 0x0

    .line 1119
    .local v9, "negative":Z
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v4, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v7, v12, v13

    .line 1123
    .local v7, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    move v1, v11

    .line 1126
    .local v1, "chLocal":C
    :goto_0
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_3

    .line 1127
    const/4 v9, 0x1

    .line 1128
    const/high16 v6, -0x80000000

    .line 1129
    .local v6, "limit":I
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 1133
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    const v8, -0xccccccc

    .line 1134
    .local v8, "multmin":I
    if-ge v5, v7, :cond_0

    .line 1135
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .line 1136
    .local v2, "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_4

    move v1, v11

    .line 1140
    :goto_2
    add-int/lit8 v3, v1, -0x30

    .line 1141
    .local v3, "digit":I
    neg-int v10, v3

    move v5, v4

    .line 1143
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_0
    :goto_3
    if-ge v5, v7, :cond_b

    .line 1146
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .line 1147
    .restart local v2    # "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_5

    move v0, v11

    .line 1151
    .local v0, "ch":C
    :goto_4
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_1

    const/16 v12, 0x53

    if-eq v0, v12, :cond_1

    const/16 v12, 0x42

    if-ne v0, v12, :cond_6

    .line 1167
    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    :cond_1
    :goto_5
    if-eqz v9, :cond_a

    .line 1168
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v11, v11, 0x1

    if-le v4, v11, :cond_9

    .line 1174
    .end local v10    # "result":I
    :goto_6
    return v10

    .line 1123
    .end local v1    # "chLocal":C
    .end local v6    # "limit":I
    .end local v8    # "multmin":I
    .restart local v10    # "result":I
    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1125
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1131
    .restart local v1    # "chLocal":C
    :cond_3
    const v6, -0x7fffffff

    .restart local v6    # "limit":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1136
    .end local v5    # "i":I
    .restart local v2    # "charIndex":I
    .restart local v4    # "i":I
    .restart local v8    # "multmin":I
    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1147
    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1155
    .restart local v0    # "ch":C
    :cond_6
    add-int/lit8 v3, v0, -0x30

    .line 1157
    .restart local v3    # "digit":I
    const v12, -0xccccccc

    if-ge v10, v12, :cond_7

    .line 1158
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1160
    :cond_7
    mul-int/lit8 v10, v10, 0xa

    .line 1161
    add-int v12, v6, v3

    if-ge v10, v12, :cond_8

    .line 1162
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1164
    :cond_8
    sub-int/2addr v10, v3

    move v5, v4

    .line 1165
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 1171
    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_9
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1174
    :cond_a
    neg-int v10, v10

    goto :goto_6

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_b
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 604
    const-wide/16 v10, 0x0

    .line 605
    .local v10, "result":J
    const/4 v8, 0x0

    .line 606
    .local v8, "negative":Z
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v3, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v12, v13

    .line 610
    .local v5, "max":I
    const/16 v9, 0x20

    .line 612
    .local v9, "type":C
    add-int/lit8 v1, v5, -0x1

    .line 613
    .local v1, "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_1

    const/16 v0, 0x1a

    .line 617
    .local v0, "chLocal":C
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 634
    :goto_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    const/16 v0, 0x1a

    .line 637
    :goto_2
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    .line 638
    const/4 v8, 0x1

    .line 639
    const-wide/high16 v6, -0x8000000000000000L

    .line 640
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 644
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 645
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    .line 646
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_4

    const/16 v0, 0x1a

    .line 649
    :goto_4
    add-int/lit8 v2, v0, -0x30

    .line 650
    .local v2, "digit":I
    neg-int v12, v2

    int-to-long v10, v12

    move v4, v3

    .line 652
    .end local v2    # "digit":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    :goto_5
    if-ge v4, v5, :cond_8

    .line 654
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    .line 655
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_5

    const/16 v0, 0x1a

    .line 658
    :goto_6
    add-int/lit8 v2, v0, -0x30

    .line 659
    .restart local v2    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 660
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 697
    .end local v2    # "digit":I
    :goto_7
    return-object v12

    .line 613
    .end local v0    # "chLocal":C
    .end local v6    # "limit":J
    :cond_1
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 619
    .restart local v0    # "chLocal":C
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 620
    const/16 v9, 0x4c

    .line 621
    goto :goto_1

    .line 623
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 624
    const/16 v9, 0x53

    .line 625
    goto :goto_1

    .line 627
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 628
    const/16 v9, 0x42

    .line 629
    goto :goto_1

    .line 634
    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 636
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 642
    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 646
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 655
    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 662
    .restart local v2    # "digit":I
    :cond_6
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 663
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    .line 664
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 666
    :cond_7
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 669
    .end local v2    # "digit":I
    :cond_8
    if-eqz v8, :cond_d

    .line 670
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v4, v12, :cond_c

    .line 671
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_b

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_b

    .line 672
    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    .line 673
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 676
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    .line 677
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 680
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 682
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 684
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 687
    :cond_d
    neg-long v10, v10

    .line 688
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_10

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_10

    .line 689
    const/16 v12, 0x53

    if-ne v9, v12, :cond_e

    .line 690
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 691
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_e
    const/16 v12, 0x42

    if-ne v9, v12, :cond_f

    .line 692
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 694
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_f
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 697
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 617
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1247
    const/4 v1, 0x0

    .line 1248
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1249
    .local v0, "ch":C
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_0

    .line 1265
    :goto_1
    return v3

    .line 1253
    :cond_0
    if-gt v0, v6, :cond_2

    if-eq v0, v6, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xc

    if-eq v0, v5, :cond_1

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    :cond_1
    move v2, v3

    .line 1260
    .local v2, "whitespace":Z
    :goto_2
    if-nez v2, :cond_3

    move v3, v4

    .line 1261
    goto :goto_1

    .end local v2    # "whitespace":Z
    :cond_2
    move v2, v4

    .line 1253
    goto :goto_2

    .line 1247
    .restart local v2    # "whitespace":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1814
    const-wide/16 v10, 0x0

    .line 1815
    .local v10, "result":J
    const/4 v8, 0x0

    .line 1816
    .local v8, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v2, "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v9, v12

    .line 1821
    .local v5, "max":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_2

    .line 1822
    const/4 v8, 0x1

    .line 1823
    const-wide/high16 v6, -0x8000000000000000L

    .line 1824
    .local v6, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1828
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1829
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    add-int/lit8 v1, v9, -0x30

    .line 1830
    .local v1, "digit":I
    neg-int v9, v1

    int-to-long v10, v9

    move v3, v2

    .line 1832
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    if-ge v3, v5, :cond_9

    .line 1837
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 1838
    .local v4, "index":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_3

    const/16 v0, 0x1a

    .line 1843
    .local v0, "chLocal":C
    :goto_2
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_1

    const/16 v9, 0x53

    if-eq v0, v9, :cond_1

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    .line 1860
    .end local v0    # "chLocal":C
    .end local v4    # "index":I
    :cond_1
    :goto_3
    if-eqz v8, :cond_8

    .line 1861
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 1867
    .end local v10    # "result":J
    :goto_4
    return-wide v10

    .line 1826
    .end local v6    # "limit":J
    .restart local v10    # "result":J
    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1838
    .end local v3    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1840
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 1849
    .restart local v0    # "chLocal":C
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 1850
    .restart local v1    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 1851
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1853
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 1854
    int-to-long v12, v1

    add-long/2addr v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 1855
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1857
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 1858
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1864
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1867
    :cond_8
    neg-long v10, v10

    goto :goto_4

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_3
.end method

.method public matchField(J)Z
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2006
    const/4 v8, 0x1

    .line 2007
    .local v8, "offset":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2008
    .local v3, "fieldQuote":C
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 2010
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_2

    .line 2032
    :cond_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2033
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_1

    .line 2034
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2035
    .local v0, "ch":C
    if-ne v0, v3, :cond_6

    .line 2037
    sub-int v10, v5, v4

    add-int/lit8 v10, v10, 0x1

    add-int v8, v9, v10

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v9, v8

    .line 2045
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    cmp-long v10, v6, p1

    if-eqz v10, :cond_7

    .line 2046
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2047
    iput-wide v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2048
    const/4 v10, 0x0

    move v8, v9

    .line 2101
    .end local v5    # "i":I
    .end local v6    # "hash":J
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    return v10

    .line 2012
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    .line 2014
    const/16 v10, 0x20

    if-gt v3, v10, :cond_5

    const/16 v10, 0x20

    if-eq v3, v10, :cond_3

    const/16 v10, 0xa

    if-eq v3, v10, :cond_3

    const/16 v10, 0xd

    if-eq v3, v10, :cond_3

    const/16 v10, 0x9

    if-eq v3, v10, :cond_3

    const/16 v10, 0xc

    if-eq v3, v10, :cond_3

    const/16 v10, 0x8

    if-ne v3, v10, :cond_5

    .line 2021
    :cond_3
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2022
    .local v2, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_4

    const/16 v3, 0x1a

    :goto_3
    move v9, v8

    .line 2024
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2022
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2024
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 2026
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_5
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2027
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2028
    const/4 v10, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 2041
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v5    # "i":I
    .restart local v6    # "hash":J
    .restart local v9    # "offset":I
    :cond_6
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 2042
    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 2033
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2051
    .end local v0    # "ch":C
    :cond_7
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2052
    .restart local v2    # "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_8

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_4
    move v9, v8

    .line 2056
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_5
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_a

    .line 2057
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2058
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_9

    const/16 v1, 0x1a

    .line 2081
    :goto_6
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_f

    .line 2082
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2083
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_e

    const/16 v10, 0x1a

    .line 2085
    :goto_7
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2086
    const/16 v10, 0xc

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2101
    :goto_8
    const/4 v10, 0x1

    goto :goto_2

    .line 2052
    .end local v1    # "chLocal":C
    :cond_8
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2054
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 2058
    .restart local v1    # "chLocal":C
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2060
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 2064
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_a
    const/16 v10, 0x20

    if-gt v1, v10, :cond_d

    const/16 v10, 0x20

    if-eq v1, v10, :cond_b

    const/16 v10, 0xa

    if-eq v1, v10, :cond_b

    const/16 v10, 0xd

    if-eq v1, v10, :cond_b

    const/16 v10, 0x9

    if-eq v1, v10, :cond_b

    const/16 v10, 0xc

    if-eq v1, v10, :cond_b

    const/16 v10, 0x8

    if-ne v1, v10, :cond_d

    .line 2071
    :cond_b
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2072
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_c

    const/16 v1, 0x1a

    :goto_9
    move v9, v8

    .line 2075
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_5

    .line 2072
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_c
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2074
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 2078
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_d
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2083
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_e
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2085
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 2087
    :cond_f
    const/16 v10, 0x5b

    if-ne v1, v10, :cond_11

    .line 2088
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2089
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_10

    const/16 v10, 0x1a

    .line 2091
    :goto_a
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2092
    const/16 v10, 0xe

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    .line 2089
    :cond_10
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2091
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 2094
    :cond_11
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2095
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_12

    const/16 v10, 0x1a

    .line 2097
    :goto_b
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_8

    .line 2095
    :cond_12
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2097
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b
.end method

.method public next()C
    .locals 2

    .prologue
    .line 143
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 146
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 144
    return v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final nextIdent()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 582
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 589
    .local v0, "whitespace":Z
    :goto_1
    if-nez v0, :cond_3

    .line 595
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 596
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    .line 601
    :goto_2
    return-void

    .line 582
    .end local v0    # "whitespace":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 592
    .restart local v0    # "whitespace":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 599
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 11

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v3, 0x1a

    .line 222
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 225
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 227
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 232
    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 405
    :goto_1
    return-void

    .line 237
    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    .line 242
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v10, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 244
    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 248
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sparse-switch v4, :sswitch_data_0

    .line 388
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v4, v5, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_12

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ne v4, v5, :cond_12

    :cond_6
    const/4 v0, 0x1

    .line 389
    .local v0, "eof":Z
    :goto_2
    if-eqz v0, :cond_14

    .line 390
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    .line 391
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "EOF error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v0    # "eof":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_1

    .line 258
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 262
    :sswitch_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "true"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 263
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 266
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_8

    .line 277
    :cond_7
    const/4 v3, 0x6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 281
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan true error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :sswitch_3
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    goto/16 :goto_1

    .line 290
    :sswitch_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "false"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 291
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 292
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 294
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_a

    .line 305
    :cond_9
    const/4 v3, 0x7

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 309
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan false error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :sswitch_5
    const/4 v2, 0x0

    .line 314
    .local v2, "token":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 315
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 316
    const/16 v2, 0x8

    .line 322
    :cond_b
    :goto_3
    if-eqz v2, :cond_e

    .line 323
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 324
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 334
    :cond_c
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 317
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "new"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 318
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 319
    const/16 v2, 0x9

    goto :goto_3

    .line 339
    :cond_e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan null/new error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v2    # "token":I
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 343
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 346
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 347
    const/16 v3, 0xb

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 352
    :sswitch_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 353
    .local v1, "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_f

    .line 355
    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 357
    const/16 v3, 0xe

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 353
    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 360
    .end local v1    # "index":I
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 361
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 366
    :sswitch_a
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 367
    .restart local v1    # "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_10

    .line 369
    :goto_5
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 371
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 367
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 376
    .end local v1    # "index":I
    :sswitch_b
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 377
    .restart local v1    # "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    .line 379
    :goto_6
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 381
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 377
    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 384
    .end local v1    # "index":I
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 385
    const/16 v3, 0x11

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 388
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 394
    .restart local v0    # "eof":Z
    :cond_13
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 395
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto/16 :goto_1

    .line 397
    :cond_14
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x1f

    if-le v4, v5, :cond_15

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_16

    .line 398
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    .line 401
    :cond_16
    const/4 v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 8
    .param p1, "expect"    # I

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0xe

    const/16 v5, 0x7b

    const/16 v4, 0xc

    const/16 v1, 0x1a

    .line 412
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 415
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 565
    :cond_0
    :pswitch_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v4, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 417
    :pswitch_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_3

    .line 418
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 421
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 422
    .local v0, "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    .line 424
    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 578
    .end local v0    # "index":I
    :goto_2
    return-void

    .line 422
    .restart local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 428
    .end local v0    # "index":I
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_0

    .line 429
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 432
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 433
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_4

    .line 435
    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 433
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 441
    .end local v0    # "index":I
    :pswitch_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    .line 442
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 445
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 446
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_5

    .line 448
    :goto_4
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 446
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 453
    .end local v0    # "index":I
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 454
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 457
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 458
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_7

    .line 460
    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 458
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 465
    .end local v0    # "index":I
    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    .line 466
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 469
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 470
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_9

    .line 472
    :goto_6
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 470
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 477
    .end local v0    # "index":I
    :cond_a
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    .line 478
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    .line 483
    :pswitch_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_b

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_b

    .line 484
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    .line 489
    :cond_b
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c

    .line 490
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    .line 495
    :cond_c
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_d

    .line 496
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 501
    :cond_d
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 502
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 509
    :pswitch_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    .line 510
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    .line 515
    :cond_e
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_f

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_f

    .line 516
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    .line 521
    :cond_f
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 522
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 525
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 526
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_10

    .line 528
    :goto_7
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_2

    .line 526
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 534
    .end local v0    # "index":I
    :pswitch_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_11

    .line 535
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 540
    :cond_11
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 541
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 547
    :pswitch_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    .line 548
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 553
    :cond_12
    :pswitch_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    .line 554
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    .line 559
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    goto/16 :goto_2

    .line 575
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2

    .line 415
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 4
    .param p1, "expect"    # C

    .prologue
    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 172
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, p1, :cond_1

    .line 175
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 176
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 178
    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 181
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 184
    .end local v0    # "index":I
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 194
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 200
    .local v1, "index":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 203
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 212
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public scanBoolean()Z
    .locals 5

    .prologue
    .line 1428
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v3, "false"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1429
    const/4 v0, 0x5

    .line 1430
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1445
    .local v1, "value":Z
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1448
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :goto_1
    return v1

    .line 1431
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v3, "true"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    const/4 v0, 0x4

    .line 1433
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1434
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 1435
    const/4 v0, 0x1

    .line 1436
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1437
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 1438
    const/4 v0, 0x1

    .line 1439
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1441
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1442
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scanFieldBoolean(J)Z
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2882
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2884
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    .line 2885
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2886
    const/4 v5, 0x0

    .line 3001
    :goto_0
    return v5

    .line 2890
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "false"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2891
    add-int/lit8 v3, v3, 0x5

    .line 2892
    const/4 v5, 0x0

    .line 2920
    .local v5, "value":Z
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v6, v3

    .line 2921
    .local v1, "charIndex":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_9

    const/16 v0, 0x1a

    .line 2926
    .local v0, "chLocal":C
    :goto_2
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_b

    .line 2927
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2930
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2931
    .local v2, "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_a

    const/16 v6, 0x1a

    .line 2933
    :goto_3
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2935
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2936
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v4

    .line 2938
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2893
    .end local v0    # "chLocal":C
    .end local v1    # "charIndex":I
    .end local v2    # "index":I
    .end local v5    # "value":Z
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "true"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2894
    add-int/lit8 v3, v3, 0x4

    .line 2895
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2896
    .end local v5    # "value":Z
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"false\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2897
    add-int/lit8 v3, v3, 0x7

    .line 2898
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2899
    .end local v5    # "value":Z
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"true\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2900
    add-int/lit8 v3, v3, 0x6

    .line 2901
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2902
    .end local v5    # "value":Z
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_5

    .line 2903
    add-int/lit8 v3, v3, 0x1

    .line 2904
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2905
    .end local v5    # "value":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_6

    .line 2906
    add-int/lit8 v3, v3, 0x1

    .line 2907
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2908
    .end local v5    # "value":Z
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"1\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2909
    add-int/lit8 v3, v3, 0x3

    .line 2910
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2911
    .end local v5    # "value":Z
    :cond_7
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"0\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2912
    add-int/lit8 v3, v3, 0x3

    .line 2913
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2915
    .end local v5    # "value":Z
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2916
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2921
    .end local v3    # "offset":I
    .restart local v1    # "charIndex":I
    .restart local v4    # "offset":I
    .restart local v5    # "value":Z
    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2923
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    .line 2931
    .restart local v0    # "chLocal":C
    .restart local v2    # "index":I
    :cond_a
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2933
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_3

    .line 2939
    .end local v2    # "index":I
    :cond_b
    const/16 v6, 0x7d

    if-eq v0, v6, :cond_e

    const/16 v6, 0x20

    if-eq v0, v6, :cond_c

    const/16 v6, 0xa

    if-eq v0, v6, :cond_c

    const/16 v6, 0xd

    if-eq v0, v6, :cond_c

    const/16 v6, 0x9

    if-eq v0, v6, :cond_c

    const/16 v6, 0xc

    if-eq v0, v6, :cond_c

    const/16 v6, 0x8

    if-ne v0, v6, :cond_e

    .line 2946
    :cond_c
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v6, v4

    .line 2947
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_d

    const/16 v0, 0x1a

    :goto_4
    move v4, v3

    .line 2950
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_2

    .line 2947
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_d
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2949
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2955
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_e
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_16

    .line 2956
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2957
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_10

    .line 2958
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2959
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2962
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2963
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_f

    const/16 v6, 0x1a

    .line 2965
    :goto_5
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2995
    .end local v2    # "index":I
    :goto_6
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 2963
    .restart local v2    # "index":I
    :cond_f
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2965
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 2967
    .end local v2    # "index":I
    :cond_10
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_12

    .line 2968
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2969
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2972
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2973
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_11

    const/16 v6, 0x1a

    .line 2975
    :goto_7
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    .line 2973
    :cond_11
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2975
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2977
    .end local v2    # "index":I
    :cond_12
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_14

    .line 2978
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2979
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2982
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2983
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_13

    const/16 v6, 0x1a

    .line 2985
    :goto_8
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    .line 2983
    :cond_13
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2985
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_8

    .line 2987
    .end local v2    # "index":I
    :cond_14
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_15

    .line 2988
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2989
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2990
    const/16 v6, 0x1a

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    .line 2992
    :cond_15
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2993
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2997
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_16
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2998
    const/4 v5, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 21
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2726
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2728
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v8

    .line 2729
    .local v8, "offset":I
    if-nez v8, :cond_0

    .line 2730
    const/4 v3, 0x0

    .line 2878
    :goto_0
    return-object v3

    .line 2733
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2734
    .local v14, "startPos":I
    move-object/from16 v0, p0

    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2739
    .local v12, "startChar":C
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int v5, v15, v8

    .line 2740
    .local v5, "index":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_1

    const/16 v2, 0x1a

    .line 2748
    .local v2, "chLocal":C
    :goto_1
    const/16 v15, 0x22

    if-ne v2, v15, :cond_5

    .line 2749
    const/4 v10, 0x1

    .line 2751
    .local v10, "quote":Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v15, v9

    .line 2753
    .local v13, "startIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v5, v15, v9

    .line 2754
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_2

    const/16 v2, 0x1a

    .line 2760
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2761
    .local v4, "endIndex":I
    const/4 v15, -0x1

    if-ne v4, v15, :cond_3

    .line 2762
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "unclosed str"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2740
    .end local v2    # "chLocal":C
    .end local v4    # "endIndex":I
    .end local v8    # "offset":I
    .end local v10    # "quote":Z
    .end local v13    # "startIndex":I
    .restart local v9    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2742
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 2754
    .end local v9    # "offset":I
    .restart local v2    # "chLocal":C
    .restart local v8    # "offset":I
    .restart local v10    # "quote":Z
    .restart local v13    # "startIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2756
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    .line 2764
    .restart local v4    # "endIndex":I
    :cond_3
    sub-int v11, v4, v13

    .line 2765
    .local v11, "rest":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2766
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2767
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2774
    .local v3, "dateVal":Ljava/util/Date;
    add-int/2addr v8, v11

    .line 2775
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v15, v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2776
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2814
    .end local v4    # "endIndex":I
    .end local v10    # "quote":Z
    .end local v11    # "rest":I
    .end local v13    # "startIndex":I
    :goto_3
    const/16 v15, 0x2c

    if-ne v2, v15, :cond_d

    .line 2815
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v9, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2818
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2819
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_c

    const/16 v15, 0x1a

    .line 2821
    :goto_4
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2823
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2824
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v8, v9

    .line 2825
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2769
    .end local v3    # "dateVal":Ljava/util/Date;
    .restart local v4    # "endIndex":I
    .restart local v10    # "quote":Z
    .restart local v11    # "rest":I
    .restart local v13    # "startIndex":I
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2770
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2771
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2777
    .end local v4    # "endIndex":I
    .end local v8    # "offset":I
    .end local v10    # "quote":Z
    .end local v11    # "rest":I
    .end local v13    # "startIndex":I
    .restart local v9    # "offset":I
    :cond_5
    const/16 v15, 0x30

    if-lt v2, v15, :cond_b

    const/16 v15, 0x39

    if-gt v2, v15, :cond_b

    .line 2779
    add-int/lit8 v15, v2, -0x30

    int-to-long v6, v15

    .local v6, "millis":J
    move v8, v9

    .line 2783
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v5, v15, v8

    .line 2784
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_6

    const/16 v2, 0x1a

    .line 2788
    :goto_6
    const/16 v15, 0x30

    if-lt v2, v15, :cond_7

    const/16 v15, 0x39

    if-gt v2, v15, :cond_7

    .line 2789
    const-wide/16 v16, 0xa

    mul-long v16, v16, v6

    add-int/lit8 v15, v2, -0x30

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_5

    .line 2784
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2786
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_6

    .line 2790
    :cond_7
    const/16 v15, 0x2e

    if-ne v2, v15, :cond_8

    .line 2791
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2792
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2793
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    const/16 v15, 0x22

    if-ne v2, v15, :cond_16

    .line 2794
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v5, v15, v9

    .line 2795
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_9

    const/16 v2, 0x1a

    .line 2803
    :goto_7
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_a

    .line 2804
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2805
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2795
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2797
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_7

    .line 2808
    :cond_a
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .restart local v3    # "dateVal":Ljava/util/Date;
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_3

    .line 2810
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v6    # "millis":J
    :cond_b
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2811
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2819
    .end local v8    # "offset":I
    .restart local v3    # "dateVal":Ljava/util/Date;
    .restart local v9    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2821
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto/16 :goto_4

    .line 2828
    :cond_d
    const/16 v15, 0x7d

    if-ne v2, v15, :cond_15

    .line 2829
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v15, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 2830
    const/16 v15, 0x2c

    if-ne v2, v15, :cond_f

    .line 2831
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2832
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2835
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2836
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_e

    const/16 v15, 0x1a

    .line 2838
    :goto_8
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2870
    :goto_9
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 2836
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2838
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_8

    .line 2840
    :cond_f
    const/16 v15, 0x5d

    if-ne v2, v15, :cond_11

    .line 2841
    const/16 v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2842
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2845
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2846
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_10

    const/16 v15, 0x1a

    .line 2848
    :goto_a
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 2846
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2848
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_a

    .line 2850
    :cond_11
    const/16 v15, 0x7d

    if-ne v2, v15, :cond_13

    .line 2851
    const/16 v15, 0xd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2852
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2855
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2856
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_12

    const/16 v15, 0x1a

    .line 2858
    :goto_b
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 2856
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2858
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_b

    .line 2860
    :cond_13
    const/16 v15, 0x1a

    if-ne v2, v15, :cond_14

    .line 2861
    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2862
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2863
    const/16 v15, 0x1a

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_9

    .line 2865
    :cond_14
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2866
    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2867
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2868
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2872
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_15
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2873
    move-object/from16 v0, p0

    iput-char v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2874
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2875
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v8    # "offset":I
    .restart local v6    # "millis":J
    .restart local v9    # "offset":I
    :cond_16
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_7
.end method

.method public final scanFieldDouble(J)D
    .locals 21
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3564
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3566
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v7

    .line 3567
    .local v7, "offset":I
    if-nez v7, :cond_0

    .line 3568
    const-wide/16 v14, 0x0

    .line 3681
    :goto_0
    return-wide v14

    .line 3571
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3573
    .local v2, "chLocal":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v11, v13, -0x1

    .line 3574
    .local v11, "start":I
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_1

    const/4 v6, 0x1

    .line 3575
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_14

    .line 3576
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3580
    :goto_2
    const/16 v13, 0x30

    if-lt v2, v13, :cond_c

    const/16 v13, 0x39

    if-gt v2, v13, :cond_c

    .line 3581
    add-int/lit8 v5, v2, -0x30

    .line 3583
    .local v5, "intVal":I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3584
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_2

    .line 3585
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    move v7, v8

    .line 3586
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_3

    .line 3574
    .end local v5    # "intVal":I
    .end local v6    # "negative":Z
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3592
    .restart local v5    # "intVal":I
    .restart local v6    # "negative":Z
    :cond_2
    const/4 v9, 0x1

    .line 3593
    .local v9, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_3

    const/4 v10, 0x1

    .line 3594
    .local v10, "small":Z
    :goto_4
    if-eqz v10, :cond_5

    .line 3595
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3596
    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    .line 3597
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3598
    mul-int/lit8 v9, v9, 0xa

    .line 3600
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3601
    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-gt v2, v13, :cond_5

    .line 3602
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3603
    mul-int/lit8 v9, v9, 0xa

    move v7, v8

    .line 3604
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 3593
    .end local v7    # "offset":I
    .end local v10    # "small":Z
    .restart local v8    # "offset":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 3610
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    .restart local v10    # "small":Z
    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3611
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3615
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    const/16 v13, 0x65

    if-eq v2, v13, :cond_6

    const/16 v13, 0x45

    if-ne v2, v13, :cond_8

    :cond_6
    const/4 v4, 0x1

    .line 3616
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_9

    .line 3617
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3618
    const/16 v13, 0x2b

    if-eq v2, v13, :cond_7

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_13

    .line 3619
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3622
    :goto_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_9

    const/16 v13, 0x39

    if-gt v2, v13, :cond_9

    .line 3623
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_7

    .line 3615
    .end local v4    # "exp":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .restart local v4    # "exp":Z
    :cond_9
    move v7, v8

    .line 3630
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v11

    add-int/lit8 v3, v13, -0x1

    .line 3631
    .local v3, "count":I
    if-nez v4, :cond_b

    const/16 v13, 0xa

    if-ge v3, v13, :cond_b

    .line 3632
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 3633
    .local v14, "value":D
    if-eqz v6, :cond_a

    .line 3634
    neg-double v14, v14

    .line 3645
    :cond_a
    :goto_8
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_d

    .line 3646
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v7, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3647
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3648
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3649
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    .line 3637
    .end local v14    # "value":D
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 3638
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .restart local v14    # "value":D
    goto :goto_8

    .line 3641
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    .end local v12    # "text":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3642
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3653
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v5    # "intVal":I
    .restart local v9    # "power":I
    .restart local v10    # "small":Z
    .restart local v14    # "value":D
    :cond_d
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_12

    .line 3654
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3655
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_e

    .line 3656
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3657
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3675
    :goto_9
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v7, v8

    .line 3681
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3659
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_e
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_f

    .line 3660
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3661
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3662
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3663
    :cond_f
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_10

    .line 3664
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3665
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3666
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3667
    :cond_10
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_11

    .line 3668
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3669
    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3670
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 3672
    :cond_11
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3673
    const-wide/16 v14, 0x0

    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3677
    :cond_12
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3678
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v14    # "value":D
    :cond_13
    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_7

    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    :cond_14
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 27
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3685
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3687
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v13

    .line 3688
    .local v13, "offset":I
    if-nez v13, :cond_0

    .line 3689
    const/4 v4, 0x0

    .line 3882
    :goto_0
    return-object v4

    .line 3691
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .local v14, "offset":I
    add-int v8, v22, v13

    .line 3692
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    const/16 v7, 0x1a

    .line 3695
    .local v7, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 3696
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3697
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_0

    .line 3692
    .end local v7    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3694
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    .line 3700
    .restart local v7    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_4

    const/16 v7, 0x1a

    .line 3705
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v4, v0, [D

    .line 3706
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3709
    .local v5, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int/lit8 v17, v22, -0x1

    .line 3711
    .local v17, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 3712
    .local v12, "negative":Z
    :goto_4
    if-eqz v12, :cond_3

    .line 3714
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    const/16 v7, 0x1a

    :goto_5
    move v13, v14

    .line 3720
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_3
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_1d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_1d

    .line 3721
    add-int/lit8 v11, v7, -0x30

    .line 3724
    .local v11, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_7

    const/16 v7, 0x1a

    .line 3728
    :goto_7
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_8

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_8

    .line 3729
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    move v13, v14

    .line 3730
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_6

    .line 3701
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v11    # "intVal":I
    .end local v12    # "negative":Z
    .end local v17    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3703
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 3711
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v17    # "start":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 3715
    .end local v13    # "offset":I
    .restart local v12    # "negative":Z
    .restart local v14    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3717
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 3725
    .restart local v11    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3727
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 3736
    :cond_8
    const/4 v15, 0x1

    .line 3737
    .local v15, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    const/16 v16, 0x1

    .line 3738
    .local v16, "small":Z
    :goto_8
    if-eqz v16, :cond_d

    .line 3740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    const/16 v7, 0x1a

    .line 3744
    :goto_9
    mul-int/lit8 v15, v15, 0xa

    .line 3745
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_c

    .line 3746
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3749
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3750
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    const/16 v7, 0x1a

    .line 3754
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_d

    .line 3755
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3756
    mul-int/lit8 v15, v15, 0xa

    move v13, v14

    .line 3757
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_a

    .line 3737
    .end local v13    # "offset":I
    .end local v16    # "small":Z
    .restart local v14    # "offset":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    .line 3741
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3743
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 3750
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3752
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    .line 3763
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3764
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3768
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v7, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    :cond_e
    const/4 v10, 0x1

    .line 3769
    .local v10, "exp":Z
    :goto_c
    if-eqz v10, :cond_14

    .line 3771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_11

    const/16 v7, 0x1a

    .line 3775
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v7, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_25

    .line 3777
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_12

    const/16 v7, 0x1a

    .line 3783
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_14

    .line 3785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    const/16 v7, 0x1a

    :goto_f
    move v14, v13

    .line 3788
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_e

    .line 3768
    .end local v10    # "exp":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    .line 3772
    .end local v14    # "offset":I
    .restart local v10    # "exp":Z
    .restart local v13    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3774
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    .line 3778
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3780
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_e

    .line 3786
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3788
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_f

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_14
    move v13, v14

    .line 3795
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v22, v22, v17

    add-int/lit8 v9, v22, -0x1

    .line 3798
    .local v9, "count":I
    if-nez v10, :cond_18

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_18

    .line 3799
    int-to-double v0, v11

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 3800
    .local v20, "value":D
    if-eqz v12, :cond_15

    .line 3801
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 3808
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    .line 3809
    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 3810
    .local v19, "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3811
    move-object/from16 v4, v19

    .line 3813
    .end local v19    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v20, v4, v5

    .line 3815
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1a

    .line 3817
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_19

    const/16 v7, 0x1a

    :goto_11
    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_17
    move v5, v6

    .line 3833
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_3

    .line 3804
    .end local v20    # "value":D
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v18

    .line 3805
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .restart local v20    # "value":D
    goto :goto_10

    .line 3818
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v14    # "offset":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3820
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_11

    .line 3821
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_1a
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_17

    .line 3823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1c

    const/16 v7, 0x1a

    .line 3836
    :goto_12
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1b

    .line 3837
    new-array v0, v6, [D

    move-object/from16 v19, v0

    .line 3838
    .restart local v19    # "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3839
    move-object/from16 v4, v19

    .line 3842
    .end local v19    # "tmp":[D
    :cond_1b
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1e

    .line 3843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3844
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3845
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3846
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v13, v14

    .line 3847
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .line 3824
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3826
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_12

    .line 3830
    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v10    # "exp":Z
    .end local v11    # "intVal":I
    .end local v14    # "offset":I
    .end local v15    # "power":I
    .end local v16    # "small":Z
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_1d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3831
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3850
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "count":I
    .restart local v10    # "exp":Z
    .restart local v11    # "intVal":I
    .restart local v14    # "offset":I
    .restart local v15    # "power":I
    .restart local v16    # "small":Z
    .restart local v20    # "value":D
    :cond_1e
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_24

    .line 3852
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3853
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1f

    const/16 v7, 0x1a

    .line 3856
    :goto_13
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_20

    .line 3857
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3858
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3859
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3876
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 3853
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3855
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_13

    .line 3860
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_21

    .line 3861
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3863
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3864
    :cond_21
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_22

    .line 3865
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3867
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3868
    :cond_22
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v7, v0, :cond_23

    .line 3869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3870
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3871
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    .line 3873
    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3874
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3878
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_24
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3879
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    :cond_25
    move v14, v13

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 29
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3886
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3888
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v16

    .line 3889
    .local v16, "offset":I
    if-nez v16, :cond_0

    .line 3890
    const/16 v24, 0x0

    check-cast v24, [[D

    .line 4121
    :goto_0
    return-object v24

    .line 3892
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .local v17, "offset":I
    add-int v11, v24, v16

    .line 3893
    .local v11, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    const/16 v10, 0x1a

    .line 3897
    .local v10, "chLocal":C
    :goto_1
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-eq v10, v0, :cond_2

    .line 3898
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3899
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_0

    .line 3893
    .end local v10    # "chLocal":C
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3895
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    .line 3902
    .restart local v10    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    const/16 v10, 0x1a

    .line 3907
    :goto_2
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v7, v0, [[D

    .line 3908
    .local v7, "arrayarray":[[D
    const/4 v8, 0x0

    .local v8, "arrayarrayIndex":I
    move v9, v8

    .end local v8    # "arrayarrayIndex":I
    .local v9, "arrayarrayIndex":I
    move/from16 v17, v16

    .line 3911
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_3
    :goto_3
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-ne v10, v0, :cond_3

    .line 3913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_6

    const/16 v10, 0x1a

    .line 3918
    :goto_4
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v4, v0, [D

    .line 3919
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3922
    .local v5, "arrayIndex":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v19, v24, -0x1

    .line 3923
    .local v19, "start":I
    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_7

    const/4 v15, 0x1

    .line 3924
    .local v15, "negative":Z
    :goto_6
    if-eqz v15, :cond_4

    .line 3926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_8

    const/16 v10, 0x1a

    :goto_7
    move/from16 v16, v17

    .line 3932
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_1f

    .line 3933
    add-int/lit8 v14, v10, -0x30

    .line 3936
    .local v14, "intVal":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_9

    const/16 v10, 0x1a

    .line 3941
    :goto_9
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_a

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_a

    .line 3942
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    move/from16 v16, v17

    .line 3943
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_8

    .line 3903
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v7    # "arrayarray":[[D
    .end local v9    # "arrayarrayIndex":I
    .end local v14    # "intVal":I
    .end local v15    # "negative":Z
    .end local v19    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3905
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_2

    .line 3914
    .restart local v7    # "arrayarray":[[D
    .restart local v9    # "arrayarrayIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3916
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_4

    .line 3923
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v19    # "start":I
    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    .line 3927
    .end local v16    # "offset":I
    .restart local v15    # "negative":Z
    .restart local v17    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3929
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 3937
    .restart local v14    # "intVal":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3939
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_9

    .line 3949
    :cond_a
    const/16 v18, 0x1

    .line 3950
    .local v18, "power":I
    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v10, v0, :cond_e

    .line 3952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_b

    const/16 v10, 0x1a

    .line 3957
    :goto_a
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_d

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    .line 3958
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3959
    mul-int/lit8 v18, v18, 0xa

    .line 3962
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_c

    const/16 v10, 0x1a

    .line 3967
    :goto_c
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_e

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_e

    .line 3968
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3969
    mul-int/lit8 v18, v18, 0xa

    move/from16 v16, v17

    .line 3970
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_b

    .line 3953
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3955
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 3963
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3965
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_c

    .line 3976
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3977
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 3981
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_e
    const/16 v24, 0x65

    move/from16 v0, v24

    if-eq v10, v0, :cond_f

    const/16 v24, 0x45

    move/from16 v0, v24

    if-ne v10, v0, :cond_11

    :cond_f
    const/4 v13, 0x1

    .line 3982
    .local v13, "exp":Z
    :goto_d
    if-eqz v13, :cond_15

    .line 3984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3985
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_12

    const/16 v10, 0x1a

    .line 3988
    :goto_e
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v10, v0, :cond_10

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2b

    .line 3990
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_13

    const/16 v10, 0x1a

    .line 3996
    :goto_f
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_15

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_15

    .line 3998
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_14

    const/16 v10, 0x1a

    :goto_10
    move/from16 v17, v16

    .line 4001
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_f

    .line 3981
    .end local v13    # "exp":Z
    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    .line 3985
    .end local v17    # "offset":I
    .restart local v13    # "exp":Z
    .restart local v16    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3987
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_e

    .line 3991
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3993
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_f

    .line 3999
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4001
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_10

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_15
    move/from16 v16, v17

    .line 4008
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    sub-int v24, v24, v19

    add-int/lit8 v12, v24, -0x1

    .line 4010
    .local v12, "count":I
    if-nez v13, :cond_19

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v12, v0, :cond_19

    .line 4011
    int-to-double v0, v14

    move-wide/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    .line 4012
    .local v22, "value":D
    if-eqz v15, :cond_16

    .line 4013
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 4020
    :cond_16
    :goto_11
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_17

    .line 4021
    array-length v0, v4

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 4022
    .local v21, "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4023
    move-object/from16 v4, v21

    .line 4025
    .end local v21    # "tmp":[D
    :cond_17
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v22, v4, v5

    .line 4027
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_1b

    .line 4029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 4030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1a

    const/16 v10, 0x1a

    :goto_12
    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_18
    move v5, v6

    .line 4045
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_5

    .line 4016
    .end local v22    # "value":D
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v20

    .line 4017
    .local v20, "text":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .restart local v22    # "value":D
    goto :goto_11

    .line 4030
    .end local v5    # "arrayIndex":I
    .end local v16    # "offset":I
    .end local v20    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v17    # "offset":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4032
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_12

    .line 4033
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_1b
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_18

    .line 4035
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 4036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1e

    const/16 v10, 0x1a

    .line 4048
    :goto_13
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_1c

    .line 4049
    new-array v0, v6, [D

    move-object/from16 v21, v0

    .line 4050
    .restart local v21    # "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4051
    move-object/from16 v4, v21

    .line 4054
    .end local v21    # "tmp":[D
    :cond_1c
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v9, v0, :cond_1d

    .line 4055
    array-length v0, v7

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    .line 4056
    .local v21, "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4057
    move-object/from16 v7, v21

    .line 4059
    .end local v21    # "tmp":[[D
    :cond_1d
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    aput-object v4, v7, v9

    .line 4061
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_21

    .line 4063
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 4064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_20

    const/16 v10, 0x1a

    :goto_14
    move v9, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    move/from16 v17, v16

    .line 4075
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_3

    .line 4036
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4038
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_13

    .line 4042
    .end local v6    # "arrayIndex":I
    .end local v12    # "count":I
    .end local v13    # "exp":Z
    .end local v14    # "intVal":I
    .end local v17    # "offset":I
    .end local v18    # "power":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4043
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 4064
    .end local v5    # "arrayIndex":I
    .end local v9    # "arrayarrayIndex":I
    .restart local v6    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    .restart local v12    # "count":I
    .restart local v13    # "exp":Z
    .restart local v14    # "intVal":I
    .restart local v18    # "power":I
    .restart local v22    # "value":D
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4066
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_14

    .line 4067
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_21
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2a

    .line 4069
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 4070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_23

    const/16 v10, 0x1a

    .line 4079
    :goto_15
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v8, v0, :cond_22

    .line 4080
    new-array v0, v8, [[D

    move-object/from16 v21, v0

    .line 4081
    .restart local v21    # "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4082
    move-object/from16 v7, v21

    .line 4085
    .end local v21    # "tmp":[[D
    :cond_22
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_24

    .line 4086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v16, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4088
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4089
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v24, v7

    .line 4090
    goto/16 :goto_0

    .line 4070
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4072
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_15

    .line 4093
    :cond_24
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_29

    .line 4094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v24, v24, v16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    .line 4095
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_25

    .line 4096
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4098
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4115
    :goto_16
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v24, v7

    .line 4121
    goto/16 :goto_0

    .line 4099
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_25
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_26

    .line 4100
    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 4103
    :cond_26
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_27

    .line 4104
    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4106
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 4107
    :cond_27
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v10, v0, :cond_28

    .line 4108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4109
    const/16 v24, 0x14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4110
    const/16 v24, 0x1a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    .line 4112
    :cond_28
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4113
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_0

    .line 4117
    :cond_29
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4118
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_2a
    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_14

    .end local v6    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v12    # "count":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    :cond_2b
    move/from16 v17, v16

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_f
.end method

.method public final scanFieldFloat(J)F
    .locals 15
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3005
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3007
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    .line 3008
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 3009
    const/4 v11, 0x0

    .line 3120
    :goto_0
    return v11

    .line 3012
    :cond_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3014
    .local v0, "chLocal":C
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    add-int/lit8 v9, v12, -0x1

    .line 3015
    .local v9, "start":I
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1

    const/4 v4, 0x1

    .line 3016
    .local v4, "negative":Z
    :goto_1
    if-eqz v4, :cond_14

    .line 3017
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3021
    :goto_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_c

    const/16 v12, 0x39

    if-gt v0, v12, :cond_c

    .line 3022
    add-int/lit8 v3, v0, -0x30

    .line 3024
    .local v3, "intVal":I
    :goto_3
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3025
    const/16 v12, 0x30

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    if-gt v0, v12, :cond_2

    .line 3026
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    move v5, v6

    .line 3027
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3

    .line 3015
    .end local v3    # "intVal":I
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3033
    .restart local v3    # "intVal":I
    .restart local v4    # "negative":Z
    :cond_2
    const/4 v7, 0x1

    .line 3034
    .local v7, "power":I
    const/16 v12, 0x2e

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    .line 3035
    .local v8, "small":Z
    :goto_4
    if-eqz v8, :cond_5

    .line 3036
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 3037
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 3038
    const/16 v7, 0xa

    .line 3039
    :goto_5
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3040
    const/16 v12, 0x30

    if-lt v0, v12, :cond_5

    const/16 v12, 0x39

    if-gt v0, v12, :cond_5

    .line 3041
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 3042
    mul-int/lit8 v7, v7, 0xa

    move v5, v6

    .line 3043
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 3034
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 3049
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3050
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3054
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    const/16 v12, 0x65

    if-eq v0, v12, :cond_6

    const/16 v12, 0x45

    if-ne v0, v12, :cond_8

    :cond_6
    const/4 v2, 0x1

    .line 3055
    .local v2, "exp":Z
    :goto_6
    if-eqz v2, :cond_9

    .line 3056
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3057
    const/16 v12, 0x2b

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_13

    .line 3058
    :cond_7
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3061
    :goto_7
    const/16 v12, 0x30

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    if-gt v0, v12, :cond_9

    .line 3062
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_7

    .line 3054
    .end local v2    # "exp":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .restart local v2    # "exp":Z
    :cond_9
    move v5, v6

    .line 3069
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    add-int/lit8 v1, v12, -0x1

    .line 3070
    .local v1, "count":I
    if-nez v2, :cond_b

    const/16 v12, 0xa

    if-ge v1, v12, :cond_b

    .line 3071
    int-to-float v12, v3

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 3072
    .local v11, "value":F
    if-eqz v4, :cond_a

    .line 3073
    neg-float v11, v11

    .line 3084
    :cond_a
    :goto_8
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_d

    .line 3085
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3086
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3087
    const/4 v12, 0x3

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3088
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    .line 3076
    .end local v11    # "value":F
    :cond_b
    invoke-direct {p0, v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 3077
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .restart local v11    # "value":F
    goto :goto_8

    .line 3080
    .end local v1    # "count":I
    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "value":F
    :cond_c
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3081
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3092
    .restart local v1    # "count":I
    .restart local v2    # "exp":Z
    .restart local v3    # "intVal":I
    .restart local v7    # "power":I
    .restart local v8    # "small":Z
    .restart local v11    # "value":F
    :cond_d
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_12

    .line 3093
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 3094
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_e

    .line 3095
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3096
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3097
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3114
    :goto_9
    const/4 v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    .line 3120
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3098
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_f

    .line 3099
    const/16 v12, 0xf

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3100
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3102
    :cond_f
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_10

    .line 3103
    const/16 v12, 0xd

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3104
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3106
    :cond_10
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_11

    .line 3107
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3108
    const/16 v12, 0x14

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3109
    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 3111
    :cond_11
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3112
    const/4 v11, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3116
    :cond_12
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3117
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v11    # "value":F
    :cond_13
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_7

    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    :cond_14
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 23
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3124
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3126
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v12

    .line 3127
    .local v12, "offset":I
    if-nez v12, :cond_0

    .line 3128
    const/4 v3, 0x0

    .line 3321
    :goto_0
    return-object v3

    .line 3130
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v7, v20, v12

    .line 3131
    .local v7, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v6, 0x1a

    .line 3134
    .local v6, "chLocal":C
    :goto_1
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    .line 3135
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3136
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_0

    .line 3131
    .end local v6    # "chLocal":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3133
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    .line 3139
    .restart local v6    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v6, 0x1a

    .line 3144
    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v3, v0, [F

    .line 3145
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3148
    .local v4, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    add-int/lit8 v16, v20, -0x1

    .line 3150
    .local v16, "start":I
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    const/4 v11, 0x1

    .line 3151
    .local v11, "negative":Z
    :goto_4
    if-eqz v11, :cond_3

    .line 3153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    const/16 v6, 0x1a

    :goto_5
    move v12, v13

    .line 3159
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_1d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    .line 3160
    add-int/lit8 v10, v6, -0x30

    .line 3163
    .local v10, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_7

    const/16 v6, 0x1a

    .line 3167
    :goto_7
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_8

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_8

    .line 3168
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    move v12, v13

    .line 3169
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_6

    .line 3140
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v10    # "intVal":I
    .end local v11    # "negative":Z
    .end local v16    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3142
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    .line 3150
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v16    # "start":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 3154
    .end local v12    # "offset":I
    .restart local v11    # "negative":Z
    .restart local v13    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3156
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 3164
    .restart local v10    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3166
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 3175
    :cond_8
    const/4 v14, 0x1

    .line 3176
    .local v14, "power":I
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v6, v0, :cond_9

    const/4 v15, 0x1

    .line 3177
    .local v15, "small":Z
    :goto_8
    if-eqz v15, :cond_d

    .line 3179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const/16 v6, 0x1a

    .line 3183
    :goto_9
    mul-int/lit8 v14, v14, 0xa

    .line 3184
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_c

    .line 3185
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 3188
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_b

    const/16 v6, 0x1a

    .line 3193
    :goto_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_d

    .line 3194
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 3195
    mul-int/lit8 v14, v14, 0xa

    move v12, v13

    .line 3196
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_a

    .line 3176
    .end local v12    # "offset":I
    .end local v15    # "small":Z
    .restart local v13    # "offset":I
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 3180
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    .restart local v15    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3182
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_9

    .line 3189
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3191
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_b

    .line 3202
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3203
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3207
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_d
    const/16 v20, 0x65

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    const/16 v20, 0x45

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    .line 3208
    .local v9, "exp":Z
    :goto_c
    if-eqz v9, :cond_14

    .line 3210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_11

    const/16 v6, 0x1a

    .line 3214
    :goto_d
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_f

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_25

    .line 3216
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v6, 0x1a

    .line 3222
    :goto_e
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_14

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_14

    .line 3224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v6, 0x1a

    :goto_f
    move v13, v12

    .line 3227
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_e

    .line 3207
    .end local v9    # "exp":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    .line 3211
    .end local v13    # "offset":I
    .restart local v9    # "exp":Z
    .restart local v12    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3213
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    .line 3217
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3219
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_e

    .line 3225
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3227
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_f

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_14
    move v12, v13

    .line 3234
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    sub-int v20, v20, v16

    add-int/lit8 v8, v20, -0x1

    .line 3237
    .local v8, "count":I
    if-nez v9, :cond_18

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v8, v0, :cond_18

    .line 3238
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 3239
    .local v19, "value":F
    if-eqz v11, :cond_15

    .line 3240
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 3247
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_16

    .line 3248
    array-length v0, v3

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 3249
    .local v18, "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3250
    move-object/from16 v3, v18

    .line 3252
    .end local v18    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v19, v3, v4

    .line 3254
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1a

    .line 3256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_19

    const/16 v6, 0x1a

    :goto_11
    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_17
    move v4, v5

    .line 3272
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_3

    .line 3243
    .end local v19    # "value":F
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v17

    .line 3244
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .restart local v19    # "value":F
    goto :goto_10

    .line 3257
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .end local v17    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3259
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_11

    .line 3260
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_1a
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_17

    .line 3262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1c

    const/16 v6, 0x1a

    .line 3275
    :goto_12
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_1b

    .line 3276
    new-array v0, v5, [F

    move-object/from16 v18, v0

    .line 3277
    .restart local v18    # "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3278
    move-object/from16 v3, v18

    .line 3281
    .end local v18    # "tmp":[F
    :cond_1b
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 3282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3283
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3284
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3285
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v12, v13

    .line 3286
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .line 3263
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3265
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_12

    .line 3269
    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v9    # "exp":Z
    .end local v10    # "intVal":I
    .end local v13    # "offset":I
    .end local v14    # "power":I
    .end local v15    # "small":Z
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v12    # "offset":I
    :cond_1d
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3270
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3289
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "count":I
    .restart local v9    # "exp":Z
    .restart local v10    # "intVal":I
    .restart local v13    # "offset":I
    .restart local v14    # "power":I
    .restart local v15    # "small":Z
    .restart local v19    # "value":F
    :cond_1e
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_24

    .line 3291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1f

    const/16 v6, 0x1a

    .line 3295
    :goto_13
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_20

    .line 3296
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3315
    :goto_14
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 3292
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3294
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_13

    .line 3299
    :cond_20
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_21

    .line 3300
    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3302
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3303
    :cond_21
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_22

    .line 3304
    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3307
    :cond_22
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v6, v0, :cond_23

    .line 3308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3309
    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3310
    const/16 v20, 0x1a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    .line 3312
    :cond_23
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3313
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3317
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_24
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3318
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    :cond_25
    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 25
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3325
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3327
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v15

    .line 3328
    .local v15, "offset":I
    if-nez v15, :cond_0

    .line 3329
    const/16 v22, 0x0

    check-cast v22, [[F

    .line 3560
    :goto_0
    return-object v22

    .line 3331
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v10, v22, v15

    .line 3332
    .local v10, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    const/16 v9, 0x1a

    .line 3336
    .local v9, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    .line 3337
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3338
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 3332
    .end local v9    # "chLocal":C
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3334
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    .line 3341
    .restart local v9    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_5

    const/16 v9, 0x1a

    .line 3346
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [[F

    .line 3347
    .local v6, "arrayarray":[[F
    const/4 v7, 0x0

    .local v7, "arrayarrayIndex":I
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .local v8, "arrayarrayIndex":I
    move/from16 v16, v15

    .line 3350
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_3
    :goto_3
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-ne v9, v0, :cond_3

    .line 3352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_6

    const/16 v9, 0x1a

    .line 3357
    :goto_4
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v3, v0, [F

    .line 3358
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3361
    .local v4, "arrayIndex":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    add-int/lit8 v18, v22, -0x1

    .line 3362
    .local v18, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_7

    const/4 v14, 0x1

    .line 3363
    .local v14, "negative":Z
    :goto_6
    if-eqz v14, :cond_4

    .line 3365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_8

    const/16 v9, 0x1a

    :goto_7
    move/from16 v15, v16

    .line 3371
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_4
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_1f

    .line 3372
    add-int/lit8 v13, v9, -0x30

    .line 3375
    .local v13, "intVal":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_9

    const/16 v9, 0x1a

    .line 3380
    :goto_9
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_a

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_a

    .line 3381
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    move/from16 v15, v16

    .line 3382
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_8

    .line 3342
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v6    # "arrayarray":[[F
    .end local v8    # "arrayarrayIndex":I
    .end local v13    # "intVal":I
    .end local v14    # "negative":Z
    .end local v18    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3344
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_2

    .line 3353
    .restart local v6    # "arrayarray":[[F
    .restart local v8    # "arrayarrayIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3355
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_4

    .line 3362
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v18    # "start":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 3366
    .end local v15    # "offset":I
    .restart local v14    # "negative":Z
    .restart local v16    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3368
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_7

    .line 3376
    .restart local v13    # "intVal":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3378
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_9

    .line 3388
    :cond_a
    const/16 v17, 0x1

    .line 3389
    .local v17, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v9, v0, :cond_e

    .line 3391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_b

    const/16 v9, 0x1a

    .line 3396
    :goto_a
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_d

    .line 3397
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3398
    mul-int/lit8 v17, v17, 0xa

    .line 3401
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_c

    const/16 v9, 0x1a

    .line 3406
    :goto_c
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_e

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_e

    .line 3407
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3408
    mul-int/lit8 v17, v17, 0xa

    move/from16 v15, v16

    .line 3409
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_b

    .line 3392
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3394
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_a

    .line 3402
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3404
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_c

    .line 3415
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3416
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3420
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_e
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v9, v0, :cond_11

    :cond_f
    const/4 v12, 0x1

    .line 3421
    .local v12, "exp":Z
    :goto_d
    if-eqz v12, :cond_15

    .line 3423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_12

    const/16 v9, 0x1a

    .line 3427
    :goto_e
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v9, v0, :cond_10

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2b

    .line 3429
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_13

    const/16 v9, 0x1a

    .line 3435
    :goto_f
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_15

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_15

    .line 3437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_14

    const/16 v9, 0x1a

    :goto_10
    move/from16 v16, v15

    .line 3440
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_f

    .line 3420
    .end local v12    # "exp":Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_d

    .line 3424
    .end local v16    # "offset":I
    .restart local v12    # "exp":Z
    .restart local v15    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3426
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_e

    .line 3430
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3432
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    .line 3438
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3440
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_10

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_15
    move/from16 v15, v16

    .line 3447
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v18

    add-int/lit8 v11, v22, -0x1

    .line 3449
    .local v11, "count":I
    if-nez v12, :cond_19

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v11, v0, :cond_19

    .line 3450
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    .line 3451
    .local v21, "value":F
    if-eqz v14, :cond_16

    .line 3452
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 3459
    :cond_16
    :goto_11
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_17

    .line 3460
    array-length v0, v3

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 3461
    .local v20, "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3462
    move-object/from16 v3, v20

    .line 3464
    .end local v20    # "tmp":[F
    :cond_17
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v21, v3, v4

    .line 3466
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_1b

    .line 3468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1a

    const/16 v9, 0x1a

    :goto_12
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_18
    move v4, v5

    .line 3484
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_5

    .line 3455
    .end local v21    # "value":F
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v19

    .line 3456
    .local v19, "text":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .restart local v21    # "value":F
    goto :goto_11

    .line 3469
    .end local v4    # "arrayIndex":I
    .end local v15    # "offset":I
    .end local v19    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3471
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_12

    .line 3472
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1b
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_18

    .line 3474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1e

    const/16 v9, 0x1a

    .line 3487
    :goto_13
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v5, v0, :cond_1c

    .line 3488
    new-array v0, v5, [F

    move-object/from16 v20, v0

    .line 3489
    .restart local v20    # "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3490
    move-object/from16 v3, v20

    .line 3493
    .end local v20    # "tmp":[F
    :cond_1c
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1d

    .line 3494
    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    .line 3495
    .local v20, "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3496
    move-object/from16 v6, v20

    .line 3498
    .end local v20    # "tmp":[[F
    :cond_1d
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    aput-object v3, v6, v8

    .line 3500
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_21

    .line 3502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_20

    const/16 v9, 0x1a

    :goto_14
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    move/from16 v16, v15

    .line 3514
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_3

    .line 3475
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3477
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_13

    .line 3481
    .end local v5    # "arrayIndex":I
    .end local v11    # "count":I
    .end local v12    # "exp":Z
    .end local v13    # "intVal":I
    .end local v16    # "offset":I
    .end local v17    # "power":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v15    # "offset":I
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3482
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3503
    .end local v4    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .restart local v5    # "arrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    .restart local v11    # "count":I
    .restart local v12    # "exp":Z
    .restart local v13    # "intVal":I
    .restart local v17    # "power":I
    .restart local v21    # "value":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3505
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_14

    .line 3506
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_21
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2a

    .line 3508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_23

    const/16 v9, 0x1a

    .line 3518
    :goto_15
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v7, v0, :cond_22

    .line 3519
    new-array v0, v7, [[F

    move-object/from16 v20, v0

    .line 3520
    .restart local v20    # "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3521
    move-object/from16 v6, v20

    .line 3524
    .end local v20    # "tmp":[[F
    :cond_22
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_24

    .line 3525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v15, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3526
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3527
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3528
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v22, v6

    .line 3529
    goto/16 :goto_0

    .line 3509
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3511
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_15

    .line 3532
    :cond_24
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_29

    .line 3533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v22, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 3534
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_25

    .line 3535
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3537
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3554
    :goto_16
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v22, v6

    .line 3560
    goto/16 :goto_0

    .line 3538
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_25
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_26

    .line 3539
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3541
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3542
    :cond_26
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_27

    .line 3543
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3545
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3546
    :cond_27
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v9, v0, :cond_28

    .line 3547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3548
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3549
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    .line 3551
    :cond_28
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3552
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 3556
    :cond_29
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3557
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_2a
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_14

    .end local v5    # "arrayIndex":I
    .end local v7    # "arrayarrayIndex":I
    .end local v11    # "count":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_2b
    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_f
.end method

.method public scanFieldInt(J)I
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2180
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2182
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v4

    .line 2183
    .local v4, "offset":I
    if-nez v4, :cond_1

    .line 2184
    const/4 v7, 0x0

    .line 2323
    :cond_0
    :goto_0
    return v7

    .line 2188
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int v1, v8, v4

    .line 2189
    .local v1, "charIndex":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 2193
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v6, 0x1

    .line 2194
    .local v6, "quote":Z
    :goto_2
    if-eqz v6, :cond_2

    .line 2195
    const/4 v6, 0x1

    .line 2197
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2198
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v5, v4

    .line 2203
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v3, 0x1

    .line 2204
    .local v3, "negative":Z
    :goto_4
    if-eqz v3, :cond_1e

    .line 2205
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2206
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    .line 2212
    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_d

    const/16 v8, 0x39

    if-gt v0, v8, :cond_d

    .line 2213
    add-int/lit8 v7, v0, -0x30

    .line 2216
    .local v7, "value":I
    :goto_6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v8, v4

    .line 2217
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 2220
    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    .line 2221
    mul-int/lit8 v8, v7, 0xa

    add-int/lit8 v9, v0, -0x30

    add-int v7, v8, v9

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_6

    .line 2189
    .end local v0    # "chLocal":C
    .end local v3    # "negative":Z
    .end local v4    # "offset":I
    .end local v6    # "quote":Z
    .end local v7    # "value":I
    .restart local v5    # "offset":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2191
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2193
    .restart local v0    # "chLocal":C
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 2198
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "quote":Z
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2200
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 2203
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 2206
    .end local v5    # "offset":I
    .restart local v3    # "negative":Z
    .restart local v4    # "offset":I
    :cond_7
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2208
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2217
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v7    # "value":I
    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2219
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 2222
    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    .line 2223
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2224
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2225
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1d

    .line 2226
    if-nez v6, :cond_b

    .line 2227
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2228
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2230
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_b
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v2, v8, v5

    .line 2231
    .local v2, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_c

    const/16 v0, 0x1a

    .line 2239
    .end local v2    # "index":I
    :goto_8
    if-gez v7, :cond_1c

    .line 2240
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2241
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2231
    .restart local v2    # "index":I
    :cond_c
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2233
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 2244
    .end local v2    # "index":I
    .end local v7    # "value":I
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2245
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2261
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v7    # "value":I
    :cond_e
    const/16 v8, 0x20

    if-gt v0, v8, :cond_13

    const/16 v8, 0x20

    if-eq v0, v8, :cond_f

    const/16 v8, 0xa

    if-eq v0, v8, :cond_f

    const/16 v8, 0xd

    if-eq v0, v8, :cond_f

    const/16 v8, 0x9

    if-eq v0, v8, :cond_f

    const/16 v8, 0xc

    if-eq v0, v8, :cond_f

    const/16 v8, 0x8

    if-ne v0, v8, :cond_13

    .line 2268
    :cond_f
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2269
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_12

    const/16 v0, 0x1a

    :goto_9
    move v5, v4

    .line 2249
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :goto_a
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_e

    .line 2250
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2253
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2254
    .restart local v2    # "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_11

    const/16 v8, 0x1a

    .line 2256
    :goto_b
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2258
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2259
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2260
    if-eqz v3, :cond_10

    neg-int v7, v7

    .end local v7    # "value":I
    :cond_10
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2254
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v7    # "value":I
    :cond_11
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2256
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_b

    .line 2269
    .end local v2    # "index":I
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_12
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2271
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    .line 2277
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_13
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1b

    .line 2278
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v5

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2279
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_15

    .line 2280
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2281
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2284
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2285
    .restart local v2    # "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_14

    const/16 v8, 0x1a

    .line 2287
    :goto_c
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2317
    .end local v2    # "index":I
    :goto_d
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2323
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 2285
    .restart local v2    # "index":I
    :cond_14
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2287
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    .line 2289
    .end local v2    # "index":I
    :cond_15
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_17

    .line 2290
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2291
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2294
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2295
    .restart local v2    # "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_16

    const/16 v8, 0x1a

    .line 2297
    :goto_e
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    .line 2295
    :cond_16
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2297
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_e

    .line 2299
    .end local v2    # "index":I
    :cond_17
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_19

    .line 2300
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2301
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2304
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2305
    .restart local v2    # "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_18

    const/16 v8, 0x1a

    .line 2307
    :goto_f
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    .line 2305
    :cond_18
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2307
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_f

    .line 2309
    .end local v2    # "index":I
    :cond_19
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_1a

    .line 2310
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2311
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2312
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    .line 2314
    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2315
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2319
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_1b
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2320
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    :cond_1c
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_a

    :cond_1d
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_8

    .end local v4    # "offset":I
    .end local v7    # "value":I
    .restart local v5    # "offset":I
    :cond_1e
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_5
.end method

.method public final scanFieldIntArray(J)[I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2327
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2329
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v6

    .line 2330
    .local v6, "offset":I
    if-nez v6, :cond_0

    .line 2331
    const/4 v0, 0x0

    .line 2456
    :goto_0
    return-object v0

    .line 2334
    :cond_0
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int v4, v10, v6

    .line 2335
    .local v4, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_1

    const/16 v3, 0x1a

    .line 2338
    .local v3, "chLocal":C
    :goto_1
    const/16 v10, 0x5b

    if-eq v3, v10, :cond_2

    .line 2339
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2340
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 2335
    .end local v3    # "chLocal":C
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2337
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2343
    .restart local v3    # "chLocal":C
    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2344
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_4

    const/16 v3, 0x1a

    .line 2349
    :goto_2
    const/16 v10, 0x10

    new-array v0, v10, [I

    .line 2350
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 2352
    .local v1, "arrayIndex":I
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_17

    .line 2354
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2355
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_5

    const/16 v3, 0x1a

    :goto_3
    move v6, v7

    .line 2414
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_4
    array-length v10, v0

    if-eq v1, v10, :cond_3

    .line 2415
    new-array v8, v1, [I

    .line 2416
    .local v8, "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2417
    move-object v0, v8

    .line 2420
    .end local v8    # "tmp":[I
    :cond_3
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_f

    .line 2421
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2422
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2423
    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2424
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 2344
    .end local v0    # "array":[I
    .end local v1    # "arrayIndex":I
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2346
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 2355
    .end local v6    # "offset":I
    .restart local v0    # "array":[I
    .restart local v1    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2357
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 2385
    .end local v1    # "arrayIndex":I
    .local v2, "arrayIndex":I
    .local v5, "nagative":Z
    .local v9, "value":I
    :cond_6
    array-length v10, v0

    if-lt v2, v10, :cond_7

    .line 2386
    array-length v10, v0

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    new-array v8, v10, [I

    .line 2387
    .restart local v8    # "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2388
    move-object v0, v8

    .line 2390
    .end local v8    # "tmp":[I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    if-eqz v5, :cond_8

    neg-int v9, v9

    .end local v9    # "value":I
    :cond_8
    aput v9, v0, v2

    .line 2392
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_c

    .line 2394
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2395
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_b

    const/16 v3, 0x1a

    :goto_5
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .line 2360
    .end local v5    # "nagative":Z
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :goto_6
    const/4 v5, 0x0

    .line 2361
    .restart local v5    # "nagative":Z
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_16

    .line 2363
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2364
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_9

    const/16 v3, 0x1a

    .line 2367
    :goto_7
    const/4 v5, 0x1

    .line 2369
    :goto_8
    const/16 v10, 0x30

    if-lt v3, v10, :cond_e

    const/16 v10, 0x39

    if-gt v3, v10, :cond_e

    .line 2370
    add-int/lit8 v9, v3, -0x30

    .line 2373
    .restart local v9    # "value":I
    :goto_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2374
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_a

    const/16 v3, 0x1a

    .line 2378
    :goto_a
    const/16 v10, 0x30

    if-lt v3, v10, :cond_6

    const/16 v10, 0x39

    if-gt v3, v10, :cond_6

    .line 2379
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v9, v10, v11

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_9

    .line 2364
    .end local v9    # "value":I
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2366
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_7

    .line 2374
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    .restart local v9    # "value":I
    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2376
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 2395
    .end local v2    # "arrayIndex":I
    .end local v7    # "offset":I
    .end local v9    # "value":I
    .restart local v1    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_b
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2397
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 2398
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_c
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_15

    .line 2400
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2401
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_d

    const/16 v3, 0x1a

    .line 2404
    :goto_b
    goto/16 :goto_4

    .line 2401
    :cond_d
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2403
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_b

    .line 2407
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_e
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2408
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2428
    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_f
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_14

    .line 2429
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 2430
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    .line 2431
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2432
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2433
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2450
    :goto_c
    const/4 v10, 0x4

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 2456
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2434
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_10
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_11

    .line 2435
    const/16 v10, 0xf

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2436
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2437
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    .line 2438
    :cond_11
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_12

    .line 2439
    const/16 v10, 0xd

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2440
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2441
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    .line 2442
    :cond_12
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_13

    .line 2443
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2444
    const/16 v10, 0x14

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2445
    const/16 v10, 0x1a

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_c

    .line 2447
    :cond_13
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2448
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2452
    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2453
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v6    # "offset":I
    .restart local v5    # "nagative":Z
    .restart local v7    # "offset":I
    :cond_15
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_5

    .end local v1    # "arrayIndex":I
    .end local v6    # "offset":I
    .restart local v2    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_16
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_8

    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_17
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_6
.end method

.method public scanFieldLong(J)J
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2460
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2462
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    .line 2463
    .local v3, "offset":I
    if-nez v3, :cond_1

    .line 2464
    const-wide/16 v6, 0x0

    .line 2593
    :cond_0
    :goto_0
    return-wide v6

    .line 2470
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v8, v3

    .line 2471
    .local v1, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 2478
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v5, 0x1

    .line 2479
    .local v5, "quote":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 2480
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2481
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v4, v3

    .line 2486
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v2, 0x1

    .line 2487
    .local v2, "negative":Z
    :goto_4
    if-eqz v2, :cond_1b

    .line 2488
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2489
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    .line 2494
    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_e

    const/16 v8, 0x39

    if-gt v0, v8, :cond_e

    .line 2496
    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    .line 2500
    .local v6, "value":J
    :goto_6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v3

    .line 2501
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 2505
    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    .line 2506
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    .line 2471
    .end local v0    # "chLocal":C
    .end local v2    # "negative":Z
    .end local v3    # "offset":I
    .end local v5    # "quote":Z
    .end local v6    # "value":J
    .restart local v4    # "offset":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2473
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2478
    .restart local v0    # "chLocal":C
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 2481
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "quote":Z
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2483
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 2486
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 2489
    .end local v4    # "offset":I
    .restart local v2    # "negative":Z
    .restart local v3    # "offset":I
    :cond_7
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2491
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2501
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":J
    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2503
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 2507
    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    .line 2508
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2509
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2510
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_c

    .line 2511
    if-nez v5, :cond_b

    .line 2512
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2513
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2515
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_b
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2516
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_d

    const/16 v0, 0x1a

    :goto_8
    move v4, v3

    .line 2524
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_c
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    .line 2525
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2526
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2516
    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2518
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 2529
    .end local v6    # "value":J
    :cond_e
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2530
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2533
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":J
    :cond_f
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_12

    .line 2534
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2537
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2538
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_11

    const/16 v8, 0x1a

    .line 2540
    :goto_9
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2542
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2543
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2544
    if-eqz v2, :cond_10

    neg-long v6, v6

    .end local v6    # "value":J
    :cond_10
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2538
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":J
    :cond_11
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2540
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_9

    .line 2547
    :cond_12
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1a

    .line 2548
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2549
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_14

    .line 2550
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2551
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2554
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2555
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_13

    const/16 v8, 0x1a

    .line 2557
    :goto_a
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2587
    :goto_b
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2593
    if-eqz v2, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 2555
    :cond_13
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2557
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_a

    .line 2559
    :cond_14
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_16

    .line 2560
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2561
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2564
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2565
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_15

    const/16 v8, 0x1a

    .line 2567
    :goto_c
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    .line 2565
    :cond_15
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2567
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    .line 2569
    :cond_16
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_18

    .line 2570
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2571
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2574
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2575
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_17

    const/16 v8, 0x1a

    .line 2577
    :goto_d
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    .line 2575
    :cond_17
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2577
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_d

    .line 2579
    :cond_18
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_19

    .line 2580
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2581
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2582
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    .line 2584
    :cond_19
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2585
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2589
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2590
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .end local v3    # "offset":I
    .end local v6    # "value":J
    .restart local v4    # "offset":I
    :cond_1b
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_5
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 19
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2597
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2599
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v9

    .line 2600
    .local v9, "offset":I
    if-nez v9, :cond_0

    .line 2601
    const/4 v14, 0x0

    .line 2722
    :goto_0
    return-object v14

    .line 2606
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    add-int v8, v15, v9

    .line 2607
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_1

    .line 2608
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2610
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2614
    .local v1, "chLocal":C
    const/16 v15, 0x22

    if-eq v1, v15, :cond_2

    .line 2615
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2620
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/16 v11, 0x22

    .line 2621
    .local v11, "quoteChar":C
    const/4 v6, 0x0

    .line 2622
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v15, v10

    .line 2623
    .local v13, "startIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2624
    .local v5, "endIndex":I
    const/4 v15, -0x1

    if-ne v5, v15, :cond_3

    .line 2625
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2628
    :cond_3
    const/4 v14, 0x0

    .line 2629
    .local v14, "strVal":Ljava/lang/String;
    sget-boolean v15, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v15, :cond_4

    .line 2630
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2637
    :goto_1
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 2639
    :goto_2
    const/4 v12, 0x0

    .line 2640
    .local v12, "slashCount":I
    add-int/lit8 v7, v5, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 2641
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2642
    const/4 v6, 0x1

    .line 2643
    add-int/lit8 v12, v12, 0x1

    .line 2640
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2632
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_4
    sub-int v4, v5, v13

    .line 2633
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 2634
    .local v3, "chars":[C
    new-instance v14, Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    .restart local v14    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 2648
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v12    # "slashCount":I
    :cond_5
    rem-int/lit8 v15, v12, 0x2

    if-nez v15, :cond_7

    .line 2654
    sub-int v4, v5, v13

    .line 2655
    .restart local v4    # "chars_len":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 2656
    .restart local v3    # "chars":[C
    if-eqz v6, :cond_8

    .line 2657
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    .line 2669
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v8, v5

    .line 2670
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_9

    const/16 v1, 0x1a

    .line 2675
    :goto_5
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_b

    .line 2676
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2679
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2680
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_a

    const/16 v15, 0x1a

    .line 2682
    :goto_6
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2684
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2685
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v9, v10

    .line 2686
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2651
    .end local v9    # "offset":I
    .restart local v7    # "i":I
    .restart local v10    # "offset":I
    .restart local v12    # "slashCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    add-int/lit8 v17, v5, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2652
    goto/16 :goto_2

    .line 2659
    .restart local v3    # "chars":[C
    .restart local v4    # "chars_len":I
    :cond_8
    new-instance v14, Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2660
    .restart local v14    # "strVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 2661
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 2670
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2672
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2680
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2682
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_6

    .line 2689
    :cond_b
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_11

    .line 2691
    add-int/lit8 v5, v5, 0x1

    move v2, v5

    .line 2692
    .local v2, "charIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v15, :cond_c

    const/16 v1, 0x1a

    .line 2696
    :goto_7
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_d

    .line 2697
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2698
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2699
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2716
    :goto_8
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v9, v10

    .line 2722
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2692
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2694
    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2700
    :cond_d
    const/16 v15, 0x5d

    if-ne v1, v15, :cond_e

    .line 2701
    const/16 v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2702
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 2704
    :cond_e
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_f

    .line 2705
    const/16 v15, 0xd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2706
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 2708
    :cond_f
    const/16 v15, 0x1a

    if-ne v1, v15, :cond_10

    .line 2709
    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2710
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2711
    const/16 v15, 0x1a

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2713
    :cond_10
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2718
    .end local v2    # "charIndex":I
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    .restart local v14    # "strVal":Ljava/lang/String;
    :cond_11
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0
.end method

.method public scanFieldSymbol(J)J
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 4125
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4127
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    .line 4128
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 4129
    const-wide/16 v2, 0x0

    .line 4211
    :goto_0
    return-wide v2

    .line 4132
    :cond_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int v1, v8, v5

    .line 4133
    .local v1, "charIndex":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_1

    const/16 v0, 0x1a

    .line 4137
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-eq v0, v8, :cond_2

    .line 4138
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4139
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 4133
    .end local v0    # "chLocal":C
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4135
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 4142
    .restart local v0    # "chLocal":C
    :cond_2
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 4143
    .local v2, "hash":J
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v8, v6

    .local v7, "start":I
    move v5, v6

    .line 4145
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v8, v5

    .line 4146
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 4150
    :goto_3
    const/16 v8, 0x22

    if-ne v0, v8, :cond_5

    .line 4151
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v8, v6

    .line 4152
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_4

    const/16 v0, 0x1a

    .line 4167
    :goto_4
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_7

    .line 4168
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4171
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v8, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4172
    .local v4, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_6

    const/16 v8, 0x1a

    .line 4174
    :goto_5
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4176
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 4146
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4148
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 4152
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4154
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 4158
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 4159
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    .line 4161
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_e

    .line 4162
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4163
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4172
    .restart local v4    # "index":I
    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4174
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_5

    .line 4180
    .end local v4    # "index":I
    :cond_7
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    .line 4181
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v8, v5

    .line 4182
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 4185
    :goto_6
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    .line 4186
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4187
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4205
    :goto_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    .line 4211
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4182
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4184
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 4189
    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    .line 4190
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4191
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 4193
    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 4194
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4195
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 4197
    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    .line 4198
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4199
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4200
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_7

    .line 4202
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4203
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4207
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4208
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2
    .param p1, "strict"    # Z

    .prologue
    .line 4215
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 73
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    .prologue
    .line 4219
    if-nez p1, :cond_4

    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 4220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    .line 4221
    .local v31, "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    .line 4222
    .local v32, "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    .line 4223
    .local v37, "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    .line 4224
    .local v38, "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    .line 4225
    .local v39, "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    .line 4227
    .local v40, "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v46

    .line 4228
    .local v46, "c_r0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v47

    .line 4229
    .local v47, "c_r1":C
    const/16 v18, 0x2f

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x44

    move/from16 v0, v32

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x74

    move/from16 v0, v38

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x65

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x28

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x2f

    move/from16 v0, v46

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x29

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4231
    const/16 v59, -0x1

    .line 4232
    .local v59, "plusIndex":I
    const/16 v52, 0x6

    .local v52, "i":I
    :goto_0
    move/from16 v0, v52

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 4233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v52

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v30

    .line 4234
    .local v30, "c":C
    const/16 v18, 0x2b

    move/from16 v0, v30

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 4235
    move/from16 v59, v52

    .line 4232
    :cond_0
    add-int/lit8 v52, v52, 0x1

    goto :goto_0

    .line 4236
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x39

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 4240
    .end local v30    # "c":C
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v59

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4241
    const/16 v18, 0x0

    .line 4636
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v46    # "c_r0":C
    .end local v47    # "c_r1":C
    .end local v52    # "i":I
    .end local v59    # "plusIndex":I
    :goto_1
    return v18

    .line 4243
    .restart local v31    # "c0":C
    .restart local v32    # "c1":C
    .restart local v37    # "c2":C
    .restart local v38    # "c3":C
    .restart local v39    # "c4":C
    .restart local v40    # "c5":C
    .restart local v46    # "c_r0":C
    .restart local v47    # "c_r1":C
    .restart local v52    # "i":I
    .restart local v59    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v58, v18, 0x6

    .line 4244
    .local v58, "offset":I
    sub-int v18, v59, v58

    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v57

    .line 4245
    .local v57, "numberText":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 4247
    .local v54, "millis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4250
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4251
    const/16 v18, 0x1

    goto :goto_1

    .line 4256
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v46    # "c_r0":C
    .end local v47    # "c_r1":C
    .end local v52    # "i":I
    .end local v54    # "millis":J
    .end local v57    # "numberText":Ljava/lang/String;
    .end local v58    # "offset":I
    .end local v59    # "plusIndex":I
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0xe

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    .line 4258
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v33

    .local v33, "c10":C
    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .end local v33    # "c10":C
    :cond_5
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    .line 4259
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 4260
    :cond_6
    if-eqz p1, :cond_7

    .line 4261
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4266
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    .line 4267
    .restart local v31    # "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    .line 4268
    .restart local v32    # "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    .line 4269
    .restart local v37    # "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    .line 4270
    .restart local v38    # "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    .line 4271
    .restart local v39    # "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    .line 4272
    .restart local v40    # "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v41

    .line 4273
    .local v41, "c6":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v42

    .line 4274
    .local v42, "c7":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v43

    .line 4276
    .local v43, "c8":C
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v45, 0x1

    .line 4277
    .local v45, "c_47":Z
    :goto_2
    if-eqz v45, :cond_a

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v61, 0x1

    .line 4278
    .local v61, "sperate16":Z
    :goto_3
    if-eqz v45, :cond_b

    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v62, 0x1

    .line 4279
    .local v62, "sperate17":Z
    :goto_4
    if-nez v62, :cond_8

    if-eqz v61, :cond_c

    .line 4280
    :cond_8
    move/from16 v4, v31

    .line 4281
    .local v4, "y0":C
    move/from16 v5, v32

    .line 4282
    .local v5, "y1":C
    move/from16 v6, v37

    .line 4283
    .local v6, "y2":C
    move/from16 v7, v38

    .line 4284
    .local v7, "y3":C
    move/from16 v8, v40

    .line 4285
    .local v8, "M0":C
    move/from16 v9, v41

    .line 4286
    .local v9, "M1":C
    move/from16 v10, v43

    .line 4287
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4300
    .local v11, "d1":C
    :goto_5
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_d

    .line 4301
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4276
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v45    # "c_47":Z
    .end local v61    # "sperate16":Z
    .end local v62    # "sperate17":Z
    :cond_9
    const/16 v45, 0x0

    goto :goto_2

    .line 4277
    .restart local v45    # "c_47":Z
    :cond_a
    const/16 v61, 0x0

    goto :goto_3

    .line 4278
    .restart local v61    # "sperate16":Z
    :cond_b
    const/16 v62, 0x0

    goto :goto_4

    .line 4289
    .restart local v62    # "sperate17":Z
    :cond_c
    move/from16 v4, v31

    .line 4290
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4291
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4292
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4293
    .restart local v7    # "y3":C
    move/from16 v8, v39

    .line 4294
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4295
    .restart local v9    # "M1":C
    move/from16 v10, v41

    .line 4296
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .restart local v11    # "d1":C
    goto :goto_5

    :cond_d
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 4304
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4307
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 4308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v44

    .line 4309
    .local v44, "c9":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v33

    .line 4310
    .restart local v33    # "c10":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v34

    .line 4311
    .local v34, "c11":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v35

    .line 4312
    .local v35, "c12":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v36

    .line 4316
    .local v36, "c13":C
    if-eqz v62, :cond_e

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    :cond_e
    if-eqz v61, :cond_11

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_f
    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 4318
    :cond_10
    move/from16 v12, v34

    .line 4319
    .local v12, "h0":C
    move/from16 v13, v35

    .line 4320
    .local v13, "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4321
    .local v14, "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4322
    .local v15, "m1":C
    const/16 v16, 0x30

    .line 4323
    .local v16, "s0":C
    const/16 v17, 0x30

    .line 4333
    .local v17, "s1":C
    :goto_6
    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_12

    .line 4334
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4325
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    :cond_11
    move/from16 v12, v43

    .line 4326
    .restart local v12    # "h0":C
    move/from16 v13, v44

    .line 4327
    .restart local v13    # "h1":C
    move/from16 v14, v33

    .line 4328
    .restart local v14    # "m0":C
    move/from16 v15, v34

    .line 4329
    .restart local v15    # "m1":C
    move/from16 v16, v35

    .line 4330
    .restart local v16    # "s0":C
    move/from16 v17, v36

    .restart local v17    # "s1":C
    goto :goto_6

    .line 4337
    :cond_12
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    if-nez v62, :cond_19

    .line 4338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4339
    .local v27, "S0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    .line 4340
    .local v28, "S1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    .line 4341
    .local v29, "S2":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    .line 4342
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4344
    :cond_14
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    .line 4345
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4347
    :cond_16
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 4348
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4351
    :cond_18
    add-int/lit8 v18, v27, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v28, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    .line 4356
    .end local v27    # "S0":C
    .end local v28    # "S1":C
    .end local v29    # "S2":C
    .local v54, "millis":I
    :goto_7
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v51, v18, v19

    .line 4357
    .local v51, "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v56, v18, v19

    .line 4358
    .local v56, "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v60, v18, v19

    .line 4366
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v33    # "c10":C
    .end local v34    # "c11":C
    .end local v35    # "c12":C
    .end local v36    # "c13":C
    .end local v44    # "c9":C
    .local v60, "seconds":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4371
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4372
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4353
    .end local v51    # "hour":I
    .end local v54    # "millis":I
    .end local v56    # "minute":I
    .end local v60    # "seconds":I
    .restart local v12    # "h0":C
    .restart local v13    # "h1":C
    .restart local v14    # "m0":C
    .restart local v15    # "m1":C
    .restart local v16    # "s0":C
    .restart local v17    # "s1":C
    .restart local v33    # "c10":C
    .restart local v34    # "c11":C
    .restart local v35    # "c12":C
    .restart local v36    # "c13":C
    .restart local v44    # "c9":C
    :cond_19
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_7

    .line 4360
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v33    # "c10":C
    .end local v34    # "c11":C
    .end local v35    # "c12":C
    .end local v36    # "c13":C
    .end local v44    # "c9":C
    .end local v54    # "millis":I
    :cond_1a
    const/16 v51, 0x0

    .line 4361
    .restart local v51    # "hour":I
    const/16 v56, 0x0

    .line 4362
    .restart local v56    # "minute":I
    const/16 v60, 0x0

    .line 4363
    .restart local v60    # "seconds":I
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_8

    .line 4375
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v41    # "c6":C
    .end local v42    # "c7":C
    .end local v43    # "c8":C
    .end local v45    # "c_47":Z
    .end local v51    # "hour":I
    .end local v54    # "millis":I
    .end local v56    # "minute":I
    .end local v60    # "seconds":I
    .end local v61    # "sperate16":Z
    .end local v62    # "sperate17":Z
    :cond_1b
    const/16 v18, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    .line 4376
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4379
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    .line 4380
    .restart local v31    # "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    .line 4381
    .restart local v32    # "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    .line 4382
    .restart local v37    # "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    .line 4383
    .restart local v38    # "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    .line 4384
    .restart local v39    # "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    .line 4385
    .restart local v40    # "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v41

    .line 4386
    .restart local v41    # "c6":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v42

    .line 4387
    .restart local v42    # "c7":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v43

    .line 4388
    .restart local v43    # "c8":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v44

    .line 4390
    .restart local v44    # "c9":C
    const/16 v48, 0xa

    .line 4392
    .local v48, "date_len":I
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    :cond_1d
    const/16 v18, 0x2f

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    const/16 v18, 0x2f

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 4395
    :cond_1e
    move/from16 v4, v31

    .line 4396
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4397
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4398
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4399
    .restart local v7    # "y3":C
    move/from16 v8, v40

    .line 4400
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 4401
    .restart local v9    # "M1":C
    move/from16 v10, v43

    .line 4402
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 4472
    .restart local v11    # "d1":C
    :goto_9
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_33

    .line 4473
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4403
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1f
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    const/16 v18, 0x2d

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 4405
    move/from16 v4, v31

    .line 4406
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4407
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4408
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4409
    .restart local v7    # "y3":C
    const/16 v8, 0x30

    .line 4410
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4412
    .restart local v9    # "M1":C
    const/16 v18, 0x20

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 4413
    const/16 v10, 0x30

    .line 4414
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .line 4415
    .restart local v11    # "d1":C
    const/16 v48, 0x8

    goto :goto_9

    .line 4417
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_20
    move/from16 v10, v42

    .line 4418
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .line 4419
    .restart local v11    # "d1":C
    const/16 v48, 0x9

    goto :goto_9

    .line 4421
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_21
    const/16 v18, 0x2e

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    const/16 v18, 0x2e

    move/from16 v0, v40

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    :cond_22
    const/16 v18, 0x2d

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    const/16 v18, 0x2d

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 4424
    :cond_23
    move/from16 v10, v31

    .line 4425
    .restart local v10    # "d0":C
    move/from16 v11, v32

    .line 4426
    .restart local v11    # "d1":C
    move/from16 v8, v38

    .line 4427
    .restart local v8    # "M0":C
    move/from16 v9, v39

    .line 4428
    .restart local v9    # "M1":C
    move/from16 v4, v41

    .line 4429
    .restart local v4    # "y0":C
    move/from16 v5, v42

    .line 4430
    .restart local v5    # "y1":C
    move/from16 v6, v43

    .line 4431
    .restart local v6    # "y2":C
    move/from16 v7, v44

    .restart local v7    # "y3":C
    goto :goto_9

    .line 4433
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_24
    const/16 v18, 0x5e74

    move/from16 v0, v39

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    const v18, 0xb144

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    .line 4434
    :cond_25
    move/from16 v4, v31

    .line 4435
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4436
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4437
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4439
    .restart local v7    # "y3":C
    const/16 v18, 0x6708

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    const v18, 0xc6d4

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 4440
    :cond_26
    move/from16 v8, v40

    .line 4441
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 4442
    .restart local v9    # "M1":C
    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    .line 4443
    :cond_27
    const/16 v10, 0x30

    .line 4444
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4445
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x65e5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const v19, 0xc77c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 4446
    :cond_29
    move/from16 v10, v43

    .line 4447
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 4448
    .restart local v11    # "d1":C
    const/16 v48, 0xb

    goto/16 :goto_9

    .line 4450
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2a
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4452
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_2b
    const/16 v18, 0x6708

    move/from16 v0, v41

    move/from16 v1, v18

    if-eq v0, v1, :cond_2c

    const v18, 0xc6d4

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    .line 4453
    :cond_2c
    const/16 v8, 0x30

    .line 4454
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4455
    .restart local v9    # "M1":C
    const/16 v18, 0x65e5

    move/from16 v0, v43

    move/from16 v1, v18

    if-eq v0, v1, :cond_2d

    const v18, 0xc77c

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    .line 4456
    :cond_2d
    const/16 v10, 0x30

    .line 4457
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4458
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2e
    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 4459
    :cond_2f
    move/from16 v10, v42

    .line 4460
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4462
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4465
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_31
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4468
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    :cond_32
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .restart local v10    # "d0":C
    .restart local v11    # "d1":C
    :cond_33
    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    .line 4476
    invoke-direct/range {v18 .. v26}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v63

    .line 4479
    .local v63, "t":C
    const/16 v18, 0x54

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    const/16 v18, 0x20

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_35

    if-nez p1, :cond_35

    .line 4480
    :cond_34
    add-int/lit8 v18, v48, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_3d

    .line 4481
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4483
    :cond_35
    const/16 v18, 0x22

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x1a

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x65e5

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const v18, 0xc77c

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    .line 4484
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4491
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4492
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4493
    :cond_37
    const/16 v18, 0x2b

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_38

    const/16 v18, 0x2d

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    .line 4494
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b

    .line 4495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    .line 4496
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    .line 4497
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3a

    .line 4498
    :cond_39
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4501
    :cond_3a
    const/16 v19, 0x30

    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v24}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v48

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    .line 4504
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4506
    :cond_3b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4508
    :cond_3c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4511
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3e

    .line 4512
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4514
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3f

    .line 4515
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4518
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4519
    .restart local v12    # "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4520
    .restart local v13    # "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4521
    .restart local v14    # "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4522
    .restart local v15    # "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    .line 4523
    .restart local v16    # "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4525
    .restart local v17    # "s1":C
    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_40

    .line 4526
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_40
    move-object/from16 v18, p0

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    .line 4529
    invoke-virtual/range {v18 .. v24}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v49

    .line 4532
    .local v49, "dot":C
    const/16 v18, 0x2e

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_41

    .line 4533
    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_43

    .line 4534
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4537
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4541
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4543
    const/16 v18, 0x5a

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    .line 4545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_42

    .line 4546
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    .line 4547
    .local v71, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_42

    .line 4548
    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    .line 4549
    .local v69, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4553
    .end local v69    # "timeZone":Ljava/util/TimeZone;
    .end local v71    # "timeZoneIDs":[Ljava/lang/String;
    :cond_42
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4556
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4557
    .restart local v27    # "S0":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_44

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_45

    .line 4558
    :cond_44
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4560
    :cond_45
    add-int/lit8 v54, v27, -0x30

    .line 4561
    .restart local v54    # "millis":I
    const/16 v53, 0x1

    .line 4563
    .local v53, "millisLen":I
    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_46

    .line 4564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    .line 4565
    .restart local v28    # "S1":C
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_46

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_46

    .line 4566
    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v28, -0x30

    add-int v54, v18, v19

    .line 4567
    const/16 v53, 0x2

    .line 4571
    .end local v28    # "S1":C
    :cond_46
    const/16 v18, 0x2

    move/from16 v0, v53

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    .line 4572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    .line 4573
    .restart local v29    # "S2":C
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_47

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_47

    .line 4574
    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    .line 4575
    const/16 v53, 0x3

    .line 4579
    .end local v29    # "S2":C
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4581
    const/16 v72, 0x0

    .line 4582
    .local v72, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v70

    .line 4583
    .local v70, "timeZoneFlag":C
    const/16 v18, 0x2b

    move/from16 v0, v70

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    const/16 v18, 0x2d

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_53

    .line 4584
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v64

    .line 4585
    .local v64, "t0":C
    const/16 v18, 0x30

    move/from16 v0, v64

    move/from16 v1, v18

    if-lt v0, v1, :cond_49

    const/16 v18, 0x31

    move/from16 v0, v64

    move/from16 v1, v18

    if-le v0, v1, :cond_4a

    .line 4586
    :cond_49
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4589
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v65

    .line 4590
    .local v65, "t1":C
    const/16 v18, 0x30

    move/from16 v0, v65

    move/from16 v1, v18

    if-lt v0, v1, :cond_4b

    const/16 v18, 0x39

    move/from16 v0, v65

    move/from16 v1, v18

    if-le v0, v1, :cond_4c

    .line 4591
    :cond_4b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4594
    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v66

    .line 4595
    .local v66, "t2":C
    const/16 v18, 0x3a

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_50

    .line 4596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v67

    .line 4597
    .local v67, "t3":C
    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_4d

    .line 4598
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4601
    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v68

    .line 4602
    .local v68, "t4":C
    const/16 v18, 0x30

    move/from16 v0, v68

    move/from16 v1, v18

    if-eq v0, v1, :cond_4e

    .line 4603
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4605
    :cond_4e
    const/16 v72, 0x6

    .line 4616
    .end local v67    # "t3":C
    .end local v68    # "t4":C
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v70

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    .line 4629
    .end local v64    # "t0":C
    .end local v65    # "t1":C
    .end local v66    # "t2":C
    :cond_4f
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v50

    .line 4630
    .local v50, "end":C
    const/16 v18, 0x1a

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    const/16 v18, 0x22

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    .line 4631
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4606
    .end local v50    # "end":C
    .restart local v64    # "t0":C
    .restart local v65    # "t1":C
    .restart local v66    # "t2":C
    :cond_50
    const/16 v18, 0x30

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    .line 4607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v67

    .line 4608
    .restart local v67    # "t3":C
    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    .line 4609
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4611
    :cond_51
    const/16 v72, 0x5

    .line 4612
    goto :goto_a

    .line 4613
    .end local v67    # "t3":C
    :cond_52
    const/16 v72, 0x3

    goto :goto_a

    .line 4618
    .end local v64    # "t0":C
    .end local v65    # "t1":C
    .end local v66    # "t2":C
    :cond_53
    const/16 v18, 0x5a

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_4f

    .line 4619
    const/16 v72, 0x1

    .line 4620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_4f

    .line 4621
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    .line 4622
    .restart local v71    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_4f

    .line 4623
    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    .line 4624
    .restart local v69    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_b

    .line 4633
    .end local v69    # "timeZone":Ljava/util/TimeZone;
    .end local v71    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v50    # "end":C
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4635
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4636
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method public final scanLongValue()J
    .locals 10

    .prologue
    .line 1756
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1760
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 1761
    const/4 v6, 0x1

    .line 1762
    .local v6, "negative":Z
    const-wide/high16 v2, -0x8000000000000000L

    .line 1764
    .local v2, "limit":J
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1767
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1768
    .local v1, "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_0

    .line 1769
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1771
    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1778
    .end local v1    # "index":I
    :goto_0
    const-wide/16 v4, 0x0

    .line 1780
    .local v4, "longValue":J
    :goto_1
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 1782
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v0, v7, -0x30

    .line 1783
    .local v0, "digit":I
    const-wide v8, -0xcccccccccccccccL

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 1784
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1774
    .end local v0    # "digit":I
    .end local v2    # "limit":J
    .end local v4    # "longValue":J
    .end local v6    # "negative":Z
    :cond_1
    const/4 v6, 0x0

    .line 1775
    .restart local v6    # "negative":Z
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v2    # "limit":J
    goto :goto_0

    .line 1787
    .restart local v0    # "digit":I
    .restart local v4    # "longValue":J
    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    .line 1788
    int-to-long v8, v0

    add-long/2addr v8, v2

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 1789
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1791
    :cond_3
    int-to-long v8, v0

    sub-long/2addr v4, v8

    .line 1796
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1799
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1800
    .restart local v1    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_4

    const/16 v7, 0x1a

    .line 1802
    :goto_2
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_1

    .line 1800
    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1802
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 1806
    .end local v0    # "digit":I
    .end local v1    # "index":I
    :cond_5
    if-nez v6, :cond_6

    .line 1807
    neg-long v4, v4

    .line 1810
    :cond_6
    return-wide v4
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/16 v2, 0x1a

    .line 1292
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1293
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1295
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    .line 1296
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1299
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1300
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 1302
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1307
    .end local v0    # "index":I
    :cond_0
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_3

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_3

    .line 1309
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1315
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1316
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    move v1, v2

    .line 1318
    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1300
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1322
    .end local v0    # "index":I
    :cond_3
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1324
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_6

    .line 1325
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1328
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1329
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 1331
    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1333
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1336
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_6

    .line 1338
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1344
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1345
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    move v1, v2

    .line 1347
    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1329
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1345
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1352
    .end local v0    # "index":I
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_8

    .line 1353
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1418
    :cond_7
    :goto_6
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v1, :cond_16

    .line 1419
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1423
    :goto_7
    return-void

    .line 1355
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_9

    .line 1356
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 1358
    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x42

    if-ne v1, v3, :cond_a

    .line 1359
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 1361
    :cond_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x46

    if-ne v1, v3, :cond_b

    .line 1362
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1364
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    .line 1365
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x44

    if-ne v1, v3, :cond_c

    .line 1366
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1368
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    .line 1369
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    .line 1371
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1374
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1375
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_10

    move v1, v2

    .line 1377
    :goto_8
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1380
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_f

    .line 1382
    :cond_e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1385
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1386
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_11

    move v1, v2

    .line 1388
    :goto_9
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1393
    :cond_f
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_13

    .line 1395
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1401
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1402
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_12

    move v1, v2

    .line 1404
    :goto_b
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    .line 1375
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    .line 1386
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 1402
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    .line 1408
    :cond_13
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_14

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x46

    if-ne v1, v2, :cond_15

    .line 1410
    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1414
    :cond_15
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1415
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_6

    .line 1421
    .end local v0    # "index":I
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_7
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 38

    .prologue
    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v30, v0

    .line 1454
    .local v30, "start":I
    const/16 v26, 0x0

    .line 1455
    .local v26, "overflow":Z
    const/16 v25, 0x0

    .line 1456
    .local v25, "number":Ljava/lang/Number;
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1460
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 1461
    const/16 v24, 0x1

    .line 1462
    .local v24, "negative":Z
    const-wide/high16 v20, -0x8000000000000000L

    .line 1464
    .local v20, "limit":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1468
    .local v16, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    const/16 v33, 0x1a

    .line 1470
    :goto_0
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1477
    .end local v16    # "index":I
    :goto_1
    const-wide/16 v22, 0x0

    .line 1478
    .local v22, "longValue":J
    const/16 v28, 0x1

    .line 1480
    .local v28, "precision":I
    :goto_2
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x39

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_6

    .line 1482
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    add-int/lit8 v8, v33, -0x30

    .line 1484
    .local v8, "digit":I
    const/16 v33, 0x12

    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_2

    .line 1485
    const-wide/16 v34, 0xa

    mul-long v34, v34, v22

    int-to-long v0, v8

    move-wide/from16 v36, v0

    sub-long v22, v34, v36

    .line 1502
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1506
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_5

    const/16 v33, 0x1a

    .line 1508
    :goto_4
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1479
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 1468
    .end local v8    # "digit":I
    .end local v22    # "longValue":J
    .end local v28    # "precision":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1470
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto :goto_0

    .line 1473
    .end local v16    # "index":I
    .end local v20    # "limit":J
    .end local v24    # "negative":Z
    :cond_1
    const/16 v24, 0x0

    .line 1474
    .restart local v24    # "negative":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v20    # "limit":J
    goto/16 :goto_1

    .line 1487
    .restart local v8    # "digit":I
    .restart local v22    # "longValue":J
    .restart local v28    # "precision":I
    :cond_2
    const-wide v34, -0xcccccccccccccccL

    cmp-long v33, v22, v34

    if-gez v33, :cond_3

    .line 1488
    const/16 v26, 0x1

    .line 1491
    :cond_3
    const-wide/16 v34, 0xa

    mul-long v22, v22, v34

    .line 1492
    int-to-long v0, v8

    move-wide/from16 v34, v0

    add-long v34, v34, v20

    cmp-long v33, v22, v34

    if-gez v33, :cond_4

    .line 1494
    const/16 v26, 0x1

    .line 1496
    :cond_4
    int-to-long v0, v8

    move-wide/from16 v34, v0

    sub-long v22, v22, v34

    goto :goto_3

    .line 1506
    .restart local v16    # "index":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1508
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto :goto_4

    .line 1514
    .end local v8    # "digit":I
    .end local v16    # "index":I
    :cond_6
    const/16 v18, 0x0

    .local v18, "isDouble":Z
    const/4 v12, 0x0

    .line 1515
    .local v12, "exp":Z
    const/16 v29, 0x0

    .line 1516
    .local v29, "scale":I
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x2e

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 1517
    const/16 v18, 0x1

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1523
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_7

    const/16 v33, 0x1a

    .line 1525
    :goto_5
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1529
    :goto_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x39

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_c

    .line 1531
    add-int/lit8 v29, v29, 0x1

    .line 1532
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    add-int/lit8 v8, v33, -0x30

    .line 1534
    .restart local v8    # "digit":I
    const/16 v33, 0x12

    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 1535
    const-wide/16 v34, 0xa

    mul-long v34, v34, v22

    int-to-long v0, v8

    move-wide/from16 v36, v0

    sub-long v22, v34, v36

    .line 1548
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    const/16 v33, 0x1a

    .line 1557
    :goto_8
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1528
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 1523
    .end local v8    # "digit":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1525
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto :goto_5

    .line 1537
    .restart local v8    # "digit":I
    :cond_8
    const-wide v34, -0xcccccccccccccccL

    cmp-long v33, v22, v34

    if-gez v33, :cond_9

    .line 1538
    const/16 v26, 0x1

    .line 1541
    :cond_9
    const-wide/16 v34, 0xa

    mul-long v22, v22, v34

    .line 1542
    int-to-long v0, v8

    move-wide/from16 v34, v0

    add-long v34, v34, v20

    cmp-long v33, v22, v34

    if-gez v33, :cond_a

    .line 1543
    const/16 v26, 0x1

    .line 1545
    :cond_a
    int-to-long v0, v8

    move-wide/from16 v34, v0

    sub-long v22, v22, v34

    goto :goto_7

    .line 1555
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1557
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto :goto_8

    .line 1561
    .end local v8    # "digit":I
    :cond_c
    if-nez v24, :cond_d

    .line 1562
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 1564
    :cond_d
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x46

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 1565
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1596
    .end local v16    # "index":I
    :cond_f
    :goto_9
    const/16 v32, 0x0

    .line 1597
    .local v32, "type":C
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x65

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x45

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    .line 1599
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1602
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1603
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_19

    const/16 v33, 0x1a

    .line 1605
    :goto_a
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1608
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x2b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x2d

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 1610
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_1a

    const/16 v33, 0x1a

    .line 1616
    :goto_b
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1621
    :cond_12
    :goto_c
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x30

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x39

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_1c

    .line 1623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    add-int/lit8 v16, v33, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-lt v0, v1, :cond_1b

    const/16 v33, 0x1a

    .line 1632
    :goto_d
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_c

    .line 1569
    .end local v16    # "index":I
    .end local v32    # "type":C
    :cond_13
    if-nez v24, :cond_14

    .line 1570
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 1573
    :cond_14
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x4c

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_15

    .line 1574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1576
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto/16 :goto_9

    .line 1577
    :cond_15
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x53

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1580
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-short v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v25

    goto/16 :goto_9

    .line 1581
    :cond_16
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x42

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 1582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1584
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    goto/16 :goto_9

    .line 1585
    :cond_17
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x46

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1588
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_9

    .line 1589
    :cond_18
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 1590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1592
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_9

    .line 1603
    .restart local v16    # "index":I
    .restart local v32    # "type":C
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1605
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto/16 :goto_a

    .line 1614
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1616
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto/16 :goto_b

    .line 1630
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1632
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v33

    goto/16 :goto_d

    .line 1636
    :cond_1c
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x44

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v33, v0

    const/16 v34, 0x46

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    .line 1638
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1639
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1643
    :cond_1e
    const/4 v12, 0x1

    .line 1646
    .end local v16    # "index":I
    :cond_1f
    if-nez v18, :cond_23

    if-nez v12, :cond_23

    .line 1648
    if-eqz v26, :cond_20

    .line 1649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    sub-int v19, v33, v30

    .line 1650
    .local v19, "len":I
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1651
    .local v7, "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1652
    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 1653
    .local v31, "strVal":Ljava/lang/String;
    new-instance v25, Ljava/math/BigInteger;

    .end local v25    # "number":Ljava/lang/Number;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1655
    .end local v7    # "chars":[C
    .end local v19    # "len":I
    .end local v31    # "strVal":Ljava/lang/String;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_20
    if-nez v25, :cond_21

    .line 1656
    const-wide/32 v34, -0x80000000

    cmp-long v33, v22, v34

    if-lez v33, :cond_22

    const-wide/32 v34, 0x7fffffff

    cmp-long v33, v22, v34

    if-gez v33, :cond_22

    .line 1657
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :cond_21
    :goto_e
    move-object/from16 v33, v25

    .line 1752
    :goto_f
    return-object v33

    .line 1659
    :cond_22
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto :goto_e

    .line 1665
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    sub-int v19, v33, v30

    .line 1666
    .restart local v19    # "len":I
    if-eqz v32, :cond_24

    .line 1667
    add-int/lit8 v19, v19, -0x1

    .line 1675
    :cond_24
    if-nez v12, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v33, v0

    sget-object v34, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v34, v0

    and-int v33, v33, v34

    if-eqz v33, :cond_27

    .line 1677
    if-nez v26, :cond_25

    .line 1678
    move-wide/from16 v0, v22

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v25

    :goto_10
    move-object/from16 v33, v25

    .line 1752
    goto :goto_f

    .line 1680
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    add-int v34, v30, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1688
    .restart local v7    # "chars":[C
    :goto_11
    new-instance v25, Ljava/math/BigDecimal;

    .end local v25    # "number":Ljava/lang/Number;
    const/16 v33, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .restart local v25    # "number":Ljava/lang/Number;
    goto :goto_10

    .line 1684
    .end local v7    # "chars":[C
    :cond_26
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1685
    .restart local v7    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    add-int v34, v30, v19

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_11

    .line 1691
    .end local v7    # "chars":[C
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_2a

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    add-int v34, v30, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1700
    .restart local v7    # "chars":[C
    :goto_12
    const/16 v33, 0x9

    move/from16 v0, v19

    move/from16 v1, v33

    if-gt v0, v1, :cond_30

    if-nez v12, :cond_30

    .line 1701
    const/4 v14, 0x0

    .line 1702
    .local v14, "i":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    :try_start_0
    aget-char v6, v7, v14

    .line 1703
    .local v6, "c":C
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-eq v6, v0, :cond_28

    const/16 v33, 0x2b

    move/from16 v0, v33

    if-ne v6, v0, :cond_32

    .line 1704
    :cond_28
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-char v6, v7, v15

    .line 1707
    :goto_13
    add-int/lit8 v17, v6, -0x30

    .line 1708
    .local v17, "intVal":I
    const/16 v27, 0x0

    .line 1709
    .local v27, "power":I
    :goto_14
    move/from16 v0, v19

    if-ge v14, v0, :cond_2c

    .line 1710
    aget-char v6, v7, v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    const/16 v33, 0x2e

    move/from16 v0, v33

    if-ne v6, v0, :cond_2b

    .line 1713
    const/16 v27, 0x1

    .line 1709
    :cond_29
    :goto_15
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 1695
    .end local v6    # "c":C
    .end local v7    # "chars":[C
    .end local v14    # "i":I
    .end local v17    # "intVal":I
    .end local v27    # "power":I
    :cond_2a
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1696
    .restart local v7    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    add-int v34, v30, v19

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_12

    .line 1716
    .restart local v6    # "c":C
    .restart local v14    # "i":I
    .restart local v17    # "intVal":I
    .restart local v27    # "power":I
    :cond_2b
    add-int/lit8 v8, v6, -0x30

    .line 1717
    .restart local v8    # "digit":I
    mul-int/lit8 v33, v17, 0xa

    add-int v17, v33, v8

    .line 1719
    if-eqz v27, :cond_29

    .line 1720
    mul-int/lit8 v27, v27, 0xa

    goto :goto_15

    .line 1724
    .end local v8    # "digit":I
    :cond_2c
    const/16 v33, 0x46

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2e

    .line 1725
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v34, v0

    div-float v13, v33, v34

    .line 1726
    .local v13, "floatVal":F
    if-eqz v24, :cond_2d

    .line 1727
    neg-float v13, v13

    .line 1730
    :cond_2d
    :try_start_1
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    goto/16 :goto_f

    .line 1733
    .end local v13    # "floatVal":F
    :cond_2e
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v10, v34, v36

    .line 1734
    .local v10, "doubleVal":D
    if-eqz v24, :cond_2f

    .line 1735
    neg-double v10, v10

    .line 1738
    :cond_2f
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    goto/16 :goto_f

    .line 1741
    .end local v6    # "c":C
    .end local v10    # "doubleVal":D
    .end local v14    # "i":I
    .end local v17    # "intVal":I
    .end local v27    # "power":I
    :cond_30
    new-instance v31, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1742
    .restart local v31    # "strVal":Ljava/lang/String;
    const/16 v33, 0x46

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_31

    .line 1743
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_10

    .line 1745
    :cond_31
    invoke-static/range {v31 .. v31}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    goto/16 :goto_10

    .line 1747
    .end local v31    # "strVal":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1748
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v33, Lcom/alibaba/fastjson/JSONException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v33

    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v15    # "i":I
    :cond_32
    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_13
.end method

.method public final scanString()V
    .locals 20

    .prologue
    .line 987
    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 988
    .local v14, "quoteChar":C
    const/4 v6, 0x0

    .line 989
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, 0x1

    .line 990
    .local v16, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 991
    .local v5, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 992
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unclosed str, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 998
    :cond_0
    sub-int v4, v5, v16

    .line 999
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 1000
    .local v3, "chars":[C
    :goto_0
    if-lez v4, :cond_2

    add-int/lit8 v17, v4, -0x1

    aget-char v17, v3, v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1003
    const/4 v15, 0x1

    .line 1004
    .local v15, "slashCount":I
    add-int/lit8 v7, v4, -0x2

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 1005
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1006
    add-int/lit8 v15, v15, 0x1

    .line 1004
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1011
    :cond_1
    rem-int/lit8 v17, v15, 0x2

    if-nez v17, :cond_4

    .line 1035
    .end local v7    # "i":I
    .end local v15    # "slashCount":I
    :cond_2
    if-nez v6, :cond_7

    .line 1036
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 1037
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1038
    const/4 v6, 0x1

    .line 1036
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1015
    .restart local v15    # "slashCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1016
    .local v11, "nextIndex":I
    sub-int v12, v11, v5

    .line 1017
    .local v12, "nextLen":I
    add-int v13, v4, v12

    .line 1019
    .local v13, "next_chars_len":I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    .line 1020
    array-length v0, v3

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v10, v17, 0x2

    .line 1021
    .local v10, "newLen":I
    if-ge v10, v13, :cond_5

    .line 1022
    move v10, v13

    .line 1024
    :cond_5
    new-array v9, v10, [C

    .line 1025
    .local v9, "newChars":[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    move-object v3, v9

    .line 1028
    .end local v9    # "newChars":[C
    .end local v10    # "newLen":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1030
    move v4, v13

    .line 1031
    move v5, v11

    .line 1032
    const/4 v6, 0x1

    .line 1033
    goto :goto_0

    .line 1043
    .end local v7    # "i":I
    .end local v11    # "nextIndex":I
    .end local v12    # "nextLen":I
    .end local v13    # "next_chars_len":I
    .end local v15    # "slashCount":I
    :cond_7
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1044
    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1046
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1048
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1051
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1052
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_8

    const/16 v17, 0x1a

    .line 1054
    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1057
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1058
    return-void

    .line 1052
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1054
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_3
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 11
    .param p1, "quoteChar"    # C

    .prologue
    const/16 v10, 0x5c

    const/4 v9, -0x1

    .line 1061
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    .line 1062
    .local v6, "startIndex":I
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1063
    .local v2, "endIndex":I
    if-ne v2, v9, :cond_0

    .line 1064
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unclosed str, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1067
    :cond_0
    const/4 v7, 0x0

    .line 1068
    .local v7, "strVal":Ljava/lang/String;
    sget-boolean v8, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v8, :cond_1

    .line 1069
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1076
    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_3

    .line 1078
    :goto_1
    const/4 v5, 0x0

    .line 1079
    .local v5, "slashCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 1080
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1081
    add-int/lit8 v5, v5, 0x1

    .line 1079
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1071
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_1
    sub-int v1, v2, v6

    .line 1072
    .local v1, "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1073
    .local v0, "chars":[C
    new-instance v7, Ljava/lang/String;

    .end local v7    # "strVal":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v7    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 1086
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_2
    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_4

    .line 1092
    sub-int v1, v2, v6

    .line 1093
    .restart local v1    # "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1094
    .restart local v0    # "chars":[C
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v7

    .line 1097
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_3
    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1100
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1101
    .local v4, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_5

    const/16 v8, 0x1a

    .line 1103
    :goto_3
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1106
    return-object v7

    .line 1089
    .end local v4    # "index":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, p1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1090
    goto :goto_1

    .line 1101
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    .restart local v4    # "index":I
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 703
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 715
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v4, :cond_2

    .line 716
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 740
    :goto_1
    return-object v0

    .line 719
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v5, :cond_3

    .line 720
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 723
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_4

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 725
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 729
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 731
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 735
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    .line 736
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 740
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 22
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quoteChar"    # C

    .prologue
    .line 744
    const/4 v8, 0x0

    .line 746
    .local v8, "hash":I
    const/4 v7, 0x0

    .line 747
    .local v7, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x1

    .line 748
    .local v17, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 749
    .local v6, "endIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 750
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unclosed str, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 756
    :cond_0
    sub-int v5, v6, v17

    .line 757
    .local v5, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    .line 758
    .local v4, "chars":[C
    :goto_0
    if-lez v5, :cond_2

    add-int/lit8 v19, v5, -0x1

    aget-char v19, v4, v19

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 761
    const/16 v16, 0x1

    .line 762
    .local v16, "slashCount":I
    add-int/lit8 v9, v5, -0x2

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    .line 763
    aget-char v19, v4, v9

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 764
    add-int/lit8 v16, v16, 0x1

    .line 762
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 769
    :cond_1
    rem-int/lit8 v19, v16, 0x2

    if-nez v19, :cond_4

    .line 794
    .end local v9    # "i":I
    .end local v16    # "slashCount":I
    :cond_2
    if-nez v7, :cond_a

    .line 795
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v5, :cond_7

    .line 796
    aget-char v3, v4, v9

    .line 797
    .local v3, "ch":C
    mul-int/lit8 v19, v8, 0x1f

    add-int v8, v19, v3

    .line 798
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v3, v0, :cond_3

    .line 799
    const/4 v7, 0x1

    .line 795
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 773
    .end local v3    # "ch":C
    .restart local v16    # "slashCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 774
    .local v13, "nextIndex":I
    sub-int v14, v13, v6

    .line 775
    .local v14, "nextLen":I
    add-int v15, v5, v14

    .line 777
    .local v15, "next_chars_len":I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    .line 778
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v12, v19, 0x2

    .line 779
    .local v12, "newLen":I
    if-ge v12, v15, :cond_5

    .line 780
    move v12, v15

    .line 782
    :cond_5
    new-array v11, v12, [C

    .line 783
    .local v11, "newChars":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v4, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object v4, v11

    .line 786
    .end local v11    # "newChars":[C
    .end local v12    # "newLen":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 788
    move v5, v15

    .line 789
    move v6, v13

    .line 790
    const/4 v7, 0x1

    .line 791
    goto/16 :goto_0

    .line 803
    .end local v13    # "nextIndex":I
    .end local v14    # "nextLen":I
    .end local v15    # "next_chars_len":I
    .end local v16    # "slashCount":I
    :cond_7
    if-eqz v7, :cond_8

    .line 804
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .line 812
    .end local v9    # "i":I
    .local v18, "strVal":Ljava/lang/String;
    :goto_3
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 815
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 816
    .local v10, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_b

    const/16 v19, 0x1a

    .line 818
    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 821
    return-object v18

    .line 804
    .end local v10    # "index":I
    .end local v18    # "strVal":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_8
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    const/16 v19, 0x0

    .line 806
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_9
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 809
    .end local v9    # "i":I
    :cond_a
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "strVal":Ljava/lang/String;
    goto :goto_3

    .line 816
    .restart local v10    # "index":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 818
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    goto :goto_4
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 7
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/4 v4, 0x1

    .line 948
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 950
    .local v1, "first":C
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_0

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 951
    .local v2, "firstFlag":Z
    :goto_0
    if-nez v2, :cond_2

    .line 952
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal identifier : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 950
    .end local v2    # "firstFlag":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 956
    .restart local v2    # "firstFlag":Z
    :cond_2
    move v3, v1

    .line 958
    .local v3, "hash":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 959
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 961
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v0

    .line 963
    .local v0, "ch":C
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 964
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_3

    .line 975
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 976
    const/16 v4, 0x12

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 978
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 979
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 980
    const/4 v4, 0x0

    .line 983
    :goto_2
    return-object v4

    .line 969
    :cond_3
    mul-int/lit8 v4, v3, 0x1f

    add-int v3, v4, v0

    .line 971
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_1

    .line 983
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected setTime(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    .line 4640
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 4641
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 4642
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    .line 4643
    .local v2, "seconds":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4644
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4645
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4646
    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 5
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    .prologue
    .line 4649
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .line 4650
    .local v2, "timeZoneOffset":I
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    .line 4651
    neg-int v2, v2

    .line 4654
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 4655
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4656
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 4657
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4658
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4661
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 919
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_2

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 922
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 945
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 930
    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 931
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_4

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 933
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_3

    .line 934
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 940
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 1270
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v0, v2, :cond_2

    .line 1271
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 1279
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 1289
    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1219
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1220
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    .line 1219
    :goto_0
    return-object v0

    .line 1220
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1236
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1242
    :goto_0
    return-object v0

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1241
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
