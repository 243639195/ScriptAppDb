.class public final Lcom/b/a/a/d/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lcom/b/a/a/c/c;


# instance fields
.field final a:Lcom/b/a/ai;

.field final b:Lcom/b/a/a/b/g;

.field final c:Lcom/b/b/h;

.field final d:Lcom/b/b/g;

.field e:I


# direct methods
.method public constructor <init>(Lcom/b/a/ai;Lcom/b/a/a/b/g;Lcom/b/b/h;Lcom/b/b/g;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    .line 89
    iput-object p1, p0, Lcom/b/a/a/d/a;->a:Lcom/b/a/ai;

    .line 90
    iput-object p2, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    .line 91
    iput-object p3, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    .line 92
    iput-object p4, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    return-void
.end method

.method static a(Lcom/b/b/k;)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/b/b/k;->a()Lcom/b/b/y;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/b/b/y;->b:Lcom/b/b/y;

    invoke-virtual {p0, v1}, Lcom/b/b/k;->a(Lcom/b/b/y;)Lcom/b/b/k;

    .line 261
    invoke-virtual {v0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    .line 262
    invoke-virtual {v0}, Lcom/b/b/y;->d_()Lcom/b/b/y;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/b/a/at;
    .locals 3

    .line 184
    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 185
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/l;->a(Ljava/lang/String;)Lcom/b/a/a/c/l;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/b/a/at;

    invoke-direct {v1}, Lcom/b/a/at;-><init>()V

    iget-object v2, v0, Lcom/b/a/a/c/l;->a:Lcom/b/a/al;

    .line 192
    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Lcom/b/a/al;)Lcom/b/a/at;

    move-result-object v1

    iget v2, v0, Lcom/b/a/a/c/l;->b:I

    .line 193
    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(I)Lcom/b/a/at;

    move-result-object v1

    iget-object v2, v0, Lcom/b/a/a/c/l;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Ljava/lang/String;)Lcom/b/a/at;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/b/a/a/d/a;->c()Lcom/b/a/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/at;->a(Lcom/b/a/aa;)Lcom/b/a/at;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 197
    iget p1, v0, Lcom/b/a/a/c/l;->b:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p1, 0x4

    .line 201
    iput p1, p0, Lcom/b/a/a/d/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 205
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 207
    throw v0
.end method

