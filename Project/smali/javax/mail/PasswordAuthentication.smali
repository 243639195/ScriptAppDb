.class public final Ljavax/mail/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljavax/mail/PasswordAuthentication;->userName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Ljavax/mail/PasswordAuthentication;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->userName:Ljava/lang/String;

    return-object v0
.end method
