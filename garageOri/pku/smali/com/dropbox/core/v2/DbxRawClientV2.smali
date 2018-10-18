.class public abstract Lcom/dropbox/core/v2/DbxRawClientV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/DbxRawClientV2$a;
    }
.end annotation


# static fields
.field public static final USER_AGENT_ID:Ljava/lang/String; = "OfficialDropboxJavaSDKv2"

.field private static final a:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final b:Ljava/util/Random;


# instance fields
.field private final c:Lcom/dropbox/core/DbxRequestConfig;

.field private final d:Lcom/dropbox/core/DbxHost;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/dropbox/core/v2/common/PathRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->b:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRoot;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 74
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    .line 75
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->d:Lcom/dropbox/core/DbxHost;

    .line 76
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->e:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->f:Lcom/dropbox/core/v2/common/PathRoot;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "host"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestConfig"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    return-object p0
.end method

.method private static a(ILcom/dropbox/core/v2/DbxRawClientV2$a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/DbxRawClientV2$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 300
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$a;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$a;->a()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    if-ge v0, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-virtual {v1}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(J)V

    goto :goto_0

    .line 312
    :cond_1
    throw v1
.end method

.method private static a(J)V
    .locals 2

    .line 321
    sget-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->b:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method private static a(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    .line 218
    invoke-static {p1, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static b(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 226
    :try_start_0
    sget-object v1, Lcom/dropbox/core/v2/DbxRawClientV2;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    const/16 v2, 0x7e

    .line 229
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 230
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Impossible"

    .line 233
    invoke-static {p1, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected abstract addAuthHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TErrT;>;)",
            "Lcom/dropbox/core/DbxDownloader<",
            "TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    move-object v8, p0

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p4, :cond_0

    .line 158
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 160
    :cond_0
    iget-object v0, v8, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 161
    iget-object v0, v8, Lcom/dropbox/core/v2/DbxRawClientV2;->f:Lcom/dropbox/core/v2/common/PathRoot;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;

    .line 162
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Dropbox-API-Arg"

    move-object v2, p3

    move-object/from16 v3, p6

    invoke-static {v3, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->b(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Content-Type"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 165
    new-array v4, v0, [B

    .line 167
    iget-object v0, v8, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v9

    new-instance v10, Lcom/dropbox/core/v2/DbxRawClientV2$2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v0, v8, Lcom/dropbox/core/v2/DbxRawClientV2;->e:Ljava/lang/String;

    .line 210
    invoke-static {v10, v0}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->a(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;

    move-result-object v0

    .line 167
    invoke-static {v9, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(ILcom/dropbox/core/v2/DbxRawClientV2$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxDownloader;

    return-object v0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->d:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TErrT;>;)TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 103
    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B

    move-result-object v4

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_0

    .line 106
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 108
    :cond_0
    iget-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->d:Lcom/dropbox/core/DbxHost;

    invoke-virtual {p3}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 110
    iget-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, p3}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 111
    iget-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->f:Lcom/dropbox/core/v2/common/PathRoot;

    invoke-static {v5, p3}, Lcom/dropbox/core/DbxRequestUtil;->addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;

    .line 114
    :cond_1
    new-instance p3, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string p4, "Content-Type"

    const-string p5, "application/json; charset=utf-8"

    invoke-direct {p3, p4, p5}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {p3}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result p3

    new-instance p4, Lcom/dropbox/core/v2/DbxRawClientV2$1;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$1;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->e:Ljava/lang/String;

    .line 143
    invoke-static {p4, p1}, Lcom/dropbox/core/v2/DbxRawClientV2$1;->a(Lcom/dropbox/core/v2/DbxRawClientV2$1;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$a;

    move-result-object p1

    .line 116
    invoke-static {p3, p1}, Lcom/dropbox/core/v2/DbxRawClientV2;->a(ILcom/dropbox/core/v2/DbxRawClientV2$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TArgT;>;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 245
    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_0

    .line 248
    invoke-virtual {p0, p2}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 250
    :cond_0
    iget-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {p2, p4}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 251
    iget-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->f:Lcom/dropbox/core/v2/common/PathRoot;

    invoke-static {p2, p4}, Lcom/dropbox/core/DbxRequestUtil;->addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;

    .line 252
    new-instance p4, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-direct {p4, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    const-string v0, "OfficialDropboxJavaSDKv2"

    invoke-static {p2, p4, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 254
    new-instance p4, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v0, "Dropbox-API-Arg"

    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->b(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, v0, p3}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :try_start_0
    iget-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->c:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {p3}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/dropbox/core/http/HttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 259
    new-instance p2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p2, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method protected abstract withPathRoot(Lcom/dropbox/core/v2/common/PathRoot;)Lcom/dropbox/core/v2/DbxRawClientV2;
.end method
