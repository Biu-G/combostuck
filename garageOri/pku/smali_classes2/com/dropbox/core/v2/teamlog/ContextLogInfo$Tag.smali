.class public final enum Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field public static final enum NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field public static final enum TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field public static final enum TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const-string v1, "TEAM_MEMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const-string v1, "NON_TEAM_MEMBER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const-string v1, "ANONYMOUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const-string v1, "TEAM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const/4 v0, 0x5

    .line 36
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->a:[Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
    .locals 1

    .line 36
    const-class v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->a:[Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-object v0
.end method
