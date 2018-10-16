.class final Lcom/dropbox/core/v1/DbxClientV1$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/dropbox/core/v1/DbxClientV1;

.field private final c:[B

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1332
    const-class v0, Lcom/dropbox/core/v1/DbxClientV1;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$a;->a:Z

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;I)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->b:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    .line 1335
    iput p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    .line 1341
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    .line 1342
    iput p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;ILcom/dropbox/core/v1/DbxClientV1$1;)V
    .locals 0

    .line 1332
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1$a;-><init>(Lcom/dropbox/core/v1/DbxClientV1;I)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v1/DbxClientV1$a;)Ljava/lang/String;
    .locals 0

    .line 1332
    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1361
    sget-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$a;->a:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1362
    :cond_1
    :goto_0
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 1363
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$a;->b()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/dropbox/core/v1/DbxClientV1$a;)I
    .locals 0

    .line 1332
    iget p0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    return p0
.end method

.method private b()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1370
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    if-nez v0, :cond_0

    return-void

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 1376
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$a$1;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v1/DbxClientV1$a$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$a;)V

    invoke-static {v2, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->e:Ljava/lang/String;

    .line 1381
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->f:J

    goto :goto_1

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1388
    :goto_0
    new-instance v4, Lcom/dropbox/core/v1/DbxClientV1$a$2;

    invoke-direct {v4, p0, v0, v3}, Lcom/dropbox/core/v1/DbxClientV1$a$2;-><init>(Lcom/dropbox/core/v1/DbxClientV1$a;Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1393
    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->f:J

    iget v8, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 1396
    iput-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->f:J

    .line 1405
    :goto_1
    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    return-void

    .line 1400
    :cond_2
    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->f:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method static synthetic c(Lcom/dropbox/core/v1/DbxClientV1$a;)[B
    .locals 0

    .line 1332
    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/v1/DbxClientV1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1332
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$a;->b()V

    return-void
.end method

.method static synthetic e(Lcom/dropbox/core/v1/DbxClientV1$a;)J
    .locals 2

    .line 1332
    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->f:J

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1351
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$a;->a()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1354
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw v0
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    sub-int/2addr v0, v1

    sub-int v1, p3, p2

    .line 1417
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1418
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:[B

    iget v2, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->d:I

    add-int/2addr p2, v0

    .line 1422
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$a;->a()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1425
    new-instance p2, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {p2, p1}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw p2

    :cond_0
    return-void
.end method
