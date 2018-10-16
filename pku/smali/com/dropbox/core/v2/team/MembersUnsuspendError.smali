.class public final enum Lcom/dropbox/core/v2/team/MembersUnsuspendError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersUnsuspendError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersUnsuspendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

.field public static final enum TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

.field public static final enum UNSUSPEND_NON_SUSPENDED_MEMBER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/MembersUnsuspendError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v1, "USER_NOT_IN_TEAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v1, "UNSUSPEND_NON_SUSPENDED_MEMBER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->UNSUSPEND_NON_SUSPENDED_MEMBER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const-string v1, "TEAM_LICENSE_LIMIT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MembersUnsuspendError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->OTHER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->UNSUSPEND_NON_SUSPENDED_MEMBER:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->a:[Lcom/dropbox/core/v2/team/MembersUnsuspendError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersUnsuspendError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersUnsuspendError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;->a:[Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersUnsuspendError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    return-object v0
.end method
