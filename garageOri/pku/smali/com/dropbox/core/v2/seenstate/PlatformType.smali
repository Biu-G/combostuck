.class public final enum Lcom/dropbox/core/v2/seenstate/PlatformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/seenstate/PlatformType$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/seenstate/PlatformType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESKTOP:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum MOBILE:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum UNKNOWN:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field public static final enum WEB:Lcom/dropbox/core/v2/seenstate/PlatformType;

.field private static final synthetic a:[Lcom/dropbox/core/v2/seenstate/PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "WEB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->WEB:Lcom/dropbox/core/v2/seenstate/PlatformType;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "MOBILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->MOBILE:Lcom/dropbox/core/v2/seenstate/PlatformType;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "DESKTOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->DESKTOP:Lcom/dropbox/core/v2/seenstate/PlatformType;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->UNKNOWN:Lcom/dropbox/core/v2/seenstate/PlatformType;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    const-string v1, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/seenstate/PlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->OTHER:Lcom/dropbox/core/v2/seenstate/PlatformType;

    const/4 v0, 0x5

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/seenstate/PlatformType;

    sget-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->WEB:Lcom/dropbox/core/v2/seenstate/PlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->MOBILE:Lcom/dropbox/core/v2/seenstate/PlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->DESKTOP:Lcom/dropbox/core/v2/seenstate/PlatformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->UNKNOWN:Lcom/dropbox/core/v2/seenstate/PlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/seenstate/PlatformType;->OTHER:Lcom/dropbox/core/v2/seenstate/PlatformType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->a:[Lcom/dropbox/core/v2/seenstate/PlatformType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/seenstate/PlatformType;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/seenstate/PlatformType;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/seenstate/PlatformType;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/seenstate/PlatformType;->a:[Lcom/dropbox/core/v2/seenstate/PlatformType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/seenstate/PlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/seenstate/PlatformType;

    return-object v0
.end method
