.class public final enum Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

.field public static final enum ENABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->DISABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    const-string v1, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->ENABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->DISABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->ENABLED:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->a:[Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->a:[Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/ShowcaseEnabledPolicy;

    return-object v0
.end method