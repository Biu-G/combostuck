.class public final enum Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ResolvedVisibility$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/ResolvedVisibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field public static final enum PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field public static final enum PUBLIC:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field public static final enum SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field public static final enum TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/ResolvedVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "TEAM_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "PASSWORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "TEAM_AND_PASSWORD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "SHARED_FOLDER_ONLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const-string v1, "OTHER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->OTHER:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->TEAM_AND_PASSWORD:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->SHARED_FOLDER_ONLY:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->OTHER:Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->a:[Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .locals 1

    .line 24
    const-class v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/ResolvedVisibility;
    .locals 1

    .line 24
    sget-object v0, Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->a:[Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/ResolvedVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/ResolvedVisibility;

    return-object v0
.end method
