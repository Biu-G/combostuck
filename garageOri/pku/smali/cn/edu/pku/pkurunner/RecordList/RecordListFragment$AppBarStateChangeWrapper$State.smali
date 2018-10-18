.class public final enum Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

.field public static final enum EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

.field public static final enum IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

.field private static final synthetic a:[Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 456
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    .line 457
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    const-string v1, "COLLAPSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    .line 458
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    const-string v1, "IDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    const/4 v0, 0x3

    .line 455
    new-array v0, v0, [Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->EXPANDED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->COLLAPSED:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->IDLE:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    aput-object v1, v0, v4

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->a:[Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 455
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;
    .locals 1

    .line 455
    const-class v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;
    .locals 1

    .line 455
    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->a:[Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/RecordList/RecordListFragment$AppBarStateChangeWrapper$State;

    return-object v0
.end method
