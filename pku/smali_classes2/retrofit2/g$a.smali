.class Lretrofit2/g$a;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lokhttp3/MediaType;


# direct methods
.method constructor <init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 237
    iput-object p1, p0, Lretrofit2/g$a;->a:Lokhttp3/RequestBody;

    .line 238
    iput-object p2, p0, Lretrofit2/g$a;->b:Lokhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lretrofit2/g$a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 242
    iget-object v0, p0, Lretrofit2/g$a;->b:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lretrofit2/g$a;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    return-void
.end method
