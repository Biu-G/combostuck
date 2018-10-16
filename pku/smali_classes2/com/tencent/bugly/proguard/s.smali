.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/p;

.field private final i:Lcom/tencent/bugly/proguard/r;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/q;

.field private final l:Lcom/tencent/bugly/proguard/q;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:J

.field private p:J

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V
    .locals 10

    const/4 v8, 0x5

    const v9, 0xea60

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 82
    invoke-direct/range {v0 .. v9}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;ZII)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;ZII)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, 0x3

    .line 38
    iput p8, p0, Lcom/tencent/bugly/proguard/s;->a:I

    const/16 p8, 0x7530

    .line 40
    iput p8, p0, Lcom/tencent/bugly/proguard/s;->b:I

    const-string p8, ""

    .line 53
    iput-object p8, p0, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    const/4 p8, 0x0

    .line 55
    iput p8, p0, Lcom/tencent/bugly/proguard/s;->n:I

    const-wide/16 p8, 0x0

    .line 56
    iput-wide p8, p0, Lcom/tencent/bugly/proguard/s;->o:J

    .line 57
    iput-wide p8, p0, Lcom/tencent/bugly/proguard/s;->p:J

    const/4 p8, 0x1

    .line 60
    iput-boolean p8, p0, Lcom/tencent/bugly/proguard/s;->q:Z

    .line 99
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p8

    iput-object p8, p0, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 101
    iput-object p4, p0, Lcom/tencent/bugly/proguard/s;->e:[B

    .line 102
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/s;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 103
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/p;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->h:Lcom/tencent/bugly/proguard/p;

    .line 104
    invoke-static {}, Lcom/tencent/bugly/proguard/r;->a()Lcom/tencent/bugly/proguard/r;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    .line 105
    iput p2, p0, Lcom/tencent/bugly/proguard/s;->j:I

    .line 106
    iput-object p5, p0, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    .line 107
    iput-object p6, p0, Lcom/tencent/bugly/proguard/s;->k:Lcom/tencent/bugly/proguard/q;

    .line 108
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    .line 110
    iput-boolean p7, p0, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz p7, :cond_2

    const/16 p1, 0x1fe

    if-eq p3, p1, :cond_1

    const/16 p1, 0x276

    if-eq p3, p1, :cond_0

    const/16 p1, 0x280

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_0
    const/16 p3, 0x33e

    goto :goto_0

    :cond_1
    const/16 p3, 0x348

    .line 120
    :cond_2
    :goto_0
    iput p3, p0, Lcom/tencent/bugly/proguard/s;->d:I

    const/4 p1, 0x5

    .line 126
    iput p1, p0, Lcom/tencent/bugly/proguard/s;->a:I

    const p1, 0xea60

    .line 127
    iput p1, p0, Lcom/tencent/bugly/proguard/s;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/bugly/proguard/ak;Ljava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V
    .locals 8

    .line 69
    iget v3, p3, Lcom/tencent/bugly/proguard/ak;->g:I

    invoke-static {p3}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/ak;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;Z)V

    return-void
.end method

