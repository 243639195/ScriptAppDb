.class final Lcom/b/a/k;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lcom/b/b/i;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 297
    instance-of v0, p1, Lcom/b/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/k;->a:Ljava/lang/String;

    check-cast p1, Lcom/b/a/k;

    iget-object v1, p1, Lcom/b/a/k;->a:Ljava/lang/String;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/k;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/b/a/k;->c:Ljava/lang/String;

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/k;->d:Lcom/b/b/i;

    iget-object p1, p1, Lcom/b/a/k;->d:Lcom/b/b/i;

    .line 300
    invoke-virtual {v0, p1}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    iget-object v1, p0, Lcom/b/a/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v1}, Lcom/b/b/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v1}, Lcom/b/b/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
