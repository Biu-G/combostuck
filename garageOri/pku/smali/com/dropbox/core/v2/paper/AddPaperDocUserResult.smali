.class public final enum Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/AddPaperDocUserResult$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAILY_LIMIT_REACHED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum FAILED_USER_DATA_RETRIEVAL:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum PERMISSION_ALREADY_GRANTED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum SHARING_OUTSIDE_TEAM_DISABLED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum UNKNOWN_ERROR:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field public static final enum USER_IS_OWNER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

.field private static final synthetic a:[Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SUCCESS:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "SHARING_OUTSIDE_TEAM_DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SHARING_OUTSIDE_TEAM_DISABLED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "DAILY_LIMIT_REACHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->DAILY_LIMIT_REACHED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "USER_IS_OWNER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->USER_IS_OWNER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "FAILED_USER_DATA_RETRIEVAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->FAILED_USER_DATA_RETRIEVAL:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "PERMISSION_ALREADY_GRANTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->PERMISSION_ALREADY_GRANTED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const-string v1, "OTHER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->OTHER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    const/16 v0, 0x8

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SUCCESS:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->SHARING_OUTSIDE_TEAM_DISABLED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->DAILY_LIMIT_REACHED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->USER_IS_OWNER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->FAILED_USER_DATA_RETRIEVAL:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->PERMISSION_ALREADY_GRANTED:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->OTHER:Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    aput-object v1, v0, v9

    sput-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->a:[Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->a:[Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/AddPaperDocUserResult;

    return-object v0
.end method
