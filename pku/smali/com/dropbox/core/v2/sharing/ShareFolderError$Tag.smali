.class public final enum Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ShareFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field public static final enum TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "EMAIL_UNVERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "BAD_PATH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "TEAM_POLICY_DISALLOWS_MEMBER_POLICY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "DISALLOWED_SHARED_LINK_POLICY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const-string v1, "NO_PERMISSION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->BAD_PATH:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->a:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .line 30
    const-class v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->a:[Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/ShareFolderError$Tag;

    return-object v0
.end method
