.class public final enum Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordPlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

.field public static final enum UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

.field public static final enum WEIMING:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

.field public static final enum WUSI:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 350
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    const-string v1, "WUSI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WUSI:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    const-string v1, "WEIMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WEIMING:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    const/4 v0, 0x3

    .line 349
    new-array v0, v0, [Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    sget-object v1, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WUSI:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->WEIMING:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    aput-object v1, v0, v3

    sget-object v1, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    aput-object v1, v0, v4

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->$VALUES:[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;
    .locals 1

    .line 349
    const-class v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;
    .locals 1

    .line 349
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->$VALUES:[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    return-object v0
.end method