.method private a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V
    .locals 4

    .line 160
    iget p1, p0, Lcom/tencent/bugly/proguard/s;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1

    const/16 v0, 0x280

    if-eq p1, v0, :cond_0

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x348

    if-eq p1, v0, :cond_0

    .line 170
    iget p1, p0, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "userinfo"

    goto :goto_0

    :cond_1
    const-string p1, "crash"

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const-string p3, "[upload] success: %s"

    .line 173
    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v0

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v2, "[upload] fail! %s %d %s"

    const/4 v3, 0x3

    .line 175
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object p4, v3, p1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz p1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    const/4 p3, 0x0

    invoke-virtual {p1, p5, p3}, Lcom/tencent/bugly/proguard/r;->a(ILcom/tencent/bugly/proguard/al;)V

    .line 181
    :cond_3
    :goto_1
    iget-wide p3, p0, Lcom/tencent/bugly/proguard/s;->o:J

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->p:J

    add-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_4

    .line 182
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/r;->b()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->o:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->p:J

    add-long/2addr p3, v0

    .line 183
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/bugly/proguard/r;->a(J)V

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->k:Lcom/tencent/bugly/proguard/q;

    if-eqz p1, :cond_5

    .line 187
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->k:Lcom/tencent/bugly/proguard/q;

    iget p3, p0, Lcom/tencent/bugly/proguard/s;->d:I

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/s;->o:J

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/s;->p:J

    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/q;->a(Z)V

    .line 189
    :cond_5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    if-eqz p1, :cond_6

    .line 190
    iget-object p1, p0, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    iget p3, p0, Lcom/tencent/bugly/proguard/s;->d:I

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/s;->o:J

    iget-wide p3, p0, Lcom/tencent/bugly/proguard/s;->p:J

    invoke-interface {p1, p2}, Lcom/tencent/bugly/proguard/q;->a(Z)V

    :cond_6
    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/al;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "resp == null!"

    .line 200
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 204
    :cond_0
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/al;->a:B

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string p1, "resp result error %d"

    .line 205
    new-array p2, v2, [Ljava/lang/Object;

    iget-byte p0, p0, Lcom/tencent/bugly/proguard/al;->a:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 209
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    .line 211
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "key_ip"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;Z)Z

    .line 214
    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->d(Ljava/lang/String;)V

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/al;->g:Ljava/lang/String;

    if-eq v1, v3, :cond_5

    .line 218
    invoke-static {}, Lcom/tencent/bugly/proguard/m;->a()Lcom/tencent/bugly/proguard/m;

    move-result-object v4

    sget v5, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v6, "key_imei"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->g:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/bugly/proguard/m;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/l;Z)Z

    .line 220
    iget-object v1, p0, Lcom/tencent/bugly/proguard/al;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    :cond_5
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/al;->e:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->h:J

    .line 228
    iget p1, p0, Lcom/tencent/bugly/proguard/al;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_9

    .line 229
    iget-object p1, p0, Lcom/tencent/bugly/proguard/al;->c:[B

    if-nez p1, :cond_6

    const-string p1, "remote data is miss! %d"

    .line 230
    new-array p2, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/al;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 234
    :cond_6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/al;->c:[B

    const-class v1, Lcom/tencent/bugly/proguard/an;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/an;

    if-nez p1, :cond_7

    const-string p1, "remote data is error! %d"

    .line 237
    new-array p2, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/tencent/bugly/proguard/al;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_7
    const-string p0, "en:%b qu:%b uin:%b vm:%d"

    const/4 v1, 0x4

    .line 241
    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v3, p1, Lcom/tencent/bugly/proguard/an;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    iget-boolean v0, p1, Lcom/tencent/bugly/proguard/an;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-boolean v3, p1, Lcom/tencent/bugly/proguard/an;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x3

    iget-object v3, p1, Lcom/tencent/bugly/proguard/an;->g:Ljava/util/Map;

    if-nez v3, :cond_8

    const/4 v3, -0x1

    goto :goto_2

    :cond_8
    iget-object v3, p1, Lcom/tencent/bugly/proguard/an;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/an;)V

    :cond_9
    return v2
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 463
    iget v0, p0, Lcom/tencent/bugly/proguard/s;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/s;->n:I

    .line 464
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/s;->o:J

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 468
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/s;->p:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/s;->p:J

    return-void
.end method

.method public final run()V
    .locals 16

    move-object/from16 v7, p0

    .line 253
    :try_start_0
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->e:[B

    const/4 v1, 0x0

    .line 254
    iput v1, v7, Lcom/tencent/bugly/proguard/s;->n:I

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/s;->o:J

    iput-wide v2, v7, Lcom/tencent/bugly/proguard/s;->p:J

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    iget v5, v7, Lcom/tencent/bugly/proguard/s;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/tencent/bugly/proguard/r;->a(IJ)V

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->k:Lcom/tencent/bugly/proguard/q;

    if-eqz v4, :cond_0

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->k:Lcom/tencent/bugly/proguard/q;

    iget v4, v7, Lcom/tencent/bugly/proguard/s;->d:I

    :cond_0
    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    iget v4, v7, Lcom/tencent/bugly/proguard/s;->d:I

    .line 257
    :cond_1
    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/bugly/proguard/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "network is not availiable!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 258
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_2
    if-eqz v0, :cond_1e

    .line 261
    array-length v4, v0

    if-nez v4, :cond_3

    goto/16 :goto_9

    .line 266
    :cond_3
    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/r;->b()J

    move-result-wide v4

    .line 267
    array-length v6, v0

    int-to-long v8, v6

    add-long/2addr v8, v4

    const-wide/32 v10, 0x200000

    cmp-long v6, v8, v10

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ltz v6, :cond_4

    const-string v0, "up too much wait to next time ! %d %d "

    .line 269
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[upload] fail, over net consume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x800

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_4
    const-string v4, "do upload task %d"

    .line 275
    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    if-eqz v4, :cond_1d

    if-eqz v0, :cond_1d

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v4, :cond_1d

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v4, :cond_1d

    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->h:Lcom/tencent/bugly/proguard/p;

    if-nez v4, :cond_5

    goto/16 :goto_8

    .line 284
    :cond_5
    iget-object v4, v7, Lcom/tencent/bugly/proguard/s;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, illegal local strategy!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 286
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 293
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "prodId"

    .line 294
    iget-object v10, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v10}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "bundleId"

    .line 295
    iget-object v10, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v10, v10, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "appVer"

    .line 296
    iget-object v10, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v10, v10, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-boolean v6, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz v6, :cond_9

    const-string v6, "cmd"

    .line 301
    iget v10, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "platformId"

    .line 302
    invoke-static {v9}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sdkVer"

    .line 304
    iget-object v10, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "2.1.5"

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "strategylastUpdateTime"

    .line 305
    iget-wide v10, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->l:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v6, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v6, v5}, Lcom/tencent/bugly/proguard/r;->a(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, failed to add security info to HTTP headers"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 309
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 314
    :cond_7
    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/a;->a([BI)[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, failed to zip request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 316
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 321
    :cond_8
    iget-object v6, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v6, v0}, Lcom/tencent/bugly/proguard/r;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, failed to encrypt request body"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 323
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_9
    move-object v6, v0

    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 331
    :goto_0
    iget v12, v7, Lcom/tencent/bugly/proguard/s;->a:I

    if-ge v0, v12, :cond_1c

    add-int/lit8 v10, v0, 0x1

    if-eqz v0, :cond_a

    const-string v0, "failed to upload last time, wait and try(%d) again"

    .line 333
    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 334
    iget v0, v7, Lcom/tencent/bugly/proguard/s;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v12, v0

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_a
    :goto_1
    const-string v0, "send %d"

    .line 337
    new-array v12, v9, [Ljava/lang/Object;

    array-length v13, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_e

    .line 341
    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz v0, :cond_d

    .line 343
    iget v0, v7, Lcom/tencent/bugly/proguard/s;->d:I

    const/16 v12, 0x33e

    if-ne v0, v12, :cond_c

    .line 344
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->o:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    goto :goto_3

    .line 346
    :cond_c
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    goto :goto_3

    .line 350
    :cond_d
    iget-object v0, v4, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->p:Ljava/lang/String;

    iput-object v0, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    :cond_e
    :goto_3
    const-string v0, "do upload to %s with cmd %d (pid=%d | tid=%d)"

    const/4 v12, 0x4

    .line 353
    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    aput-object v13, v12, v1

    iget v13, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 355
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->h:Lcom/tencent/bugly/proguard/p;

    iget-object v12, v7, Lcom/tencent/bugly/proguard/s;->m:Ljava/lang/String;

    invoke-virtual {v0, v12, v6, v7, v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/s;Ljava/util/Map;)[B

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "upload fail, no response!"

    const-string v12, "try upload fail! %d %s"

    .line 357
    new-array v13, v8, [Ljava/lang/Object;

    iget v14, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v1

    aput-object v0, v13, v9

    invoke-static {v12, v13}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    move v0, v10

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 362
    :cond_f
    iget-object v12, v7, Lcom/tencent/bugly/proguard/s;->h:Lcom/tencent/bugly/proguard/p;

    iget-object v12, v12, Lcom/tencent/bugly/proguard/p;->a:Ljava/util/Map;

    .line 363
    iget-boolean v13, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz v13, :cond_15

    if-eqz v12, :cond_14

    .line 364
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    if-eqz v13, :cond_14

    const-string v13, "status"

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v13, :cond_10

    goto/16 :goto_5

    :cond_10
    :try_start_3
    const-string v13, "status"

    .line 374
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v11, "status from server is %d (pid=%d | tid=%d)"

    .line 377
    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v11, v13}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v12, :cond_13

    if-ne v12, v8, :cond_12

    .line 393
    :try_start_5
    iget-wide v4, v7, Lcom/tencent/bugly/proguard/s;->o:J

    iget-wide v10, v7, Lcom/tencent/bugly/proguard/s;->p:J

    const/4 v0, 0x0

    add-long/2addr v4, v10

    cmp-long v0, v4, v2

    if-lez v0, :cond_11

    .line 394
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/r;->b()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/tencent/bugly/proguard/s;->o:J

    const/4 v0, 0x0

    add-long/2addr v2, v4

    iget-wide v4, v7, Lcom/tencent/bugly/proguard/s;->p:J

    const/4 v0, 0x0

    add-long/2addr v2, v4

    .line 395
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/r;->a(J)V

    .line 398
    :cond_11
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v2}, Lcom/tencent/bugly/proguard/r;->a(ILcom/tencent/bugly/proguard/al;)V

    const-string v0, "Session ID is invalid, will try again immediately (pid=%d | tid=%d)"

    .line 400
    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 402
    iget-object v10, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    iget v11, v7, Lcom/tencent/bugly/proguard/s;->j:I

    iget v12, v7, Lcom/tencent/bugly/proguard/s;->d:I

    iget-object v13, v7, Lcom/tencent/bugly/proguard/s;->e:[B

    const/4 v14, 0x0

    iget-object v15, v7, Lcom/tencent/bugly/proguard/s;->l:Lcom/tencent/bugly/proguard/q;

    invoke-virtual/range {v10 .. v15}, Lcom/tencent/bugly/proguard/r;->a(II[BLjava/lang/String;Lcom/tencent/bugly/proguard/q;)V

    return-void

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload fail, status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_13
    move v11, v12

    goto :goto_6

    :catch_1
    move v11, v12

    .line 381
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "upload fail, format of status header is invalid: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "try upload fail! %d %s"

    new-array v13, v8, [Ljava/lang/Object;

    iget v14, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v1

    aput-object v0, v13, v9

    invoke-static {v12, v13}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_14
    :goto_5
    const-string v0, "no headers from server, just try again (pid=%d | tid=%d)"

    .line 366
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v0, v12}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "upload fail, no status header"

    const-string v12, "try upload fail! %d %s"

    .line 368
    new-array v13, v8, [Ljava/lang/Object;

    iget v14, v7, Lcom/tencent/bugly/proguard/s;->d:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v1

    aput-object v0, v13, v9

    invoke-static {v12, v13}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_15
    :goto_6
    const-string v2, "recv %d"

    .line 411
    new-array v3, v9, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 413
    iget-boolean v2, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz v2, :cond_17

    .line 415
    iget-object v2, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/r;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "upload fail, failed to decrypt response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 417
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 422
    :cond_16
    invoke-static {v0, v8}, Lcom/tencent/bugly/proguard/a;->b([BI)[B

    move-result-object v0

    if-nez v0, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "upload fail, failed to unzip(gzip) response from server"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 424
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 430
    :cond_17
    iget-boolean v2, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/a;->a([BZ)Lcom/tencent/bugly/proguard/al;

    move-result-object v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "upload fail, resp null!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 435
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    .line 439
    :cond_18
    iget-boolean v0, v7, Lcom/tencent/bugly/proguard/s;->q:Z

    if-eqz v0, :cond_19

    .line 441
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->i:Lcom/tencent/bugly/proguard/r;

    invoke-virtual {v0, v11, v2}, Lcom/tencent/bugly/proguard/r;->a(ILcom/tencent/bugly/proguard/al;)V

    :cond_19
    const-string v0, "response %d %d"

    .line 444
    new-array v3, v8, [Ljava/lang/Object;

    iget v4, v2, Lcom/tencent/bugly/proguard/al;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, v2, Lcom/tencent/bugly/proguard/al;->c:[B

    if-nez v4, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v1, v2, Lcom/tencent/bugly/proguard/al;->c:[B

    array-length v1, v1

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 446
    iget-object v0, v7, Lcom/tencent/bugly/proguard/s;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v7, Lcom/tencent/bugly/proguard/s;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v2, v0, v1}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 447
    iget-object v5, v2, Lcom/tencent/bugly/proguard/al;->f:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_1b
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 451
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "try OT Fail!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v4, v10

    .line 455
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_1d
    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, illegal access error!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 279
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V

    return-void

    :cond_1e
    :goto_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "[upload] fail, request package is empty!"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 262
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/s;->a(Lcom/tencent/bugly/proguard/al;ZILjava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 457
    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 458
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1f
    return-void
.end method
