.class final enum Lcn/edu/pku/pkurunner/Map/MapPresenter$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/MapPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/Map/MapPresenter$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

.field public static final enum b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

.field public static final enum c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

.field private static final synthetic d:[Lcn/edu/pku/pkurunner/Map/MapPresenter$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 59
    new-instance v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    .line 63
    new-instance v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const-string v1, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->a:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->b:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    aput-object v1, v0, v3

    sget-object v1, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->c:Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    aput-object v1, v0, v4

    sput-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->d:[Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Map/MapPresenter$c;
    .locals 1

    .line 51
    const-class v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/Map/MapPresenter$c;
    .locals 1

    .line 51
    sget-object v0, Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->d:[Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/Map/MapPresenter$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/Map/MapPresenter$c;

    return-object v0
.end method
