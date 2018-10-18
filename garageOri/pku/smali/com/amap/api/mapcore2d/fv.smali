.class public final Lcom/amap/api/mapcore2d/fv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static p:Lcom/amap/api/mapcore2d/fv;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:S

.field public m:J

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->a:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->b:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->c:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->d:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->e:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->f:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->g:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->h:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->i:I

    const/16 v1, -0x71

    iput v1, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    iput v0, p0, Lcom/amap/api/mapcore2d/fv;->k:I

    iput-short v0, p0, Lcom/amap/api/mapcore2d/fv;->l:S

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amap/api/mapcore2d/fv;->m:J

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fv;->o:Z

    iput p1, p0, Lcom/amap/api/mapcore2d/fv;->k:I

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fv;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fv;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fv;->h:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fv;->i:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    const-string v0, "unknown"

    iget v1, p0, Lcom/amap/api/mapcore2d/fv;->k:I

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    iget-boolean v6, p0, Lcom/amap/api/mapcore2d/fv;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    iget-short v4, p0, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v9, v3

    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    iget-boolean v6, p0, Lcom/amap/api/mapcore2d/fv;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    iget-short v4, p0, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v9, v3

    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/mapcore2d/fv;->i:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/fv;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/fv;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    iget-boolean v6, p0, Lcom/amap/api/mapcore2d/fv;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    iget-short v4, p0, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v9, v3

    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    goto :goto_0

    :pswitch_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    iget v8, p0, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    iget v7, p0, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    iget-boolean v6, p0, Lcom/amap/api/mapcore2d/fv;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, p0, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    iget-short v4, p0, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v9, v3

    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/fv;->n:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    :goto_0
    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
