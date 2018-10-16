.class public final enum Lcom/dropbox/core/v2/teamlog/EventCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/EventCategory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SHOWCASE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field public static final enum TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/EventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "APPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "COMMENTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "DEVICES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "DOMAINS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "FILE_OPERATIONS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "FILE_REQUESTS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "GROUPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "LOGINS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "MEMBERS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "PAPER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "PASSWORDS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "REPORTS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "SHARING"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "SHOWCASE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHOWCASE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "SSO"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "TEAM_FOLDERS"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "TEAM_POLICIES"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "TEAM_PROFILE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "TFA"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    const-string v1, "OTHER"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/teamlog/EventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v0, 0x14

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v13

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    aput-object v1, v0, v14

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHOWCASE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->a:[Lcom/dropbox/core/v2/teamlog/EventCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->a:[Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/EventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/EventCategory;

    return-object v0
.end method
