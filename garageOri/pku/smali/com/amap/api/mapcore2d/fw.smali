.class public final Lcom/amap/api/mapcore2d/fw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/fv;",
            ">;"
        }
    .end annotation
.end field

.field static d:J

.field static e:Landroid/telephony/CellLocation;

.field private static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/fv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field c:Landroid/telephony/TelephonyManager;

.field f:Ljava/lang/String;

.field g:Z

.field h:Ljava/lang/StringBuilder;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:I

.field private m:Lcom/amap/api/mapcore2d/fu;

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/fw;->k:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/mapcore2d/fw;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->j:Ljava/lang/String;

    const/16 v2, -0x71

    iput v2, p0, Lcom/amap/api/mapcore2d/fw;->l:I

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->m:Lcom/amap/api/mapcore2d/fu;

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->h:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    const-string v0, "phone"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->i()V

    new-instance p1, Lcom/amap/api/mapcore2d/fu;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/fu;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/fw;->m:Lcom/amap/api/mapcore2d/fu;

    return-void
.end method

.method private varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/gd;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/telephony/CellLocation;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    return-object p1

    :catch_0
    :cond_2
    return-object v0
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/fw;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fw;->m:Lcom/amap/api/mapcore2d/fu;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v4, 0x0

    move-object v5, v0

    :goto_0
    if-ge v4, v3, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    if-eqz v6, :cond_9

    :try_start_0
    invoke-virtual {v6}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v7

    instance-of v8, v6, Landroid/telephony/CellInfoCdma;

    const-wide/32 v9, 0xffff

    if-eqz v8, :cond_3

    check-cast v6, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellIdentityCdma;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/mapcore2d/fv;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/fu;->a(Lcom/amap/api/mapcore2d/fv;)J

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    int-to-short v5, v5

    iput-short v5, v6, Lcom/amap/api/mapcore2d/fv;->l:S

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v5, v6

    goto :goto_2

    :cond_3
    :try_start_2
    instance-of v8, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_5

    check-cast v6, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellIdentityGsm;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v6, v7}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/mapcore2d/fv;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/fu;->a(Lcom/amap/api/mapcore2d/fv;)J

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    int-to-short v5, v5

    iput-short v5, v6, Lcom/amap/api/mapcore2d/fv;->l:S
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_5
    :try_start_4
    instance-of v8, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_7

    check-cast v6, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellIdentityWcdma;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6, v7}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/mapcore2d/fv;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/fu;->a(Lcom/amap/api/mapcore2d/fv;)J

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    int-to-short v5, v5

    iput-short v5, v6, Lcom/amap/api/mapcore2d/fv;->l:S
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_7
    :try_start_6
    instance-of v8, v6, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_9

    check-cast v6, Landroid/telephony/CellInfoLte;

    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellIdentityLte;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v6, v7}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/mapcore2d/fv;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-virtual {v2, v6}, Lcom/amap/api/mapcore2d/fu;->a(Lcom/amap/api/mapcore2d/fv;)J

    move-result-wide v7

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    int-to-short v5, v5

    iput-short v5, v6, Lcom/amap/api/mapcore2d/fv;->l:S
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_1
    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v5, v0

    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget p1, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/fu;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/mapcore2d/fv;

    if-eqz p1, :cond_c

    iget v1, p1, Lcom/amap/api/mapcore2d/fv;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iget v7, p1, Lcom/amap/api/mapcore2d/fv;->i:I

    iget v8, p1, Lcom/amap/api/mapcore2d/fv;->e:I

    iget v9, p1, Lcom/amap/api/mapcore2d/fv;->f:I

    iget v10, p1, Lcom/amap/api/mapcore2d/fv;->g:I

    iget v11, p1, Lcom/amap/api/mapcore2d/fv;->h:I

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :cond_c
    new-instance p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {p1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v1, v5, Lcom/amap/api/mapcore2d/fv;->c:I

    iget v2, v5, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    goto :goto_3

    :cond_d
    move-object p1, v0

    :goto_3
    if-nez v0, :cond_e

    return-object p1

    :cond_e
    :goto_4
    return-object v0
.end method

.method private static a(IZIIIII)Lcom/amap/api/mapcore2d/fv;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore2d/fv;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/fv;-><init>(IZ)V

    iput p2, v0, Lcom/amap/api/mapcore2d/fv;->a:I

    iput p3, v0, Lcom/amap/api/mapcore2d/fv;->b:I

    iput p4, v0, Lcom/amap/api/mapcore2d/fv;->c:I

    iput p5, v0, Lcom/amap/api/mapcore2d/fv;->d:I

    iput p6, v0, Lcom/amap/api/mapcore2d/fv;->j:I

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfoCdma;Z)Lcom/amap/api/mapcore2d/fv;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :try_start_1
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v1

    move v6, v3

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :catch_1
    move v6, v3

    const/4 v7, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v10

    move v5, p2

    invoke-static/range {v4 .. v10}, Lcom/amap/api/mapcore2d/fw;->a(IZIIIII)Lcom/amap/api/mapcore2d/fv;

    move-result-object p1

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/mapcore2d/fv;->g:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/mapcore2d/fv;->h:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p2

    iput p2, p1, Lcom/amap/api/mapcore2d/fv;->i:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/mapcore2d/fv;->e:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result p2

    iput p2, p1, Lcom/amap/api/mapcore2d/fv;->f:I

    return-object p1