.method public final a(Lcom/b/a/as;)Lcom/b/a/au;
    .locals 7

    .line 2137
    invoke-static {p1}, Lcom/b/a/a/c/f;->b(Lcom/b/a/as;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2138
    invoke-virtual {p0, v0, v1}, Lcom/b/a/a/d/a;->a(J)Lcom/b/b/x;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    .line 2141
    invoke-virtual {p1, v1}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    .line 2142
    invoke-virtual {p1}, Lcom/b/a/as;->a()Lcom/b/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    .line 2240
    iget v3, p0, Lcom/b/a/a/d/a;->e:I

    if-eq v3, v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2241
    :cond_1
    iput v1, p0, Lcom/b/a/a/d/a;->e:I

    .line 2242
    new-instance v1, Lcom/b/a/a/d/d;

    invoke-direct {v1, p0, v0}, Lcom/b/a/a/d/d;-><init>(Lcom/b/a/a/d/a;Lcom/b/a/ac;)V

    move-object v0, v1

    goto :goto_0

    .line 2145
    :cond_2
    invoke-static {p1}, Lcom/b/a/a/c/f;->a(Lcom/b/a/as;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    .line 2147
    invoke-virtual {p0, v3, v4}, Lcom/b/a/a/d/a;->a(J)Lcom/b/b/x;

    move-result-object v0

    goto :goto_0

    .line 2246
    :cond_3
    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    if-eq v0, v2, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2247
    :cond_4
    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    if-nez v0, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2248
    :cond_5
    iput v1, p0, Lcom/b/a/a/d/a;->e:I

    .line 2249
    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/a/b/g;->d()V

    .line 2250
    new-instance v0, Lcom/b/a/a/d/g;

    invoke-direct {v0, p0}, Lcom/b/a/a/d/g;-><init>(Lcom/b/a/a/d/a;)V

    .line 133
    :goto_0
    new-instance v1, Lcom/b/a/a/c/i;

    invoke-virtual {p1}, Lcom/b/a/as;->d()Lcom/b/a/aa;

    move-result-object p1

    invoke-static {v0}, Lcom/b/b/n;->a(Lcom/b/b/x;)Lcom/b/b/h;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/b/a/a/c/i;-><init>(Lcom/b/a/aa;Lcom/b/b/h;)V

    return-object v1
.end method

.method public final a(Lcom/b/a/ao;J)Lcom/b/b/w;
    .locals 4

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    .line 96
    invoke-virtual {p1, v1}, Lcom/b/a/ao;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1222
    iget p1, p0, Lcom/b/a/a/d/a;->e:I

    if-eq p1, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1223
    :cond_0
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    .line 1224
    new-instance p1, Lcom/b/a/a/d/c;

    invoke-direct {p1, p0}, Lcom/b/a/a/d/c;-><init>(Lcom/b/a/a/d/a;)V

    return-object p1

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_3

    .line 1228
    iget p1, p0, Lcom/b/a/a/d/a;->e:I

    if-eq p1, v1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "state: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1229
    :cond_2
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    .line 1230
    new-instance p1, Lcom/b/a/a/d/e;

    invoke-direct {p1, p0, p2, p3}, Lcom/b/a/a/d/e;-><init>(Lcom/b/a/a/d/a;J)V

    return-object p1

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)Lcom/b/b/x;
    .locals 2

    .line 234
    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x5

    .line 235
    iput v0, p0, Lcom/b/a/a/d/a;->e:I

    .line 236
    new-instance v0, Lcom/b/a/a/d/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/d/f;-><init>(Lcom/b/a/a/d/a;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V

    return-void
.end method

.method public final a(Lcom/b/a/aa;Ljava/lang/String;)V
    .locals 3

    .line 171
    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/b/a/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0, p2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p1}, Lcom/b/a/aa;->a()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-virtual {p1, p2}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    const-string v2, ": "

    .line 175
    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    .line 176
    invoke-virtual {p1, p2}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    move-result-object v1

    const-string v2, "\r\n"

    .line 177
    invoke-interface {v1, v2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    const-string p2, "\r\n"

    invoke-interface {p1, p2}, Lcom/b/b/g;->b(Ljava/lang/String;)Lcom/b/b/g;

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lcom/b/a/a/d/a;->e:I

    return-void
.end method

.method public final a(Lcom/b/a/ao;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/b/a/a/d/a;->b:Lcom/b/a/a/b/g;

    .line 127
    invoke-virtual {v0}, Lcom/b/a/a/b/g;->b()Lcom/b/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/c;->a()Lcom/b/a/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aw;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 2033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2034
    invoke-virtual {p1}, Lcom/b/a/ao;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 2035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual {p1}, Lcom/b/a/ao;->g()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2038
    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2040
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/ao;->a()Lcom/b/a/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/c/j;->a(Lcom/b/a/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 2043
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lcom/b/a/ao;->c()Lcom/b/a/aa;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/d/a;->a(Lcom/b/a/aa;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/b/a/a/d/a;->d:Lcom/b/b/g;

    invoke-interface {v0}, Lcom/b/b/g;->flush()V

    return-void
.end method

.method public final c()Lcom/b/a/aa;
    .locals 3

    .line 213
    new-instance v0, Lcom/b/a/ab;

    invoke-direct {v0}, Lcom/b/a/ab;-><init>()V

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/b/a/a/d/a;->c:Lcom/b/b/h;

    invoke-interface {v1}, Lcom/b/b/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/b/a/a/a;->a:Lcom/b/a/a/a;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/a;->a(Lcom/b/a/ab;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/ab;->a()Lcom/b/a/aa;

    move-result-object v0

    return-object v0
.end method
