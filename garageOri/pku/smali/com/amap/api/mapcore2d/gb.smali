.class public final Lcom/amap/api/mapcore2d/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static K:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/fv;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/ft;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:[B

.field public L:Ljava/lang/String;

.field private M:[B

.field private N:I

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/amap/api/mapcore2d/gb;->b:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/mapcore2d/gb;->z:I

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/gb;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/gb;->G:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->J:[B

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->M:[B

    iput v0, p0, Lcom/amap/api/mapcore2d/gb;->N:I

    iput-object v1, p0, Lcom/amap/api/mapcore2d/gb;->L:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "lac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const-string v0, "cellid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    const-string v0, "signal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget-object p1, p2, p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    array-length v4, v0

    if-eq v4, v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    const-string v4, "0"

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_2
    aget-object v4, v0, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_3
    const-string v1, "Req"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacBa "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00:00:00:00:00:00"

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->f:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->g:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->h:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->i:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    const-string v0, "0"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->l:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->m:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->n:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->o:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->p:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->q:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->r:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->s:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    :cond_14
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->u:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->v:Ljava/lang/String;

    :cond_16
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->w:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->x:Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_4
    const-string v0, "0"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    goto :goto_5

    :cond_19
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4

    :cond_1a
    :goto_5
    iget v0, p0, Lcom/amap/api/mapcore2d/gb;->z:I

    invoke-static {v0}, Lcom/amap/api/mapcore2d/fw;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    iput v1, p0, Lcom/amap/api/mapcore2d/gb;->z:I

    :cond_1b
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    :cond_1c
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    :cond_1d
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    :cond_1e
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->H:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->I:Ljava/lang/String;

    :cond_20
    sget-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;

    :cond_21
    iget-object v0, p0, Lcom/amap/api/mapcore2d/gb;->J:[B

    if-nez v0, :cond_22

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/amap/api/mapcore2d/gb;->J:[B

    :cond_22
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/amap/api/mapcore2d/fw;Lcom/amap/api/mapcore2d/fx;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    const-string v0, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/cp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->f()I

    move-result v7

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v11, p8

    iput-object v11, v1, Lcom/amap/api/mapcore2d/gb;->L:Ljava/lang/String;

    const-string v11, "api_serverSDK_130905"

    const-string v12, "S128DF1572465B890OE3F7A13167KLEI"

    if-nez p3, :cond_0

    const-string v11, "UC_nlp_20131029"

    const-string v12, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore2d/fw;->c()I

    move-result v15

    move-object/from16 v16, v8

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore2d/fw;->d()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore2d/fw;->e()Landroid/telephony/TelephonyManager;

    move-result-object v17

    move-object/from16 v18, v9

    invoke-static {}, Lcom/amap/api/mapcore2d/fw;->a()Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v19, v10

    invoke-static {}, Lcom/amap/api/mapcore2d/fw;->b()Ljava/util/ArrayList;

    move-result-object v10

    move/from16 v20, v7

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->a()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v21, v6

    const/4 v6, 0x2

    if-ne v8, v6, :cond_1

    const-string v0, "1"

    :cond_1
    move-object/from16 v22, v0

    if-eqz v17, :cond_5

    sget-object v0, Lcom/amap/api/mapcore2d/gc;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ct;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/gc;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "APS"

    move-object/from16 v23, v5

    const-string v5, "getApsReq part4"

    invoke-static {v0, v6, v5}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v23, v5

    :goto_1
    sget-object v0, Lcom/amap/api/mapcore2d/gc;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "888888888888888"

    sput-object v0, Lcom/amap/api/mapcore2d/gc;->c:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/amap/api/mapcore2d/gc;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/gc;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v5, "APS"

    const-string v6, "getApsReq part2"

    invoke-static {v0, v5, v6}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    sget-object v0, Lcom/amap/api/mapcore2d/gc;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "888888888888888"

    sput-object v0, Lcom/amap/api/mapcore2d/gc;->d:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object/from16 v23, v5

    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v6, v0

    const-string v0, "APS"

    const-string v5, "getApsReq part"

    invoke-static {v6, v0, v5}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore2d/fx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    move-object/from16 v24, v4

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    invoke-static/range {v17 .. v17}, Lcom/amap/api/mapcore2d/gf;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v6, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "2"

    goto :goto_5

    :cond_7
    const-string v4, "1"

    goto :goto_5

    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v4, v18

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    move-object/from16 v25, v4

    if-nez v16, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v8, :pswitch_data_0

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v19

    goto/16 :goto_7

    :pswitch_0
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/api/mapcore2d/fv;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "<mcc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</mcc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<sid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->g:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</sid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<nid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->h:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</nid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<bid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->i:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</bid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->f:I

    if-lez v0, :cond_9

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->e:I

    if-lez v0, :cond_9

    const-string v0, "<lon>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->f:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</lon>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<lat>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->e:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</lat>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "<signal>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</signal>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v3

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v26, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/api/mapcore2d/fv;

    move-object/from16 v27, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "<mcc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/amap/api/mapcore2d/fv;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</mcc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<mnc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</mnc>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<lac>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</lac>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<cellid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</cellid>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<signal>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</signal>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_b

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/fv;

    move-object/from16 v28, v0

    iget v0, v3, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/amap/api/mapcore2d/fv;->j:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v8, v0, :cond_a

    const-string v0, "*"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v28

    goto :goto_6

    :cond_b
    move-object/from16 v28, v0

    :goto_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v19

    :goto_8
    and-int/lit8 v3, v15, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_d
    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_9
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->e()Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v6, :cond_11

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v3, -0x80

    if-ge v4, v3, :cond_e

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    const/16 v3, 0x7f

    if-le v4, v3, :cond_f

    goto :goto_a

    :cond_f
    :goto_b
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    :try_start_3
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    const/16 v5, 0x20

    :goto_c
    if-lt v5, v4, :cond_10

    const-string v3, "unkwn"

    :cond_10
    const-string v4, "*"

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz v7, :cond_13

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_12
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/mapcore2d/fx;->b()V

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_13
    :goto_d
    if-nez p2, :cond_14

    const/4 v3, 0x2

    :goto_e
    iput-short v3, v1, Lcom/amap/api/mapcore2d/gb;->b:S

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    goto :goto_e

    :goto_f
    iput-object v11, v1, Lcom/amap/api/mapcore2d/gb;->c:Ljava/lang/String;

    iput-object v12, v1, Lcom/amap/api/mapcore2d/gb;->d:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/amap/api/mapcore2d/gb;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/amap/api/mapcore2d/gb;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/gf;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/amap/api/mapcore2d/gb;->h:Ljava/lang/String;

    move-object/from16 v3, v22

    iput-object v3, v1, Lcom/amap/api/mapcore2d/gb;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->k:Ljava/lang/String;

    move-object/from16 v2, v27

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->l:Ljava/lang/String;

    move-object/from16 v2, v24

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->m:Ljava/lang/String;

    move-object/from16 v2, v23

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->n:Ljava/lang/String;

    move-object/from16 v2, v21

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->o:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/mapcore2d/gc;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->p:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/mapcore2d/gc;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->q:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->s:Ljava/lang/String;

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    const-string v2, "3.4.0"

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->v:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->w:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->u:Ljava/lang/String;

    move-object/from16 v2, v26

    iput-object v2, v1, Lcom/amap/api/mapcore2d/gb;->x:Ljava/lang/String;

    move-object/from16 v4, v25

    iput-object v4, v1, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    iput v15, v1, Lcom/amap/api/mapcore2d/gb;->z:I

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->A:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/mapcore2d/fw;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->D:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/mapcore2d/fx;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->H:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    :try_start_4
    sget-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/amap/api/mapcore2d/ct;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_15
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v14, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()[B
    .locals 18

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore2d/gb;->b()V

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x4

    new-array v5, v4, [B

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    const/16 v6, 0x1000

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    array-length v0, v0

    add-int/2addr v0, v7

    add-int/2addr v6, v0

    :cond_0
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->M:[B

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/amap/api/mapcore2d/gb;->N:I

    if-le v6, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->M:[B

    goto :goto_1

    :cond_2
    :goto_0
    new-array v0, v6, [B

    iput-object v0, v1, Lcom/amap/api/mapcore2d/gb;->M:[B

    iput v6, v1, Lcom/amap/api/mapcore2d/gb;->N:I

    :goto_1
    move-object v6, v0

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    const/4 v8, 0x0

    aput-byte v0, v6, v8

    iget-short v0, v1, Lcom/amap/api/mapcore2d/gb;->b:S

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    array-length v10, v0

    invoke-static {v0, v8, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v10, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->c:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v10, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot2"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_2
    :try_start_1
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->d:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v10, v0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot21"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->o:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v10, v0

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot22"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_4
    :try_start_3
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->e:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v10, v0

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot23"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_5
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->f:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    add-int/2addr v10, v0

    goto :goto_6

    :catch_4
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot24"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_6
    :try_start_5
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->g:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    add-int/2addr v10, v0

    goto :goto_7

    :catch_5
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot25"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_7
    :try_start_6
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->u:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    add-int/2addr v10, v0

    goto :goto_8

    :catch_6
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot26"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->h:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    add-int/2addr v10, v0

    goto :goto_9

    :catch_7
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot27"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_9
    :try_start_8
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->p:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    add-int/2addr v10, v0

    goto :goto_a

    :catch_8
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot28"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_a
    :try_start_9
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->q:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    add-int/2addr v10, v0

    goto :goto_b

    :catch_9
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot29"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_b
    :try_start_a
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aput-byte v8, v6, v10

    goto :goto_c

    :cond_3
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->t:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    add-int/2addr v10, v0

    goto :goto_d

    :catch_a
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot219"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    :goto_c
    add-int/2addr v10, v7

    :goto_d
    :try_start_b
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->v:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    add-int/2addr v10, v0

    goto :goto_e

    :catch_b
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot211"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_e
    :try_start_c
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->w:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    add-int/2addr v10, v0

    goto :goto_f

    :catch_c
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot212"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_f
    :try_start_d
    sget-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    aput-byte v8, v6, v10

    goto :goto_10

    :cond_4
    sget-object v0, Lcom/amap/api/mapcore2d/gb;->K:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    add-int/2addr v10, v0

    goto :goto_11

    :catch_d
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot212"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    :goto_10
    add-int/2addr v10, v7

    :goto_11
    :try_start_e
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->x:Ljava/lang/String;

    const-string v11, "GBK"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    array-length v11, v0

    invoke-static {v0, v8, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    add-int/2addr v10, v0

    goto :goto_12

    :catch_e
    move-exception v0

    const-string v11, "Req"

    const-string v12, "buildV4Dot213"

    invoke-static {v0, v11, v12}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_12
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v6, v10

    add-int/2addr v10, v7

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v6, v10

    add-int/2addr v10, v7

    iget v0, v1, Lcom/amap/api/mapcore2d/gb;->z:I

    const/4 v11, 0x3

    and-int/2addr v0, v11

    iget v12, v1, Lcom/amap/api/mapcore2d/gb;->z:I

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    add-int/2addr v10, v7

    const/16 v12, -0x80

    const/16 v13, 0x7f

    if-ne v0, v7, :cond_b

    const-string v0, "mcc"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v8, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "mnc"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v8, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "lac"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v8, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "cellid"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v8, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "signal"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v13, :cond_5

    :goto_13
    const/4 v0, 0x0

    goto :goto_14

    :cond_5
    if-ge v0, v12, :cond_6

    goto :goto_13

    :cond_6
    :goto_14
    int-to-byte v0, v0

    aput-byte v0, v6, v10

    add-int/2addr v10, v7

    invoke-static {v8, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v8, v6, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v2

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    aput-byte v8, v6, v10

    :goto_15
    add-int/2addr v10, v7

    goto/16 :goto_1b

    :cond_7
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->B:Ljava/lang/String;

    const-string v14, "\\*"

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    int-to-byte v14, v0

    aput-byte v14, v6, v10

    add-int/2addr v10, v7

    move v14, v10

    const/4 v10, 0x0

    :goto_16
    if-ge v10, v0, :cond_a

    const-string v15, "lac"

    invoke-direct {v1, v15, v10}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v15

    array-length v9, v15

    invoke-static {v15, v8, v6, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v15

    add-int/2addr v14, v9

    const-string v9, "cellid"

    invoke-direct {v1, v9, v10}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amap/api/mapcore2d/gf;->c(Ljava/lang/String;)[B

    move-result-object v9

    array-length v15, v9

    invoke-static {v9, v8, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v9

    add-int/2addr v14, v9

    const-string v9, "signal"

    invoke-direct {v1, v9, v10}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v13, :cond_8

    :goto_17
    const/4 v9, 0x0

    goto :goto_18

    :cond_8
    if-ge v9, v12, :cond_9

    goto :goto_17

    :cond_9
    :goto_18
    int-to-byte v9, v9

    aput-byte v9, v6, v14

    add-int/2addr v14, v7

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_16

    :cond_a
    move v10, v14

    goto/16 :goto_1b

    :cond_b
    if-ne v0, v2, :cond_e

    const-string v0, "mcc"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "sid"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "nid"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "bid"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "lon"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "lat"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v10, v0

    const-string v0, "signal"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v13, :cond_c

    :goto_19
    const/4 v0, 0x0

    goto :goto_1a

    :cond_c
    if-ge v0, v12, :cond_d

    goto :goto_19

    :cond_d
    :goto_1a
    int-to-byte v0, v0

    aput-byte v0, v6, v10

    add-int/2addr v10, v7

    invoke-static {v8, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v2

    aput-byte v8, v6, v10

    goto/16 :goto_15

    :cond_e
    :goto_1b
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->D:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget v9, v1, Lcom/amap/api/mapcore2d/gb;->z:I

    const/16 v14, 0x8

    and-int/2addr v9, v14

    if-ne v9, v14, :cond_f

    :try_start_f
    const-string v9, "GBK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    const/16 v14, 0x3c

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-byte v14, v9

    aput-byte v14, v6, v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v0, v8, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    add-int/2addr v10, v9

    goto :goto_1c

    :catch_f
    :cond_f
    aput-byte v8, v6, v10

    add-int/2addr v10, v7

    :goto_1c
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v14, v1, Lcom/amap/api/mapcore2d/gb;->z:I

    and-int/2addr v14, v4

    if-ne v14, v4, :cond_1a

    if-lez v9, :cond_1a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/api/mapcore2d/fv;

    iget-boolean v14, v14, Lcom/amap/api/mapcore2d/fv;->o:Z

    if-nez v14, :cond_10

    add-int/lit8 v9, v9, -0x1

    :cond_10
    int-to-byte v14, v9

    aput-byte v14, v6, v10

    add-int/2addr v10, v7

    move v14, v10

    const/4 v10, 0x0

    :goto_1d
    if-ge v10, v9, :cond_1b

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amap/api/mapcore2d/fv;

    iget-boolean v12, v15, Lcom/amap/api/mapcore2d/fv;->o:Z

    if-eqz v12, :cond_19

    iget v12, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    const/16 v16, 0x63

    if-eq v12, v7, :cond_15

    iget v12, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    if-eq v12, v11, :cond_15

    iget v12, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    if-ne v12, v4, :cond_11

    goto/16 :goto_20

    :cond_11
    iget v12, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    if-ne v12, v2, :cond_19

    iget v12, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    int-to-byte v12, v12

    iget-boolean v11, v15, Lcom/amap/api/mapcore2d/fv;->n:Z

    if-eqz v11, :cond_12

    or-int/lit8 v11, v12, 0x8

    int-to-byte v12, v11

    :cond_12
    aput-byte v12, v6, v14

    add-int/lit8 v14, v14, 0x1

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->a:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->g:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->h:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->i:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->f:I

    invoke-static {v11, v5}, Lcom/amap/api/mapcore2d/gf;->b(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->e:I

    invoke-static {v11, v5}, Lcom/amap/api/mapcore2d/gf;->b(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->j:I

    if-le v11, v13, :cond_13

    :goto_1e
    const/16 v11, 0x63

    goto :goto_1f

    :cond_13
    const/16 v12, -0x80

    if-ge v11, v12, :cond_14

    goto :goto_1e

    :cond_14
    :goto_1f
    int-to-byte v11, v11

    aput-byte v11, v6, v14

    add-int/2addr v14, v7

    iget-short v11, v15, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    goto :goto_23

    :cond_15
    :goto_20
    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->k:I

    int-to-byte v11, v11

    iget-boolean v12, v15, Lcom/amap/api/mapcore2d/fv;->n:Z

    if-eqz v12, :cond_16

    or-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    :cond_16
    aput-byte v11, v6, v14

    add-int/lit8 v14, v14, 0x1

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->a:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-static {v11, v5}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    add-int/2addr v14, v11

    iget v11, v15, Lcom/amap/api/mapcore2d/fv;->j:I

    if-le v11, v13, :cond_17

    :goto_21
    const/16 v11, 0x63

    goto :goto_22

    :cond_17
    const/16 v12, -0x80

    if-ge v11, v12, :cond_18

    goto :goto_21

    :cond_18
    :goto_22
    int-to-byte v11, v11

    aput-byte v11, v6, v14

    add-int/2addr v14, v7

    iget-short v11, v15, Lcom/amap/api/mapcore2d/fv;->l:S

    invoke-static {v11, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v8, v6, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v11

    :goto_23
    add-int/2addr v14, v11

    :cond_19
    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x3

    const/16 v12, -0x80

    goto/16 :goto_1d

    :cond_1a
    aput-byte v8, v6, v10

    add-int/lit8 v14, v10, 0x1

    :cond_1b
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    aput-byte v8, v6, v14

    :goto_24
    add-int/2addr v14, v7

    goto/16 :goto_28

    :cond_1c
    aput-byte v7, v6, v14

    add-int/2addr v14, v7

    :try_start_10
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->E:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v8

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    invoke-static {v0, v8, v6, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11

    add-int/2addr v14, v0

    :try_start_11
    aget-object v0, v5, v2

    const-string v9, "GBK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v9, v0

    int-to-byte v9, v9

    aput-byte v9, v6, v14

    add-int/lit8 v14, v14, 0x1

    array-length v9, v0

    invoke-static {v0, v8, v6, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_10

    add-int/2addr v14, v0

    goto :goto_25

    :catch_10
    move-exception v0

    :try_start_12
    const-string v9, "Req"

    const-string v10, "buildV4Dot214"

    invoke-static {v0, v9, v10}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v8, v6, v14

    add-int/lit8 v14, v14, 0x1

    :goto_25
    aget-object v0, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v13, :cond_1d

    :goto_26
    const/4 v0, 0x0

    goto :goto_27

    :cond_1d
    const/16 v5, -0x80

    if-ge v0, v5, :cond_1e

    goto :goto_26

    :cond_1e
    :goto_27
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v6, v14
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_24

    :catch_11
    move-exception v0

    const-string v5, "Req"

    const-string v9, "buildV4Dot216"

    invoke-static {v0, v5, v9}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    invoke-static {v0, v8, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    aput-byte v8, v6, v14

    add-int/2addr v14, v7

    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v6, v14

    goto :goto_24

    :goto_28
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v9, 0x19

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v5, :cond_1f

    aput-byte v8, v6, v14

    add-int/2addr v14, v7

    const/4 v7, 0x0

    goto/16 :goto_2e

    :cond_1f
    int-to-byte v9, v5

    aput-byte v9, v6, v14

    add-int/2addr v14, v7

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->c()I

    move-result v9

    const/16 v10, 0x11

    if-lt v9, v10, :cond_20

    const/4 v9, 0x1

    goto :goto_29

    :cond_20
    const/4 v9, 0x0

    :goto_29
    const-wide/16 v10, 0x0

    if-eqz v9, :cond_21

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v10

    const-wide/16 v16, 0x3e8

    div-long v10, v10, v16

    :cond_21
    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v5, :cond_26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v4, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/amap/api/mapcore2d/gb;->a(Ljava/lang/String;)[B

    move-result-object v4

    array-length v2, v4

    invoke-static {v4, v8, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v4

    add-int/2addr v14, v2

    :try_start_13
    iget-object v2, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "GBK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v6, v14

    add-int/lit8 v14, v14, 0x1

    array-length v4, v2

    invoke-static {v2, v8, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    add-int/2addr v14, v2

    goto :goto_2b

    :catch_12
    aput-byte v8, v6, v14

    add-int/2addr v14, v7

    :goto_2b
    iget v2, v15, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v13, :cond_22

    :goto_2c
    const/4 v2, 0x0

    goto :goto_2d

    :cond_22
    const/16 v4, -0x80

    if-ge v2, v4, :cond_23

    goto :goto_2c

    :cond_23
    :goto_2d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v6, v14

    add-int/2addr v14, v7

    if-eqz v9, :cond_24

    iget-wide v7, v15, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v7, v10, v7

    const-wide/32 v16, 0xf4240

    div-long v7, v7, v16

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    long-to-int v8, v7

    if-gez v8, :cond_25

    :cond_24
    const/4 v8, 0x0

    :cond_25
    invoke-static {v8, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v2

    array-length v4, v2

    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v14, v2

    iget v2, v15, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v7, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v14, v2

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_2a

    :cond_26
    const/4 v7, 0x0

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->H:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    :goto_2e
    aput-byte v7, v6, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    :try_start_14
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->I:Ljava/lang/String;

    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v0, v9

    if-le v0, v13, :cond_27

    const/4 v9, 0x0

    :cond_27
    if-nez v9, :cond_28

    const/4 v2, 0x0

    aput-byte v2, v6, v14

    const/4 v2, 0x1

    goto :goto_2f

    :cond_28
    array-length v0, v9

    int-to-byte v0, v0

    aput-byte v0, v6, v14

    add-int/lit8 v14, v14, 0x1

    array-length v0, v9

    const/4 v2, 0x0

    invoke-static {v9, v2, v6, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v9
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_13

    add-int/2addr v14, v0

    goto :goto_30

    :catch_13
    const/4 v2, 0x0

    aput-byte v2, v6, v14

    const/4 v2, 0x1

    :goto_2f
    add-int/2addr v14, v2

    :goto_30
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    :try_start_15
    iget-object v2, v1, Lcom/amap/api/mapcore2d/gb;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v4, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    add-int/2addr v14, v5

    if-nez v2, :cond_2a

    :try_start_16
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->L:Ljava/lang/String;

    const-string v2, "GBK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_14

    add-int/2addr v14, v0

    :catch_14
    :cond_2a
    const/4 v2, 0x2

    goto :goto_31

    :catch_15
    const/4 v2, 0x2

    add-int/2addr v14, v2

    :goto_31
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v2, [B

    fill-array-data v5, :array_1

    if-nez v4, :cond_2b

    const/4 v5, 0x0

    :try_start_17
    invoke-static {v5, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    invoke-static {v0, v5, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_16

    :catch_16
    add-int/2addr v14, v2

    goto/16 :goto_38

    :cond_2b
    const/4 v5, 0x0

    :try_start_18
    invoke-static {v4, v3}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v3

    invoke-static {v3, v5, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_17

    :catch_17
    add-int/2addr v14, v2

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v4, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/ft;

    :try_start_19
    iget-object v5, v3, Lcom/amap/api/mapcore2d/ft;->c:[B

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_18

    add-int/2addr v14, v5

    goto :goto_33

    :catch_18
    add-int/lit8 v14, v14, 0x6

    :goto_33
    :try_start_1a
    iget-object v5, v3, Lcom/amap/api/mapcore2d/ft;->a:Ljava/lang/String;

    const-string v7, "GBK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    const/16 v8, 0x20

    if-le v7, v8, :cond_2c

    :goto_34
    const/4 v7, 0x0

    goto :goto_35

    :cond_2c
    array-length v8, v5

    goto :goto_34

    :goto_35
    invoke-static {v5, v7, v6, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_19

    :catch_19
    add-int/lit8 v14, v14, 0x20

    const/4 v5, 0x4

    :try_start_1b
    new-array v7, v5, [B

    fill-array-data v7, :array_2

    iget-object v5, v3, Lcom/amap/api/mapcore2d/ft;->d:Ljava/lang/String;

    const-string v7, "GBK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1a

    :catch_1a
    add-int/lit8 v14, v14, 0x4

    const/4 v5, 0x4

    :try_start_1c
    new-array v7, v5, [B

    fill-array-data v7, :array_3

    iget-object v5, v3, Lcom/amap/api/mapcore2d/ft;->e:Ljava/lang/String;

    const-string v7, "GBK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1b

    :catch_1b
    add-int/lit8 v14, v14, 0x4

    :try_start_1d
    iget v5, v3, Lcom/amap/api/mapcore2d/ft;->g:I

    if-le v5, v13, :cond_2d

    const/4 v5, 0x0

    iput v5, v3, Lcom/amap/api/mapcore2d/ft;->g:I

    const/16 v8, -0x80

    goto :goto_36

    :cond_2d
    const/4 v5, 0x0

    iget v7, v3, Lcom/amap/api/mapcore2d/ft;->g:I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1c

    const/16 v8, -0x80

    if-ge v7, v8, :cond_2e

    :try_start_1e
    iput v5, v3, Lcom/amap/api/mapcore2d/ft;->g:I

    :cond_2e
    :goto_36
    iget v5, v3, Lcom/amap/api/mapcore2d/ft;->g:I

    int-to-byte v5, v5

    aput-byte v5, v6, v14
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1d

    goto :goto_37

    :catch_1c
    const/16 v8, -0x80

    :catch_1d
    :goto_37
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x4

    :try_start_1f
    new-array v7, v5, [B

    iget v5, v3, Lcom/amap/api/mapcore2d/ft;->f:I

    invoke-static {v5, v7}, Lcom/amap/api/mapcore2d/gf;->b(I[B)[B

    move-result-object v5

    array-length v7, v5

    const/4 v9, 0x0

    invoke-static {v5, v9, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1e

    :catch_1e
    add-int/lit8 v14, v14, 0x4

    const/4 v5, 0x4

    :try_start_20
    new-array v7, v5, [B

    iget v3, v3, Lcom/amap/api/mapcore2d/ft;->i:I

    invoke-static {v3, v7}, Lcom/amap/api/mapcore2d/gf;->b(I[B)[B

    move-result-object v3

    array-length v7, v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1f

    :catch_1f
    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_32

    :cond_2f
    :goto_38
    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    array-length v8, v0

    const/4 v2, 0x0

    goto :goto_39

    :cond_30
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_39
    invoke-static {v8, v2}, Lcom/amap/api/mapcore2d/gf;->a(I[B)[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    if-lez v8, :cond_31

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    iget-object v2, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    array-length v2, v2

    invoke-static {v0, v3, v6, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/amap/api/mapcore2d/gb;->J:[B

    array-length v0, v0

    add-int/2addr v14, v0

    :cond_31
    new-array v0, v14, [B

    invoke-static {v6, v3, v0, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/mapcore2d/gf;->a(J)[B

    move-result-object v2

    array-length v4, v2

    add-int/2addr v4, v14

    new-array v4, v4, [B

    invoke-static {v0, v3, v4, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    invoke-static {v2, v3, v4, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

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
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
