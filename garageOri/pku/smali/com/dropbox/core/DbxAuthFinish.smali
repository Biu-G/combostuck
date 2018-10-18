.class public final Lcom/dropbox/core/DbxAuthFinish;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AccessTokenReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/DbxAuthFinish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 148
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    .line 165
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish;

    iget-object v1, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already have URL state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlState()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/String;

    return-object v0
.end method
