.class public Lcom/dropbox/core/DbxRequestConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxRequestConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/dropbox/core/http/HttpRequestor;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-ltz p4, :cond_0

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->a:Ljava/lang/String;

    .line 26
    invoke-static {p2}, Lcom/dropbox/core/DbxRequestConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/DbxRequestConfig;->b:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxRequestConfig;->c:Lcom/dropbox/core/http/HttpRequestor;

    .line 28
    iput p4, p0, Lcom/dropbox/core/DbxRequestConfig;->d:I

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxRetries"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "httpRequestor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "clientIdentifier"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/DbxRequestConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "_"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "_"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, "_"

    const/4 v1, 0x3

    .line 216
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 218
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 219
    aget-object v2, p0, v2

    .line 220
    array-length v3, p0

    if-ne v3, v1, :cond_3

    const/4 v1, 0x2

    aget-object p0, p0, v1

    goto :goto_0

    :cond_3
    const-string p0, ""

    .line 222
    :goto_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dropbox/core/DbxRequestConfig;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestConfig;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 2

    if-eqz p0, :cond_0

    .line 177
    new-instance v0, Lcom/dropbox/core/DbxRequestConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "clientIdentifier"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxRequestConfig$Builder;
    .locals 7

    .line 166
    new-instance v6, Lcom/dropbox/core/DbxRequestConfig$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxRequestConfig;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxRequestConfig;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxRequestConfig;->c:Lcom/dropbox/core/http/HttpRequestor;

    iget v4, p0, Lcom/dropbox/core/DbxRequestConfig;->d:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/HttpRequestor;ILcom/dropbox/core/DbxRequestConfig$1;)V

    return-object v6
.end method

.method public getClientIdentifier()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->c:Lcom/dropbox/core/http/HttpRequestor;

    return-object v0
.end method

.method public getMaxRetries()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->d:I

    return v0
.end method

.method public getUserLocale()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/DbxRequestConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRetryEnabled()Z
    .locals 1

    .line 134
    iget v0, p0, Lcom/dropbox/core/DbxRequestConfig;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
