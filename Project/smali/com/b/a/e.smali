.class public final Lcom/b/a/e;
.super Ljava/lang/Object;
.source "CacheControl.java"


# static fields
.field public static final a:Lcom/b/a/e;

.field public static final b:Lcom/b/a/e;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/b/a/f;

    invoke-direct {v0}, Lcom/b/a/f;-><init>()V

    const/4 v1, 0x1

    .line 1276
    iput-boolean v1, v0, Lcom/b/a/f;->a:Z

    .line 18
    invoke-virtual {v0}, Lcom/b/a/f;->a()Lcom/b/a/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/e;->a:Lcom/b/a/e;

    .line 25
    new-instance v0, Lcom/b/a/f;

    invoke-direct {v0}, Lcom/b/a/f;-><init>()V

    .line 1340
    iput-boolean v1, v0, Lcom/b/a/f;->f:Z

    .line 26
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x7fffffff

    .line 2311
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v1, v4

    .line 2312
    :goto_0
    iput v1, v0, Lcom/b/a/f;->d:I

    .line 28
    invoke-virtual {v0}, Lcom/b/a/f;->a()Lcom/b/a/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/e;->b:Lcom/b/a/e;

    return-void
.end method

.method constructor <init>(Lcom/b/a/f;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-boolean v0, p1, Lcom/b/a/f;->a:Z

    iput-boolean v0, p0, Lcom/b/a/e;->d:Z

    .line 63
    iget-boolean v0, p1, Lcom/b/a/f;->b:Z

    iput-boolean v0, p0, Lcom/b/a/e;->e:Z

    .line 64
    iget v0, p1, Lcom/b/a/f;->c:I

    iput v0, p0, Lcom/b/a/e;->f:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/b/a/e;->g:I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/b/a/e;->h:Z

    .line 67
    iput-boolean v0, p0, Lcom/b/a/e;->i:Z

    .line 68
    iput-boolean v0, p0, Lcom/b/a/e;->j:Z

    .line 69
    iget v0, p1, Lcom/b/a/f;->d:I

    iput v0, p0, Lcom/b/a/e;->k:I

    .line 70
    iget v0, p1, Lcom/b/a/f;->e:I

    iput v0, p0, Lcom/b/a/e;->l:I

    .line 71
    iget-boolean v0, p1, Lcom/b/a/f;->f:Z

    iput-boolean v0, p0, Lcom/b/a/e;->m:Z

    .line 72
    iget-boolean p1, p1, Lcom/b/a/f;->g:Z

    iput-boolean p1, p0, Lcom/b/a/e;->n:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/b/a/e;->d:Z

    .line 48
    iput-boolean p2, p0, Lcom/b/a/e;->e:Z

    .line 49
    iput p3, p0, Lcom/b/a/e;->f:I

    .line 50
    iput p4, p0, Lcom/b/a/e;->g:I

    .line 51
    iput-boolean p5, p0, Lcom/b/a/e;->h:Z

    .line 52
    iput-boolean p6, p0, Lcom/b/a/e;->i:Z

    .line 53
    iput-boolean p7, p0, Lcom/b/a/e;->j:Z

    .line 54
    iput p8, p0, Lcom/b/a/e;->k:I

    .line 55
    iput p9, p0, Lcom/b/a/e;->l:I

    .line 56
    iput-boolean p10, p0, Lcom/b/a/e;->m:Z

    .line 57
    iput-boolean p11, p0, Lcom/b/a/e;->n:Z

    .line 58
    iput-object p12, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/b/a/aa;)Lcom/b/a/e;
    .locals 23

    move-object/from16 v0, p0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/b/a/aa;->a()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_11

    .line 161
    invoke-virtual {v0, v6}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-virtual {v0, v6}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cache-Control"

    .line 164
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v8, :cond_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    move-object v8, v2

    goto :goto_2

    :cond_1
    const-string v4, "Pragma"

    .line 171
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    .line 179
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_10

    const-string v9, "=,;"

    .line 181
    invoke-static {v2, v4, v9}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    .line 182
    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v9, v3, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 190
    invoke-static {v2, v9}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;I)I

    move-result v3

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x22

    if-ne v5, v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    const-string v5, "\""

    .line 196
    invoke-static {v2, v3, v5}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 197
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    const/16 v21, 0x1

    const-string v5, ",;"

    .line 203
    invoke-static {v2, v3, v5}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 204
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v21, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    const/4 v3, 0x0

    :goto_5
    const-string v9, "no-cache"

    .line 208
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const-string v9, "no-store"

    .line 210
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v4, v5

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const-string v9, "max-age"

    .line 212
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, -0x1

    .line 213
    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v12

    :cond_7
    :goto_6
    move v4, v5

    goto/16 :goto_3

    :cond_8
    const-string v9, "s-maxage"

    .line 214
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, -0x1

    .line 215
    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v13

    goto :goto_6

    :cond_9
    const-string v9, "private"

    .line 216
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v4, v5

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_a
    const-string v9, "public"

    .line 218
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v4, v5

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_b
    const-string v9, "must-revalidate"

    .line 220
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v4, v5

    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_c
    const-string v9, "max-stale"

    .line 222
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const v4, 0x7fffffff

    .line 223
    invoke-static {v3, v4}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v17

    goto :goto_6

    :cond_d
    const-string v9, "min-fresh"

    .line 224
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, -0x1

    .line 225
    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v18

    goto :goto_6

    :cond_e
    const/4 v9, -0x1

    const-string v3, "only-if-cached"

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v4, v5

    const/16 v19, 0x1

    goto/16 :goto_3

    :cond_f
    const-string v3, "no-transform"

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v20, 0x1

    goto :goto_6

    :cond_10
    const/4 v9, -0x1

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    if-nez v7, :cond_12

    const/16 v21, 0x0

    goto :goto_7

    :cond_12
    move-object/from16 v21, v8

    .line 237
    :goto_7
    new-instance v0, Lcom/b/a/e;

    move-object v9, v0

    invoke-direct/range {v9 .. v21}, Lcom/b/a/e;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/b/a/e;->d:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/b/a/e;->e:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/b/a/e;->f:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/b/a/e;->h:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/b/a/e;->i:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/b/a/e;->j:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/b/a/e;->k:I

    return v0
.end method

.method public final h()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/b/a/e;->l:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/b/a/e;->m:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1248
    iget-boolean v1, p0, Lcom/b/a/e;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_1
    iget-boolean v1, p0, Lcom/b/a/e;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_2
    iget v1, p0, Lcom/b/a/e;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    :cond_3
    iget v1, p0, Lcom/b/a/e;->g:I

    if-eq v1, v2, :cond_4

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_4
    iget-boolean v1, p0, Lcom/b/a/e;->h:Z

    if-eqz v1, :cond_5

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :cond_5
    iget-boolean v1, p0, Lcom/b/a/e;->i:Z

    if-eqz v1, :cond_6

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_6
    iget-boolean v1, p0, Lcom/b/a/e;->j:Z

    if-eqz v1, :cond_7

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    :cond_7
    iget v1, p0, Lcom/b/a/e;->k:I

    if-eq v1, v2, :cond_8

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :cond_8
    iget v1, p0, Lcom/b/a/e;->l:I

    if-eq v1, v2, :cond_9

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :cond_9
    iget-boolean v1, p0, Lcom/b/a/e;->m:Z

    if-eqz v1, :cond_a

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_a
    iget-boolean v1, p0, Lcom/b/a/e;->n:Z

    if-eqz v1, :cond_b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v0, ""

    goto :goto_0

    .line 1260
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    iput-object v0, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
