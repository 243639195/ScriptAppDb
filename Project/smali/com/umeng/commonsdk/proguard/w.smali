.class public Lcom/umeng/commonsdk/proguard/w;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/aa;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/w$c;,
        Lcom/umeng/commonsdk/proguard/w$d;,
        Lcom/umeng/commonsdk/proguard/w$a;,
        Lcom/umeng/commonsdk/proguard/w$b;,
        Lcom/umeng/commonsdk/proguard/w$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/aa<",
        "Lcom/umeng/commonsdk/proguard/w;",
        "Lcom/umeng/commonsdk/proguard/w$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/proguard/w$e;",
            "Lcom/umeng/commonsdk/proguard/am;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:J = 0x5d55b037b877db0L

.field private static final m:Lcom/umeng/commonsdk/proguard/be;

.field private static final n:Lcom/umeng/commonsdk/proguard/au;

.field private static final o:Lcom/umeng/commonsdk/proguard/au;

.field private static final p:Lcom/umeng/commonsdk/proguard/au;

.field private static final q:Lcom/umeng/commonsdk/proguard/au;

.field private static final r:Lcom/umeng/commonsdk/proguard/au;

.field private static final s:Lcom/umeng/commonsdk/proguard/au;

.field private static final t:Lcom/umeng/commonsdk/proguard/au;

.field private static final u:Lcom/umeng/commonsdk/proguard/au;

.field private static final v:Lcom/umeng/commonsdk/proguard/au;

.field private static final w:Lcom/umeng/commonsdk/proguard/au;

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/bh;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/bi;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private C:B

