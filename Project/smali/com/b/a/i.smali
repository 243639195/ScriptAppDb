.class public final Lcom/b/a/i;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# static fields
.field public static final a:Lcom/b/a/i;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/b/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/a/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Lcom/b/a/j;

    invoke-direct {v0}, Lcom/b/a/j;-><init>()V

    invoke-virtual {v0}, Lcom/b/a/j;->a()Lcom/b/a/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/b/a/a/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/b/a/k;",
            ">;",
            "Lcom/b/a/a/h/b;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    .line 135
    iput-object p2, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;
    .locals 0

    .line 252
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/i;->d()Lcom/b/b/i;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2

    .line 241
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 242
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sha256/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/b/a/i;->a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/b/a/a/h/b;)Lcom/b/a/i;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-static {v0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/b/a/i;

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/b/a/i;-><init>(Ljava/util/Set;Lcom/b/a/a/h/b;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1218
    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/k;

    .line 1287
    iget-object v3, v2, Lcom/b/a/k;->a:Ljava/lang/String;

    const-string v4, "*."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    .line 1288
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x0

    add-int/lit8 v6, v3, 0x1

    .line 1289
    iget-object v7, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v3, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    .line 1290
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    move-object v4, p1

    .line 1289
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    goto :goto_1

    .line 1293
    :cond_1
    iget-object v3, v2, Lcom/b/a/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    .line 1220
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-virtual {v1, p2, p1}, Lcom/b/a/a/h/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 168
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_c

    .line 169
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_b

    .line 176
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/b/a/k;

    .line 177
    iget-object v10, v9, Lcom/b/a/k;->c:Ljava/lang/String;

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v7, :cond_6

    .line 178
    invoke-static {v4}, Lcom/b/a/i;->a(Ljava/security/cert/X509Certificate;)Lcom/b/b/i;

    move-result-object v7

    .line 179
    :cond_6
    iget-object v9, v9, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v9, v7}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    return-void

    .line 180
    :cond_7
    iget-object v10, v9, Lcom/b/a/k;->c:Ljava/lang/String;

    const-string v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v8, :cond_8

    .line 2248
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lcom/b/b/i;->a([B)Lcom/b/b/i;

    move-result-object v8

    invoke-virtual {v8}, Lcom/b/b/i;->c()Lcom/b/b/i;

    move-result-object v8

    .line 182
    :cond_8
    iget-object v9, v9, Lcom/b/a/k;->d:Lcom/b/b/i;

    invoke-virtual {v9, v8}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    return-void

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 184
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 190
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Certificate pinning failure!\n  Peer certificate chain:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_d

    .line 194
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    const-string v6, "\n    "

    .line 195
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/b/a/i;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 196
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    const-string p2, "\n  Pinned certificates for "

    .line 198
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_5
    if-ge v2, p1, :cond_e

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/b/a/k;

    const-string v3, "\n    "

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 203
    :cond_e
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Lcom/b/a/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    check-cast p1, Lcom/b/a/i;

    iget-object v2, p1, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    .line 141
    invoke-static {v1, v2}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/b/a/i;->b:Ljava/util/Set;

    .line 142
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/i;->c:Lcom/b/a/a/h/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v1, p0, Lcom/b/a/i;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
