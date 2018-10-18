.class public final enum Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field public static final enum USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "ADMIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "RESELLER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "DROPBOX"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "ANONYMOUS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const-string v1, "OTHER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    const/4 v0, 0x7

    .line 36
    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v1, v0, v8

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->a:[Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    .locals 1

    .line 36
    const-class v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->a:[Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object v0
.end method
