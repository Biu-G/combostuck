.class public final enum Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISALLOWED:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const-string v1, "DISALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->DISALLOWED:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->DISALLOWED:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->a:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->a:[Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    return-object v0
.end method