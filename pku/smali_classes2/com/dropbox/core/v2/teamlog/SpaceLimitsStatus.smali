.class public final enum Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NEAR_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

.field public static final enum OVER_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

.field public static final enum WITHIN_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    const-string v1, "WITHIN_QUOTA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->WITHIN_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    const-string v1, "NEAR_QUOTA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->NEAR_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    .line 22
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    const-string v1, "OVER_QUOTA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->OVER_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->OTHER:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->WITHIN_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->NEAR_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->OVER_QUOTA:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->OTHER:Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->a:[Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->a:[Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SpaceLimitsStatus;

    return-object v0
.end method
