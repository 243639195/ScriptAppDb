.class public final Lcom/googlecode/tesseract/android/TessBaseAPI$d;
.super Ljava/lang/Object;
.source "TessBaseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private final b:I

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->a:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->b:I

    .line 175
    iput-object p3, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->c:Landroid/graphics/Rect;

    .line 176
    iput-object p4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private a()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->b:I

    return v0
.end method

.method private b()Landroid/graphics/Rect;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method private c()Landroid/graphics/Rect;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$d;->d:Landroid/graphics/Rect;

    return-object v0
.end method
