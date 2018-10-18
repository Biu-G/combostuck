.class public final enum Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/SpeedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SPEED_UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum C:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field public static final enum KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field public static final enum MeterPerSecond:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field public static final enum MilePerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field public static final enum MinutePerKilometer:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

.field private static final synthetic a:[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const-string v1, "MeterPerSecond"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MeterPerSecond:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 6
    new-instance v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const-string v1, "KilometerPerHour"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 7
    new-instance v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const-string v1, "MinutePerKilometer"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MinutePerKilometer:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 8
    new-instance v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const-string v1, "MilePerHour"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MilePerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    .line 9
    new-instance v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const-string v1, "C"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->C:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MeterPerSecond:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->KilometerPerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    aput-object v1, v0, v3

    sget-object v1, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MinutePerKilometer:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    aput-object v1, v0, v4

    sget-object v1, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->MilePerHour:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    aput-object v1, v0, v5

    sget-object v1, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->C:Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    aput-object v1, v0, v6

    sput-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->a:[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;
    .locals 1

    .line 4
    const-class v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;
    .locals 1

    .line 4
    sget-object v0, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->a:[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    return-object v0
.end method
