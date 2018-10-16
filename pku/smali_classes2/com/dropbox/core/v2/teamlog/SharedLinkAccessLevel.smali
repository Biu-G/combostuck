.class public final enum Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

.field public static final enum READER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

.field public static final enum WRITER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->NONE:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    const-string v1, "READER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->READER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    const-string v1, "WRITER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->WRITER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->NONE:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->READER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->WRITER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->OTHER:Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->a:[Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->a:[Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharedLinkAccessLevel;

    return-object v0
.end method
