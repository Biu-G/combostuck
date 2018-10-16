.class final Lokhttp3/internal/ws/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:J

.field c:Z

.field d:Z

.field final synthetic e:Lokhttp3/internal/ws/a;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/a;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lokhttp3/internal/ws/a$a;->d:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v1, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget v2, p0, Lokhttp3/internal/ws/a$a;->a:I

    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object v0, v0, Lokhttp3/internal/ws/a;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/a$a;->c:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/a;->a(IJZZ)V

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lokhttp3/internal/ws/a$a;->d:Z

    .line 255
    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lokhttp3/internal/ws/a;->h:Z

    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lokhttp3/internal/ws/a$a;->d:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v1, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget v2, p0, Lokhttp3/internal/ws/a$a;->a:I

    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object v0, v0, Lokhttp3/internal/ws/a;->f:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/a$a;->c:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/a;->a(IJZZ)V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lokhttp3/internal/ws/a$a;->c:Z

    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 246
    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object v0, v0, Lokhttp3/internal/ws/a;->c:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lokhttp3/internal/ws/a$a;->d:Z

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object v0, v0, Lokhttp3/internal/ws/a;->f:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 227
    iget-boolean p1, p0, Lokhttp3/internal/ws/a$a;->c:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lokhttp3/internal/ws/a$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object p1, p1, Lokhttp3/internal/ws/a;->f:Lokio/Buffer;

    .line 229
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lokhttp3/internal/ws/a$a;->b:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    iget-object p3, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget-object p3, p3, Lokhttp3/internal/ws/a;->f:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    if-nez p1, :cond_1

    .line 233
    iget-object v0, p0, Lokhttp3/internal/ws/a$a;->e:Lokhttp3/internal/ws/a;

    iget v1, p0, Lokhttp3/internal/ws/a$a;->a:I

    iget-boolean v4, p0, Lokhttp3/internal/ws/a$a;->c:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/ws/a;->a(IJZZ)V

    .line 234
    iput-boolean p2, p0, Lokhttp3/internal/ws/a$a;->c:Z

    :cond_1
    return-void

    .line 222
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
