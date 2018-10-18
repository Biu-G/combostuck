.class public final enum Lcom/dropbox/core/v2/teamlog/MemberStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberStatus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/MemberStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field public static final enum INVITED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field public static final enum NOT_JOINED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field public static final enum REMOVED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field public static final enum SUSPENDED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/MemberStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "NOT_JOINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->NOT_JOINED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "INVITED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->INVITED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 22
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->ACTIVE:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "SUSPENDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "REMOVED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->REMOVED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const-string v1, "OTHER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/teamlog/MemberStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->OTHER:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    const/4 v0, 0x6

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/MemberStatus;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->NOT_JOINED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->INVITED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->ACTIVE:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->REMOVED:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/teamlog/MemberStatus;->OTHER:Lcom/dropbox/core/v2/teamlog/MemberStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->a:[Lcom/dropbox/core/v2/teamlog/MemberStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/MemberStatus;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberStatus;->a:[Lcom/dropbox/core/v2/teamlog/MemberStatus;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/MemberStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/MemberStatus;

    return-object v0
.end method
