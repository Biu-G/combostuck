.class public final Lcom/dropbox/core/DbxWebAuth$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Boolean;

.field private final f:Ljava/lang/Boolean;

.field private final g:Lcom/dropbox/core/DbxSessionStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 620
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    .line 637
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    .line 638
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/String;

    .line 639
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    .line 640
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Ljava/lang/Boolean;

    .line 641
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/DbxSessionStore;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V
    .locals 0

    .line 619
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    .line 619
    sget-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/DbxSessionStore;

    return-object p0
.end method

.method static synthetic f(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    .line 664
    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 9

    .line 650
    new-instance v8, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/DbxSessionStore;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/DbxWebAuth$1;)V

    return-object v8
.end method
