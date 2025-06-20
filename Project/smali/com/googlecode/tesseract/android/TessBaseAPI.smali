.class public Lcom/googlecode/tesseract/android/TessBaseAPI;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$d;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$c;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$a;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "tessedit_char_whitelist"

.field public static final c:Ljava/lang/String; = "tessedit_char_blacklist"

.field public static final d:Ljava/lang/String; = "save_blob_choices"

.field public static final e:Ljava/lang/String; = "T"

.field public static final f:Ljava/lang/String; = "F"

.field public static final g:I = 0x0

.field public static final h:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final j:I = 0x3


# instance fields
.field a:J

.field private k:Lcom/googlecode/tesseract/android/TessBaseAPI$c;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpgt"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "pngt"

    .line 45
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "lept"

    .line 46
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tess"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    .line 222
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create TessBaseApi object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    return-void
.end method

.method private constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI$c;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->k:Lcom/googlecode/tesseract/android/TessBaseAPI$c;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 430
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 431
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 433
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetPageSegMode(JI)V

    return-void
.end method

.method private a(IIII)V
    .locals 7

    .line 474
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 477
    :cond_0
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 7

    .line 457
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 458
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 460
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1474
    iget-boolean p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz p1, :cond_1

    .line 1475
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1477
    :cond_1
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void
.end method

.method private a(Lcom/googlecode/leptonica/android/Pix;)V
    .locals 4

    .line 536
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 537
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 539
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .line 490
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 491
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 493
    :cond_0
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->a(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-nez p1, :cond_1

    .line 496
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read image file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_1
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 501
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 743
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 744
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 746
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetInputName(JLjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 443
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 444
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 446
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetDebug(JZ)V

    return-void
.end method

.method private a([BIIII)V
    .locals 8

    .line 556
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 557
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 559
    :cond_0
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImageBytes(J[BIIII)V

    return-void
.end method

.method private a(Lcom/googlecode/leptonica/android/Pix;Ljava/lang/String;Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 8

    .line 884
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v3

    .line 885
    invoke-virtual {p3}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a()J

    move-result-wide v6

    move-object v0, p0

    move-object v5, p2

    .line 884
    invoke-direct/range {v0 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeAddPageToDocument(JJLjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    .line 859
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a()J

    move-result-wide v0

    const-string p1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/googlecode/tesseract/android/TessPdfRenderer;Ljava/lang/String;)Z
    .locals 2

    .line 847
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 346
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetInitLanguagesAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 730
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 731
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 733
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetHOCRText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 755
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 756
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 758
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetOutputName(JLjava/lang/String;)V

    return-void
.end method

.method private b(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    .line 870
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEndDocument(J)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    if-nez p1, :cond_0

    .line 301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 305
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path does not exist!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "\\+"

    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    const-string v5, "~"

    .line 316
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 317
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".traineddata"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 320
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Data file not found at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_5
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    const/4 v5, 0x3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 328
    iput-boolean v6, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    :cond_6
    return p1

    .line 311
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must contain subfolder tessdata!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    .line 786
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 787
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 789
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetBoxText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 356
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClear(J)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 770
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 771
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 773
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeReadConfigFile(JLjava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 401
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 402
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 404
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private d()V
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-nez v0, :cond_0

    .line 371
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEnd(J)V

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 416
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetPageSegMode(J)I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 2

    .line 586
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 589
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeMeanConfidence(J)I

    move-result v0

    return v0
.end method

.method private g()[I
    .locals 2

    .line 601
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 604
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeWordConfidences(J)[I

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 608
    new-array v0, v0, [I

    :cond_1
    return-object v0
.end method

.method private h()Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    .line 622
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 625
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetThresholdedImage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0
.end method

.method private i()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 636
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 639
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetRegions(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0
.end method

.method private j()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 652
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 655
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetTextlines(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0
.end method

.method private k()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 667
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 670
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetStrips(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0
.end method

.method private l()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 681
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 684
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetWords(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0
.end method

.method private m()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    .line 697
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 700
    :cond_0
    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetConnectedComponents(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0
.end method

.method private n()Lcom/googlecode/tesseract/android/ResultIterator;
    .locals 5

    .line 710
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 713
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetResultIterator(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 719
    :cond_1
    new-instance v2, Lcom/googlecode/tesseract/android/ResultIterator;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;-><init>(J)V

    return-object v2
.end method

.method private native nativeAddPageToDocument(JJLjava/lang/String;J)Z
.end method

.method private native nativeBeginDocument(JLjava/lang/String;)Z
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeEnd(J)V
.end method

.method private native nativeEndDocument(J)Z
.end method

.method private native nativeGetBoxText(JI)Ljava/lang/String;
.end method

.method private native nativeGetConnectedComponents(J)J
.end method

.method private native nativeGetHOCRText(JI)Ljava/lang/String;
.end method

.method private native nativeGetInitLanguagesAsString(J)Ljava/lang/String;
.end method

.method private native nativeGetPageSegMode(J)I
.end method

.method private native nativeGetRegions(J)J
.end method

.method private native nativeGetResultIterator(J)J
.end method

.method private native nativeGetStrips(J)J
.end method

.method private native nativeGetTextlines(J)J
.end method

.method private native nativeGetThresholdedImage(J)J
.end method

.method private native nativeGetUTF8Text(J)Ljava/lang/String;
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWords(J)J
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native nativeMeanConfidence(J)I
.end method

.method private native nativeReadConfigFile(JLjava/lang/String;)V
.end method

.method private native nativeSetDebug(JZ)V
.end method

.method private native nativeSetImageBytes(J[BIIII)V
.end method

.method private native nativeSetImagePix(JJ)V
.end method

.method private native nativeSetInputName(JLjava/lang/String;)V
.end method

.method private native nativeSetOutputName(JLjava/lang/String;)V
.end method

.method private native nativeSetPageSegMode(JI)V
.end method

.method private native nativeSetRectangle(JIIII)V
.end method

.method private native nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeWordConfidences(J)[I
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .line 798
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 2

    .line 805
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 808
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeStop(J)V

    return-void
.end method

.method private q()J
    .locals 2

    .line 889
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 575
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetUTF8Text(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 514
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    if-eqz v0, :cond_0

    .line 515
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 517
    :cond_0
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->a(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-nez p1, :cond_1

    .line 520
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read bitmap"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_1
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 525
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    if-nez p1, :cond_0

    .line 1301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1302
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 1305
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path does not exist!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1309
    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "\\+"

    .line 1315
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    const-string v5, "~"

    .line 1316
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1317
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".traineddata"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1320
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Data file not found at "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    :cond_5
    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->a:J

    const/4 v5, 0x3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1328
    iput-boolean v6, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->l:Z

    :cond_6
    return p1

    .line 1311
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must contain subfolder tessdata!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onProgressValues(IIIIIIIII)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->k:Lcom/googlecode/tesseract/android/TessBaseAPI$c;

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Landroid/graphics/Rect;

    sub-int p4, p8, p4

    sub-int p5, p8, p5

    invoke-direct {v0, p2, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 830
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p9, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 832
    new-instance p3, Lcom/googlecode/tesseract/android/TessBaseAPI$d;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI$d;-><init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
