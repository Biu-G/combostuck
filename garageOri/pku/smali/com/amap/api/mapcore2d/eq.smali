.class public abstract Lcom/amap/api/mapcore2d/eq;
.super Lcom/amap/api/mapcore2d/ev;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/amap/api/mapcore2d/cy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ev;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/eq;->a:Landroid/content/Context;

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/eq;->b:Lcom/amap/api/mapcore2d/cy;

    return-void
.end method

.method private n()[B
    .locals 4

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v1, "PANDORA$"

    .line 98
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x1

    .line 102
    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 104
    new-array v1, v1, [B

    aput-byte v3, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    .line 112
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    .line 107
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getBinaryHead"

    .line 112
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 110
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getBinaryHead"

    .line 112
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_3
    throw v1
.end method

.method private o()[B
    .locals 6

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->b()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 203
    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    new-array v4, v1, [B

    aput-byte v1, v4, v2

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/eq;->a([B)[B

    move-result-object v4

    .line 209
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 210
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 211
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestRawData"

    .line 219
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    .line 204
    :cond_1
    :goto_1
    :try_start_2
    new-array v3, v1, [B

    aput-byte v2, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestRawData"

    .line 219
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "BinaryRequest"

    const-string v5, "getRequestRawData"

    .line 214
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v3, "BinaryRequest"

    const-string v4, "getRequestRawData"

    .line 219
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_3
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    return-object v0

    .line 217
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestRawData"

    .line 219
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_5
    throw v1
.end method

.method private p()[B
    .locals 6

    .line 230
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->c()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 233
    array-length v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    new-array v4, v1, [B

    aput-byte v1, v4, v2

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    iget-object v4, p0, Lcom/amap/api/mapcore2d/eq;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;[B)[B

    move-result-object v3

    .line 239
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/eq;->a([B)[B

    move-result-object v4

    .line 241
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 242
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestEncryptData"

    .line 250
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v3

    .line 234
    :cond_1
    :goto_1
    :try_start_2
    new-array v3, v1, [B

    aput-byte v2, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestEncryptData"

    .line 250
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "BinaryRequest"

    const-string v5, "getRequestEncryptData"

    .line 245
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v3, "BinaryRequest"

    const-string v4, "getRequestEncryptData"

    .line 250
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_3
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    return-object v0

    .line 248
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    .line 250
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_5
    throw v1
.end method


# virtual methods
.method protected a([B)[B
    .locals 3

    .line 191
    array-length p1, p1

    .line 192
    div-int/lit16 v0, p1, 0x100

    int-to-byte v0, v0

    .line 193
    rem-int/lit16 p1, p1, 0x100

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 194
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    return-object v1
.end method

.method public final a_()[B
    .locals 4

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eq;->n()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 71
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->i()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 72
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eq;->o()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eq;->p()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    .line 86
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    .line 81
    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getEntityBytes"

    .line 86
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 84
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getEntityBytes"

    .line 86
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_3
    throw v1
.end method

.method public abstract b()[B
.end method

.method public abstract c()[B
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amap/api/mapcore2d/eq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/amap/api/mapcore2d/cs;->a()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/amap/api/mapcore2d/eq;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ts"

    .line 55
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    .line 56
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    .line 57
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()[B
    .locals 6

    .line 121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    :try_start_0
    new-array v3, v1, [B

    const/4 v4, 0x3

    aput-byte v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->h()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/amap/api/mapcore2d/eq;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->k()Z

    move-result v5

    invoke-static {v3, v5}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;Z)[B

    move-result-object v3

    .line 127
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/eq;->a([B)[B

    move-result-object v5

    .line 129
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 132
    :cond_0
    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->d()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 138
    array-length v5, v3

    if-lez v5, :cond_1

    .line 139
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/eq;->a([B)[B

    move-result-object v5

    .line 140
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 141
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 143
    :cond_1
    new-array v3, v4, [B

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/eq;->j()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 150
    array-length v5, v3

    if-lez v5, :cond_2

    .line 151
    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore2d/eq;->a([B)[B

    move-result-object v4

    .line 152
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 153
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 155
    :cond_2
    new-array v3, v4, [B

    fill-array-data v3, :array_2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 159
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "BinaryRequest"

    const-string v2, "getRequestEncryptData"

    .line 166
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "BinaryRequest"

    const-string v5, "getPublicData"

    .line 161
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v3, "BinaryRequest"

    const-string v4, "getRequestEncryptData"

    .line 166
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_4
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    return-object v0

    .line 164
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v2, "BinaryRequest"

    const-string v3, "getRequestEncryptData"

    .line 166
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_6
    throw v1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public j()Ljava/lang/String;
    .locals 4

    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v1, 0x2

    .line 176
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eq;->b:Lcom/amap/api/mapcore2d/cy;

    .line 178
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cy;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/eq;->b:Lcom/amap/api/mapcore2d/cy;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cy;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 176
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
