.class final Lcom/dropbox/core/v1/DbxClientV1$c;
.super Lcom/dropbox/core/v1/DbxClientV1$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/v1/DbxClientV1;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/dropbox/core/v1/DbxWriteMode;

.field private final d:J

.field private final e:Lcom/dropbox/core/v1/DbxClientV1$a;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$a;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->a:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;-><init>()V

    .line 1275
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->b:Ljava/lang/String;

    .line 1276
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->c:Lcom/dropbox/core/v1/DbxWriteMode;

    .line 1277
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->d:J

    .line 1278
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$a;Lcom/dropbox/core/v1/DbxClientV1$1;)V
    .locals 0

    .line 1266
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v1/DbxClientV1$c;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$a;)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v1/DbxClientV1$c;)Ljava/lang/String;
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v1/DbxClientV1$c;)Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->c:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public finish()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->a(Lcom/dropbox/core/v1/DbxClientV1$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->a:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->c:Lcom/dropbox/core/v1/DbxWriteMode;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->b(Lcom/dropbox/core/v1/DbxClientV1$a;)I

    move-result v0

    int-to-long v4, v0

    new-instance v6, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    .line 1301
    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->c(Lcom/dropbox/core/v1/DbxClientV1$a;)[B

    move-result-object v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v8}, Lcom/dropbox/core/v1/DbxClientV1$a;->b(Lcom/dropbox/core/v1/DbxClientV1$a;)I

    move-result v8

    invoke-direct {v6, v0, v7, v8}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    .line 1300
    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->uploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$a;->a(Lcom/dropbox/core/v1/DbxClientV1$a;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$a;->d(Lcom/dropbox/core/v1/DbxClientV1$a;)V

    .line 1308
    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->d:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 1310
    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->d:J

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v3}, Lcom/dropbox/core/v1/DbxClientV1$a;->e(Lcom/dropbox/core/v1/DbxClientV1$a;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    .line 1311
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'numBytes\' is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " but you wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    invoke-static {v2}, Lcom/dropbox/core/v1/DbxClientV1$a;->e(Lcom/dropbox/core/v1/DbxClientV1$a;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x3

    .line 1317
    new-instance v2, Lcom/dropbox/core/v1/DbxClientV1$c$1;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/core/v1/DbxClientV1$c$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$c;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$c;->e:Lcom/dropbox/core/v1/DbxClientV1$a;

    return-object v0
.end method
