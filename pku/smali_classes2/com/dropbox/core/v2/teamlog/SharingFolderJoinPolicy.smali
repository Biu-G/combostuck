.class public final enum Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FROM_ANYONE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

.field public static final enum FROM_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    const-string v1, "FROM_ANYONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_ANYONE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    const-string v1, "FROM_TEAM_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_ANYONE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;
    .locals 1

    .line 22
    const-class v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;
    .locals 1

    .line 22
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    return-object v0
.end method
