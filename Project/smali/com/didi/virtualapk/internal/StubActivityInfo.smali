.class Lcom/didi/virtualapk/internal/StubActivityInfo;
.super Ljava/lang/Object;
.source "StubActivityInfo.java"


# static fields
.field public static final MAX_COUNT_SINGLEINSTANCE:I = 0x8

.field public static final MAX_COUNT_SINGLETASK:I = 0x8

.field public static final MAX_COUNT_SINGLETOP:I = 0x8

.field public static final MAX_COUNT_STANDARD:I = 0x1

.field public static final STUB_ACTIVITY_SINGLEINSTANCE:Ljava/lang/String; = "%s.D$%d"

.field public static final STUB_ACTIVITY_SINGLETASK:Ljava/lang/String; = "%s.C$%d"

.field public static final STUB_ACTIVITY_SINGLETOP:Ljava/lang/String; = "%s.B$%d"

.field public static final STUB_ACTIVITY_STANDARD:Ljava/lang/String; = "%s.A$%d"

.field public static final corePackage:Ljava/lang/String; = "com.didi.virtualapk.core"


# instance fields
.field private mCachedStubActivity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usedSingleInstanceStubActivity:I

.field public usedSingleTaskStubActivity:I

.field public usedSingleTopStubActivity:I

.field public final usedStandardStubActivity:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedStandardStubActivity:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    .line 43
    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    .line 44
    iput v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getStubActivity(Ljava/lang/String;ILandroid/content/res/Resources$Theme;)Ljava/lang/String;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    .line 54
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 59
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const-string p3, "VA.StubActivityInfo"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStubActivity, is transparent theme ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "%s.A$%d"

    .line 63
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "com.didi.virtualapk.core"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 83
    :pswitch_0
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    const-string p2, "%s.D$%d"

    .line 84
    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "com.didi.virtualapk.core"

    aput-object v0, p3, v1

    iget v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleInstanceStubActivity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 78
    :pswitch_1
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    const-string p2, "%s.C$%d"

    .line 79
    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "com.didi.virtualapk.core"

    aput-object v0, p3, v1

    iget v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTaskStubActivity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 73
    :pswitch_2
    iget p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    rem-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v4

    iput p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    const-string p2, "%s.B$%d"

    .line 74
    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "com.didi.virtualapk.core"

    aput-object v0, p3, v1

    iget v0, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->usedSingleTopStubActivity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :pswitch_3
    const-string p2, "%s.A$%d"

    .line 66
    new-array p3, v0, [Ljava/lang/Object;

    const-string v3, "com.didi.virtualapk.core"

    aput-object v3, p3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz v2, :cond_1

    const-string p2, "%s.A$%d"

    .line 68
    new-array p3, v0, [Ljava/lang/Object;

    const-string v2, "com.didi.virtualapk.core"

    aput-object v2, p3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 91
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/didi/virtualapk/internal/StubActivityInfo;->mCachedStubActivity:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1010058
        0x1010054
    .end array-data
.end method
