.class public final enum Lcom/dropbox/core/v2/team/DesktopPlatform;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/DesktopPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field public static final enum WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/DesktopPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v1, "MAC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v1, "LINUX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/DesktopPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/DesktopPlatform;

    sget-object v1, Lcom/dropbox/core/v2/team/DesktopPlatform;->WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/DesktopPlatform;->MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/DesktopPlatform;->LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/DesktopPlatform;->OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->a:[Lcom/dropbox/core/v2/team/DesktopPlatform;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->a:[Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/DesktopPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/DesktopPlatform;

    return-object v0
.end method
