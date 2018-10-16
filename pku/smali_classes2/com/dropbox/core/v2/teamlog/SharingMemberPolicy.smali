.class public final enum Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

.field public static final enum FORBID:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->ALLOW:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    const-string v1, "FORBID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->FORBID:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->ALLOW:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->FORBID:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->a:[Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    return-object v0
.end method
