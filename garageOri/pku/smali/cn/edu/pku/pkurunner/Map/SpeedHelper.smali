.class public abstract Lcn/edu/pku/pkurunner/Map/SpeedHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUnitOf(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;D)D
    .locals 2

    .line 35
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$1;->a:[I

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    packed-switch p0, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide v0, 0x41b1de784a000000L    # 2.99792458E8

    mul-double p1, p1, v0

    return-wide p1

    :pswitch_1
    mul-double p1, p1, v0

    const-wide v0, 0x3ff999999999999aL    # 1.6

    mul-double p1, p1, v0

    return-wide p1

    :pswitch_2
    const-wide v0, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    div-double/2addr v0, p1

    return-wide v0

    :pswitch_3
    mul-double p1, p1, v0

    return-wide p1

    :pswitch_4
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static meterToLightYear(D)D
    .locals 2

    const-wide v0, 0x4340ce3dfb912360L    # 9.4607304725808E15

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static meterToPlanckLength(D)D
    .locals 2

    const-wide v0, 0x38b57bbe071d60e1L    # 1.616229E-35

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static secondToPlanckTime(D)D
    .locals 2

    const-wide v0, 0x36f33c7e4448f209L    # 5.39116E-44

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static toUnitOf(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;D)D
    .locals 2

    .line 18
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$1;->a:[I

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    packed-switch p0, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide v0, 0x41b1de784a000000L    # 2.99792458E8

    div-double/2addr p1, v0

    return-wide p1

    :pswitch_1
    div-double/2addr p1, v0

    const-wide v0, 0x3ff999999999999aL    # 1.6

    div-double/2addr p1, v0

    return-wide p1

    :pswitch_2
    const-wide v0, 0x4030aaaaaaaaaaabL    # 16.666666666666668

    div-double/2addr v0, p1

    return-wide v0

    :pswitch_3
    div-double/2addr p1, v0

    return-wide p1

    :pswitch_4
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
