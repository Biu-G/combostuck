.class public Lcom/amap/api/mapcore2d/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/cq$b;,
        Lcom/amap/api/mapcore2d/cq$a;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore2d/cq$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/mapcore2d/cy;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/mapcore2d/cq$a;"
        }
    .end annotation

    .line 261
    new-instance v0, Lcom/amap/api/mapcore2d/cq$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/cq$a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 263
    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore2d/ep;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/ep;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7

    .line 266
    :try_start_1
    new-instance v4, Lcom/amap/api/mapcore2d/cq$b;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/cq$b;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cq$b;->a()Z

    move-result p2

    invoke-virtual {v3, v4, p2}, Lcom/amap/api/mapcore2d/ep;->a(Lcom/amap/api/mapcore2d/ev;Z)Lcom/amap/api/mapcore2d/ex;

    move-result-object p2
    :try_end_1
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz p2, :cond_0

    .line 274
    :try_start_2
    iget-object p3, p2, Lcom/amap/api/mapcore2d/ex;->a:[B
    :try_end_2
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    move-object v3, p3

    move-object p3, v1

    goto :goto_1

    :catch_1
    move-object p3, v1

    goto/16 :goto_3

    :catch_2
    move-exception p3

    move-object v3, p3

    move-object p3, v1

    goto :goto_2

    :cond_0
    move-object p3, v1

    :goto_0
    const/16 v3, 0x10

    .line 279
    :try_start_3
    new-array v4, v3, [B

    .line 280
    array-length v5, p3

    sub-int/2addr v5, v3

    new-array v5, v5, [B

    .line 281
    invoke-static {p3, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v6, p3

    sub-int/2addr v6, v3

    invoke-static {p3, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v3, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v4, "AES/CBC/PKCS5Padding"

    .line 284
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 285
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/mapcore2d/cz;->b()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    .line 286
    invoke-virtual {v4, v7, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 287
    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 288
    invoke-static {v3}, Lcom/amap/api/mapcore2d/cz;->a([B)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_2

    .line 271
    :catch_5
    :try_start_4
    new-instance p2, Lcom/amap/api/mapcore2d/co;

    const-string p3, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p2, p3}, Lcom/amap/api/mapcore2d/co;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_6
    move-exception p2

    .line 269
    throw p2
    :try_end_4
    .catch Lcom/amap/api/mapcore2d/co; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :catch_7
    move-exception p3

    move-object v3, p3

    move-object p2, v1

    move-object p3, p2

    :goto_1
    const-string v4, "ConfigManager"

    const-string v5, "loadConfig"

    .line 295
    invoke-static {v3, v4, v5}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_8
    move-object p2, v1

    move-object p3, p2

    goto :goto_3

    :catch_9
    move-exception p3

    move-object v3, p3

    move-object p2, v1

    move-object p3, p2

    .line 290
    :goto_2
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/co;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/mapcore2d/cq$a;->a:Ljava/lang/String;

    const-string v4, "/v3/iasdkauth"

    .line 291
    invoke-static {p1, v4, v3}, Lcom/amap/api/mapcore2d/dg;->a(Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Lcom/amap/api/mapcore2d/co;)V

    :catch_a
    :goto_3
    if-nez p3, :cond_1

    return-object v0

    .line 301
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cz;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 306
    :cond_2
    :try_start_5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    .line 307
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "status"

    .line 308
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 310
    sput v3, Lcom/amap/api/mapcore2d/cq;->a:I

    goto :goto_4

    :cond_3
    if-nez v1, :cond_7

    const-string v1, "authcsid"

    const-string v3, "authgsid"

    if-eqz p2, :cond_4

    .line 316
    iget-object v1, p2, Lcom/amap/api/mapcore2d/ex;->c:Ljava/lang/String;

    .line 317
    iget-object v3, p2, Lcom/amap/api/mapcore2d/ex;->d:Ljava/lang/String;

    .line 325
    :cond_4
    invoke-static {p0, v1, v3, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 327
    sput v2, Lcom/amap/api/mapcore2d/cq;->a:I

    const-string p0, "info"

    .line 328
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "info"

    .line 329
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/cq;->b:Ljava/lang/String;

    :cond_5
    const-string p0, ""

    const-string p2, "infocode"

    .line 332
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "infocode"

    .line 333
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    const-string p2, "/v3/iasdkauth"

    .line 335
    sget-object v1, Lcom/amap/api/mapcore2d/cq;->b:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3, p0}, Lcom/amap/api/mapcore2d/dg;->a(Lcom/amap/api/mapcore2d/cy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget p0, Lcom/amap/api/mapcore2d/cq;->a:I

    if-nez p0, :cond_7

    .line 337
    sget-object p0, Lcom/amap/api/mapcore2d/cq;->b:Ljava/lang/String;

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_d

    return-object v0

    :cond_7
    :goto_4
    :try_start_6
    const-string p0, "ver"

    .line 344
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "ver"

    .line 345
    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/amap/api/mapcore2d/cq$a;->b:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_5

    :catch_b
    move-exception p0

    :try_start_7
    const-string p1, "AuthConfigManager"

    const-string p2, "loadConfigVer"

    .line 350
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    const-string p0, "result"

    .line 354
    invoke-static {p3, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 356
    new-instance p0, Lcom/amap/api/mapcore2d/cq$a$a;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cq$a$a;-><init>()V

    .line 357
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cq$a$a;->a:Z

    .line 358
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/cq$a$a;->b:Z

    .line 359
    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->u:Lcom/amap/api/mapcore2d/cq$a$a;

    const-string p1, "result"

    .line 362
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "11K"

    .line 364
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d

    if-eqz p2, :cond_9

    :try_start_8
    const-string p2, "11K"

    .line 366
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "able"

    .line 367
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 369
    invoke-static {p3, v2}, Lcom/amap/api/mapcore2d/cq;->a(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/cq$a$a;->a:Z

    const-string p3, "off"

    .line 370
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "off"

    .line 371
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq$a$a;->c:Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_6

    :catch_c
    move-exception p0

    :try_start_9
    const-string p2, "AuthConfigManager"

    const-string p3, "loadException"

    .line 375
    invoke-static {p0, p2, p3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_6
    const-string p0, "11B"

    .line 383
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "11B"

    .line 384
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->h:Lorg/json/JSONObject;

    :cond_a
    const-string p0, "11C"

    .line 390
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "11C"

    .line 391
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->k:Lorg/json/JSONObject;

    :cond_b
    const-string p0, "11I"

    .line 395
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "11I"

    .line 396
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->l:Lorg/json/JSONObject;

    :cond_c
    const-string p0, "11H"

    .line 402
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "11H"

    .line 403
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->m:Lorg/json/JSONObject;

    :cond_d
    const-string p0, "11E"

    .line 407
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "11E"

    .line 408
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->n:Lorg/json/JSONObject;

    :cond_e
    const-string p0, "11F"

    .line 412
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "11F"

    .line 413
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->o:Lorg/json/JSONObject;

    :cond_f
    const-string p0, "13A"

    .line 417
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "13A"

    .line 418
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->q:Lorg/json/JSONObject;

    :cond_10
    const-string p0, "13J"

    .line 422
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "13J"

    .line 423
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->i:Lorg/json/JSONObject;

    :cond_11
    const-string p0, "11G"

    .line 427
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "11G"

    .line 428
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->p:Lorg/json/JSONObject;

    :cond_12
    const-string p0, "001"

    .line 432
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "001"

    .line 433
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 434
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$d;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$d;-><init>()V

    .line 435
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$d;)V

    .line 436
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->v:Lcom/amap/api/mapcore2d/cq$a$d;

    :cond_13
    const-string p0, "002"

    .line 439
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "002"

    .line 440
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 441
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$c;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$c;-><init>()V

    .line 442
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$c;)V

    .line 443
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->w:Lcom/amap/api/mapcore2d/cq$a$c;

    :cond_14
    const-string p0, "006"

    .line 449
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "006"

    .line 451
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 452
    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->r:Lorg/json/JSONObject;

    :cond_15
    const-string p0, "010"

    .line 457
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "010"

    .line 458
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 459
    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->s:Lorg/json/JSONObject;

    :cond_16
    const-string p0, "11Z"

    .line 463
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "11Z"

    .line 464
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 465
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$b;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$b;-><init>()V

    .line 466
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V

    .line 467
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->x:Lcom/amap/api/mapcore2d/cq$a$b;

    :cond_17
    const-string p0, "135"

    .line 470
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const-string p0, "135"

    .line 471
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->j:Lorg/json/JSONObject;

    :cond_18
    const-string p0, "13S"

    .line 474
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "13S"

    .line 475
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->g:Lorg/json/JSONObject;

    :cond_19
    const-string p0, "121"

    .line 478
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "121"

    .line 479
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 480
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$b;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$b;-><init>()V

    .line 481
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V

    .line 482
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->y:Lcom/amap/api/mapcore2d/cq$a$b;

    :cond_1a
    const-string p0, "122"

    .line 484
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "122"

    .line 485
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 486
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$b;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$b;-><init>()V

    .line 487
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V

    .line 488
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->z:Lcom/amap/api/mapcore2d/cq$a$b;

    :cond_1b
    const-string p0, "123"

    .line 491
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "123"

    .line 492
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 493
    new-instance p2, Lcom/amap/api/mapcore2d/cq$a$b;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cq$a$b;-><init>()V

    .line 494
    invoke-static {p0, p2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V

    .line 495
    iput-object p2, v0, Lcom/amap/api/mapcore2d/cq$a;->A:Lcom/amap/api/mapcore2d/cq$a$b;

    :cond_1c
    const-string p0, "011"

    .line 499
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "011"

    .line 501
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 502
    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->c:Lorg/json/JSONObject;

    :cond_1d
    const-string p0, "012"

    .line 504
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "012"

    .line 506
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 507
    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->d:Lorg/json/JSONObject;

    :cond_1e
    const-string p0, "013"

    .line 509
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "013"

    .line 511
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->e:Lorg/json/JSONObject;

    :cond_1f
    const-string p0, "014"

    .line 513
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "014"

    .line 515
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->f:Lorg/json/JSONObject;

    :cond_20
    const-string p0, "145"

    .line 520
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "145"

    .line 521
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/mapcore2d/cq$a;->t:Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    :cond_21
    return-object v0

    :catch_d
    move-exception p0

    const-string p1, "AuthConfigManager"

    const-string p2, "loadConfig"

    .line 531
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ""

    .line 559
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$b;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    .line 567
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 568
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    .line 569
    invoke-static {p0, v2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    .line 570
    invoke-static {p0, v3}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 571
    iput-object v0, p1, Lcom/amap/api/mapcore2d/cq$a$b;->c:Ljava/lang/String;

    .line 572
    iput-object v1, p1, Lcom/amap/api/mapcore2d/cq$a$b;->b:Ljava/lang/String;

    .line 573
    iput-object v2, p1, Lcom/amap/api/mapcore2d/cq$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 574
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cq;->a(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/mapcore2d/cq$a$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigManager"

    const-string v0, "parsePluginEntity"

    .line 578
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$c;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    .line 587
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 589
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 590
    iput-object v0, p1, Lcom/amap/api/mapcore2d/cq$a$c;->b:Ljava/lang/String;

    .line 591
    iput-object p0, p1, Lcom/amap/api/mapcore2d/cq$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigManager"

    const-string v0, "parseSDKCoordinate"

    .line 594
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/mapcore2d/cq$a$d;)V
    .locals 3

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "md5"

    .line 604
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 605
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    .line 606
    invoke-static {p0, v2}, Lcom/amap/api/mapcore2d/cq;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 609
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    iput-object v1, p1, Lcom/amap/api/mapcore2d/cq$a$d;->a:Ljava/lang/String;

    .line 613
    iput-object v0, p1, Lcom/amap/api/mapcore2d/cq$a$d;->b:Ljava/lang/String;

    .line 614
    iput-object p0, p1, Lcom/amap/api/mapcore2d/cq$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigManager"

    const-string v0, "parseSDKUpdate"

    .line 621
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    .line 236
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 238
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 239
    aget-object p0, p0, v0

    const/4 v0, 0x4

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 241
    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    return p1
.end method
