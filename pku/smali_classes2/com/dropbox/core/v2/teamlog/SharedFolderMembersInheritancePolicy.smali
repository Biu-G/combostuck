.class public final enum Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONT_INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

.field public static final enum INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    const-string v1, "INHERIT_MEMBERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    const-string v1, "DONT_INHERIT_MEMBERS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->DONT_INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->DONT_INHERIT_MEMBERS:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharedFolderMembersInheritancePolicy;

    return-object v0
.end method