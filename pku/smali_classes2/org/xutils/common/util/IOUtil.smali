.class public Lorg/xutils/common/util/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 117
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :cond_1
    const/16 v0, 0x400

    .line 121
    new-array v0, v0, [B

    .line 122
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static deleteFileOrDir(Ljava/io/File;)Z
    .locals 4

    if-eqz p0, :cond_3

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 138
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x0

    .line 50
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    .line 51
    :try_start_1
    new-array v0, v0, [B

    .line 53
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readBytes(Ljava/io/InputStream;JJ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    :goto_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    sub-long/2addr p1, v4

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    :goto_1
    int-to-long v0, p2

    cmp-long v0, v0, p3

    if-gez v0, :cond_1

    .line 73
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, v3

    :goto_2
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 82
    invoke-static {p0, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "UTF-8"

    .line 88
    :cond_0
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 91
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x400

    .line 93
    new-array p1, p1, [C

    .line 95
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0, p1, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeStr(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 102
    invoke-static {p0, p1, v0}, Lorg/xutils/common/util/IOUtil;->writeStr(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeStr(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "UTF-8"

    .line 108
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