.field private D:[Lcom/umeng/commonsdk/proguard/w$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 43
    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    const-string v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->m:Lcom/umeng/commonsdk/proguard/be;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "version"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->n:Lcom/umeng/commonsdk/proguard/au;

    .line 48
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "address"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->o:Lcom/umeng/commonsdk/proguard/au;

    .line 50
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "signature"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->p:Lcom/umeng/commonsdk/proguard/au;

    .line 52
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "serial_num"

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->q:Lcom/umeng/commonsdk/proguard/au;

    .line 54
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "ts_secs"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->r:Lcom/umeng/commonsdk/proguard/au;

    .line 56
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "length"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->s:Lcom/umeng/commonsdk/proguard/au;

    .line 58
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "entity"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->t:Lcom/umeng/commonsdk/proguard/au;

    .line 60
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "guid"

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->u:Lcom/umeng/commonsdk/proguard/au;

    .line 62
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "checksum"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->v:Lcom/umeng/commonsdk/proguard/au;

    .line 64
    new-instance v0, Lcom/umeng/commonsdk/proguard/au;

    const-string v1, "codex"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->w:Lcom/umeng/commonsdk/proguard/au;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->x:Ljava/util/Map;

    .line 71
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bj;

    new-instance v6, Lcom/umeng/commonsdk/proguard/w$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/proguard/w$b;-><init>(Lcom/umeng/commonsdk/proguard/w$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/bk;

    new-instance v6, Lcom/umeng/commonsdk/proguard/w$d;

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/proguard/w$d;-><init>(Lcom/umeng/commonsdk/proguard/w$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/proguard/w$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 183
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->a:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "version"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->b:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "address"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->c:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "signature"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->d:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "serial_num"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->e:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "ts_secs"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->f:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "length"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->g:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "entity"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3, v2}, Lcom/umeng/commonsdk/proguard/an;-><init>(BZ)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->h:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "guid"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->i:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/am;

    const-string v7, "checksum"

    new-instance v8, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v1, Lcom/umeng/commonsdk/proguard/w$e;->j:Lcom/umeng/commonsdk/proguard/w$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/am;

    const-string v3, "codex"

    new-instance v6, Lcom/umeng/commonsdk/proguard/an;

    invoke-direct {v6, v5}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    invoke-direct {v2, v3, v4, v6}, Lcom/umeng/commonsdk/proguard/am;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/an;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/proguard/w;->k:Ljava/util/Map;

    .line 221
    const-class v0, Lcom/umeng/commonsdk/proguard/w;

    sget-object v1, Lcom/umeng/commonsdk/proguard/w;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/am;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x1

    .line 176
    new-array v1, v1, [Lcom/umeng/commonsdk/proguard/w$e;

    sget-object v2, Lcom/umeng/commonsdk/proguard/w$e;->j:Lcom/umeng/commonsdk/proguard/w$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->D:[Lcom/umeng/commonsdk/proguard/w$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/w;)V
    .locals 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x1

    .line 176
    new-array v1, v1, [Lcom/umeng/commonsdk/proguard/w$e;

    sget-object v2, Lcom/umeng/commonsdk/proguard/w$e;->j:Lcom/umeng/commonsdk/proguard/w$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->D:[Lcom/umeng/commonsdk/proguard/w$e;

    .line 248
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/w;->C:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    .line 249
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    .line 258
    :cond_2
    iget v0, p1, Lcom/umeng/commonsdk/proguard/w;->d:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    .line 259
    iget v0, p1, Lcom/umeng/commonsdk/proguard/w;->e:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    .line 260
    iget v0, p1, Lcom/umeng/commonsdk/proguard/w;->f:I

    iput v0, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    .line 261
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/ab;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    .line 265
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    .line 268
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/w;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    .line 271
    :cond_5
    iget p1, p1, Lcom/umeng/commonsdk/proguard/w;->j:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/w;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/w;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    .line 233
    iput p4, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    const/4 p1, 0x1

    .line 234
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->d(Z)V

    .line 235
    iput p5, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    .line 236
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->e(Z)V

    .line 237
    iput p6, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    .line 238
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->f(Z)V

    .line 239
    iput-object p7, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    .line 240
    iput-object p8, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    .line 241
    iput-object p9, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic H()Lcom/umeng/commonsdk/proguard/be;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->m:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->n:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->o:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->p:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->q:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->r:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->s:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->t:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->u:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->v:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/commonsdk/proguard/au;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->w:Lcom/umeng/commonsdk/proguard/au;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    .line 718
    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/w;->read(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/ag; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 721
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ag;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    new-instance v1, Lcom/umeng/commonsdk/proguard/bl;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/bl;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/w;->write(Lcom/umeng/commonsdk/proguard/az;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/ag; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 709
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ag;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    return-object v0
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    return-void
.end method

.method public C()Z
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/umeng/commonsdk/proguard/w;->j:I

    return v0
.end method

.method public E()V
    .locals 2

    .line 557
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public F()Z
    .locals 2

    .line 565
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public G()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 676
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 680
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 690
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 694
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_4
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 698
    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public a()Lcom/umeng/commonsdk/proguard/w;
    .locals 1

    .line 275
    new-instance v0, Lcom/umeng/commonsdk/proguard/w;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/proguard/w;-><init>(Lcom/umeng/commonsdk/proguard/w;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 382
    iput p1, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    const/4 p1, 0x1

    .line 383
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 465
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/w;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 319
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 408
    iput p1, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    const/4 p1, 0x1

    .line 409
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 346
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 434
    iput p1, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    const/4 p1, 0x1

    .line 435
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->f(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 373
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/w;->d(Z)V

    .line 284
    iput v1, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    .line 285
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/w;->e(Z)V

    .line 286
    iput v1, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    .line 287
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/w;->f(Z)V

    .line 288
    iput v1, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    .line 289
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    .line 290
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    .line 292
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/proguard/w;->j(Z)V

    .line 293
    iput v1, p0, Lcom/umeng/commonsdk/proguard/w;->j:I

    return-void
.end method

.method public d(I)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 551
    iput p1, p0, Lcom/umeng/commonsdk/proguard/w;->j:I

    const/4 p1, 0x1

    .line 552
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->j(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .line 400
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public d()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/aa;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->a()Lcom/umeng/commonsdk/proguard/w;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/umeng/commonsdk/proguard/w$e;
    .locals 0

    .line 573
    invoke-static {p1}, Lcom/umeng/commonsdk/proguard/w$e;->a(I)Lcom/umeng/commonsdk/proguard/w$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/w;
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 426
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 452
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/ah;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/w;->e(I)Lcom/umeng/commonsdk/proguard/w$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 488
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 515
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 542
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 569
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/x;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public j()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    return v0
.end method

.method public l()V
    .locals 2

    .line 388
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public m()Z
    .locals 2

    .line 396
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    return v0
.end method

.method public o()V
    .locals 2

    .line 414
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public p()Z
    .locals 2

    .line 422
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    return v0
.end method

.method public r()V
    .locals 2

    .line 440
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/az;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->b(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method

.method public s()Z
    .locals 2

    .line 448
    iget-byte v0, p0, Lcom/umeng/commonsdk/proguard/w;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()[B
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/ab;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/w;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/proguard/w;

    .line 457
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address:"

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature:"

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial_num:"

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget v1, p0, Lcom/umeng/commonsdk/proguard/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts_secs:"

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    iget v1, p0, Lcom/umeng/commonsdk/proguard/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget v1, p0, Lcom/umeng/commonsdk/proguard/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity:"

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 637
    :cond_3
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/ab;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :goto_3
    const-string v1, ", "

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 646
    :cond_4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 655
    :cond_5
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/w;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :goto_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/w;->F()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget v1, p0, Lcom/umeng/commonsdk/proguard/w;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ")"

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w()Z
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/az;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/umeng/commonsdk/proguard/w;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/az;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/bi;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/bi;->b()Lcom/umeng/commonsdk/proguard/bh;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/bh;->a(Lcom/umeng/commonsdk/proguard/az;Lcom/umeng/commonsdk/proguard/aa;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    return-void
.end method

.method public z()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/w;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
