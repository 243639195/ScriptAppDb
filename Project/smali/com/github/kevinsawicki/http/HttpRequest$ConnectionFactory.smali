.class public interface abstract Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionFactory"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 387
    new-instance v0, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1;

    invoke-direct {v0}, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory$1;-><init>()V

    sput-object v0, Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/github/kevinsawicki/http/HttpRequest$ConnectionFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