.end method

.method private static a(Landroid/telephony/CellInfoGsm;Z)Lcom/amap/api/mapcore2d/fv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v7

    const/4 v1, 0x1

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/mapcore2d/fw;->a(IZIIIII)Lcom/amap/api/mapcore2d/fv;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoLte;Z)Lcom/amap/api/mapcore2d/fv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v7

    const/4 v1, 0x3

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/mapcore2d/fw;->a(IZIIIII)Lcom/amap/api/mapcore2d/fv;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfoWcdma;Z)Lcom/amap/api/mapcore2d/fv;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v5

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v7

    const/4 v1, 0x4

    move v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amap/api/mapcore2d/fw;->a(IZIIIII)Lcom/amap/api/mapcore2d/fv;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fv;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/fv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/fv;-><init>(IZ)V

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/amap/api/mapcore2d/fv;->a:I

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/mapcore2d/fv;->b:I

    const-string p1, "getLac"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/mapcore2d/fv;->d:I

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/gf;->a(I)I

    move-result p0

    iput p0, v0, Lcom/amap/api/mapcore2d/fv;->j:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "CgiManager"

    const-string v0, "getGsm"

    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/fv;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/fw;->c(Landroid/telephony/CellLocation;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fv;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/fw;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p2}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/NeighboringCellInfo;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fv;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-lez p0, :cond_1

    const/16 v0, 0xf

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(II)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v1, 0xffff

    if-gt p0, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const p0, 0xfffffff

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static a(Landroid/telephony/CellIdentityCdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityGsm;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/fw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/fw;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityLte;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/fw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/fw;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static a(Landroid/telephony/CellIdentityWcdma;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/fw;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    invoke-static {p0}, Lcom/amap/api/mapcore2d/fw;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/fw;->b(Landroid/telephony/CellLocation;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    const-string v2, "getSystemId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "getNetworkId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "getBaseStationId"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iCdmaT"

    goto :goto_0

    :pswitch_1
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    invoke-static {v2, p1}, Lcom/amap/api/mapcore2d/fw;->a(II)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v1, p1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v2, "CgiManager"

    const-string v3, "cgiUseful Cgi.iGsmT"

    :goto_0
    invoke-static {p1, v2, v3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/telephony/CellLocation;)I
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string p1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Utils"

    const-string v2, "getCellLocT"

    invoke-static {p1, v0, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/fv;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->c()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mGsmCellLoc"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    new-instance v3, Lcom/amap/api/mapcore2d/fv;

    invoke-direct {v3, v0, v1}, Lcom/amap/api/mapcore2d/fv;-><init>(IZ)V

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/amap/api/mapcore2d/fv;->a:I

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->b:I

    const-string p2, "getSystemId"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->g:I

    const-string p2, "getNetworkId"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->h:I

    const-string p2, "getBaseStationId"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->i:I

    iget p2, p0, Lcom/amap/api/mapcore2d/fw;->l:I

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->j:I

    const-string p2, "getBaseStationLatitude"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p2

    iput p2, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    const-string p2, "getBaseStationLongitude"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gd;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    iput p1, v3, Lcom/amap/api/mapcore2d/fv;->f:I

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    if-ltz p1, :cond_6

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->f:I

    if-ltz p1, :cond_6

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_6

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->f:I

    if-eq p1, p2, :cond_6

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    iget p2, v3, Lcom/amap/api/mapcore2d/fv;->f:I

    if-ne p1, p2, :cond_7

    iget p1, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    if-lez p1, :cond_7

    :cond_6
    iput v2, v3, Lcom/amap/api/mapcore2d/fv;->e:I

    iput v2, v3, Lcom/amap/api/mapcore2d/fv;->f:I

    :cond_7
    sget-object p1, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    return-void

    :catch_1
    move-exception p1

    const-string p2, "CgiManager"

    const-string v0, "hdlCdmaLocChange"

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Landroid/telephony/CellLocation;[Ljava/lang/String;)Lcom/amap/api/mapcore2d/fv;
    .locals 3

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    new-instance v0, Lcom/amap/api/mapcore2d/fv;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/amap/api/mapcore2d/fv;-><init>(IZ)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/amap/api/mapcore2d/fv;->a:I

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/amap/api/mapcore2d/fv;->b:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p2

    iput p2, v0, Lcom/amap/api/mapcore2d/fv;->c:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v0, Lcom/amap/api/mapcore2d/fv;->d:I

    iget p1, p0, Lcom/amap/api/mapcore2d/fw;->l:I

    iput p1, v0, Lcom/amap/api/mapcore2d/fv;->j:I

    return-object v0
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const v0, 0xffff

    if-eq p0, v0, :cond_1

    const v0, 0xfffffff

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->b(Landroid/telephony/CellLocation;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    const-string v1, "CgiManager"

    const-string v2, "CgiManager"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->s()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;

    return-void

    :goto_1
    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()Landroid/telephony/CellLocation;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v0, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    const-string v2, "CgiManager"

    const-string v3, "getCellLocation"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1
.end method

.method private k()Z
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/mapcore2d/fw;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->r()V

    return-void
.end method

.method private m()V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private n()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->o()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->p()Landroid/telephony/CellLocation;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sput-object v0, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/fw;->b(Landroid/telephony/CellLocation;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v1, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/fw;->b(Landroid/telephony/CellLocation;[Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;[Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o()Landroid/telephony/CellLocation;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->j()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/fw;->a(Landroid/telephony/CellLocation;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->c()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const-string v1, "getCellLocationExt"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0, v0, v1, v3}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const-string v1, "getCellLocationGemini"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-direct {p0, v0, v1, v3}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_5
    return-object v0
.end method

.method private p()Landroid/telephony/CellLocation;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->q()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getCellLocation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v4}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_2
    const-string v4, "getCellLocationGemini"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    :try_start_3
    const-string v2, "getAllCellInfo"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-direct {p0, v0, v2, v5}, Lcom/amap/api/mapcore2d/fw;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Landroid/telephony/CellLocation;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_4

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v2, "CgiManager"

    const-string v3, "getSim2Cgi"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private q()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    goto :goto_0

    :pswitch_0
    const-string v1, "android.telephony.TelephonyManager2"

    goto :goto_0

    :pswitch_1
    const-string v1, "android.telephony.MSimTelephonyManager"

    goto :goto_0

    :pswitch_2
    const-string v1, "android.telephony.TelephonyManager"

    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v3, "getSim2TmClass"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore2d/fw;->e:Landroid/telephony/CellLocation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    sget-object v0, Lcom/amap/api/mapcore2d/fw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private s()I
    .locals 1

    :try_start_0
    const-string v0, "android.telephony.MSimTelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "android.telephony.TelephonyManager2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->o:I

    return v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/fw;->a:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final e()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/gf;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->n()V

    invoke-static {}, Lcom/amap/api/mapcore2d/gf;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore2d/fw;->d:J

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/fw;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->l()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fw;->m()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CgiManager"

    const-string v2, "refresh"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/gc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->f:Ljava/lang/String;

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->m:Lcom/amap/api/mapcore2d/fu;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/fu;->a()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/amap/api/mapcore2d/fw;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->c:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/fw;->n:Ljava/lang/Object;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/fw;->j:Ljava/lang/String;

    return-object v0
.end method
