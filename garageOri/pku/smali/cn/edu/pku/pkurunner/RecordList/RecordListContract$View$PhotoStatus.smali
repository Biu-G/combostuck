.class public final enum Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cancelled:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

.field public static final enum Ignored:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

.field public static final enum RecentShot:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

.field public static final enum UseLast:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

.field private static final synthetic a:[Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 28
    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    const-string v1, "RecentShot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->RecentShot:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    const-string v1, "UseLast"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->UseLast:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    const-string v1, "Ignored"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Ignored:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    const-string v1, "Cancelled"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Cancelled:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->RecentShot:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->UseLast:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Ignored:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->Cancelled:Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->a:[Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;
    .locals 1

    .line 27
    const-class v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    return-object p0
.end method

.method public static values()[Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;
    .locals 1

    .line 27
    sget-object v0, Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->a:[Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    invoke-virtual {v0}, [Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View$PhotoStatus;

    return-object v0
.end method
