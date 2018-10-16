.class public final Lcom/dropbox/core/DbxWebAuth$Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/dropbox/core/DbxSessionStore;


# direct methods
.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 679
    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    .line 689
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    .line 690
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    .line 691
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    .line 692
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    .line 693
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .line 670
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/DbxWebAuth$Request;
    .locals 10

    .line 835
    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot specify a state without a redirect URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    :goto_0
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method

.method public withDisableSignup(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withForceReapprove(Ljava/lang/Boolean;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withNoRedirect()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    .line 708
    iput-object v0, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    return-object p0
.end method

.method public withRedirectUri(Ljava/lang/String;Lcom/dropbox/core/DbxSessionStore;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 739
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->a:Ljava/lang/String;

    .line 740
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->f:Lcom/dropbox/core/DbxSessionStore;

    return-object p0

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sessionStore"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "redirectUri"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withRequireRole(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 763
    invoke-static {}, Lcom/dropbox/core/DbxWebAuth$Request;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->a()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UTF-8 encoded state cannot be greater than "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dropbox/core/DbxWebAuth;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
