.class public final enum Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAUSE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GPS_NOT_PROVIDED:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

.field public static final enum MOCK_LOCATION:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

.field private static final synthetic a:[Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 191
    new-instance v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    const-string v1, "GPS_NOT_PROVIDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->GPS_NOT_PROVIDED:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    new-instance v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    const-string v1, "MOCK_LOCATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->MOCK_LOCATION:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->GPS_NOT_PROVIDED:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->MOCK_LOCATION:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    aput-object v1, v0, v3

    sput-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->a:[Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;
    .locals 1

    .line 191
    const-class v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;
    .locals 1

    .line 191
    sget-object v0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->a:[Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    return-object v0
.end method
