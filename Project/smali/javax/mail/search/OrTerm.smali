.class public final Ljavax/mail/search/OrTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OrTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x4aab7f3a24a275d8L


# instance fields
.field protected terms:[Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    .line 71
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    iget-object p1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    return-void
.end method

.method public constructor <init>([Ljavax/mail/search/SearchTerm;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 81
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/search/SearchTerm;

    iput-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    const/4 v0, 0x0

    .line 82
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 115
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 117
    :cond_0
    check-cast p1, Ljavax/mail/search/OrTerm;

    .line 118
    iget-object v0, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v0, v0

    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_2
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    iget-object v3, p1, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getTerms()[Ljavax/mail/search/SearchTerm;
    .locals 1

    .line 90
    iget-object v0, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, [Ljavax/mail/search/SearchTerm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final match(Ljavax/mail/Message;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return v0

    .line 106
    :cond_0
    iget-object v2, p0, Ljavax/mail/search/OrTerm;->terms:[Ljavax/mail/search/SearchTerm;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
