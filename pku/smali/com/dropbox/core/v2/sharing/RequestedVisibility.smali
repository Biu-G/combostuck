.class public final enum Lcom/dropbox/core/v2/sharing/RequestedVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RequestedVisibility$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/RequestedVisibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PASSWORD:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

.field public static final enum PUBLIC:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/RequestedVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RequestedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    const-string v1, "TEAM_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/RequestedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    const-string v1, "PASSWORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/RequestedVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->PUBLIC:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->PASSWORD:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->a:[Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .locals 1

    .line 25
    const-class v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .locals 1

    .line 25
    sget-object v0, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->a:[Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/RequestedVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    return-object v0
.end method