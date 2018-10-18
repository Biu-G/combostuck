.class public final enum Lcom/dropbox/core/v2/auth/RateLimitReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/RateLimitReason$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/auth/RateLimitReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/auth/RateLimitReason;

.field public static final enum TOO_MANY_REQUESTS:Lcom/dropbox/core/v2/auth/RateLimitReason;

.field public static final enum TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/auth/RateLimitReason;

.field private static final synthetic a:[Lcom/dropbox/core/v2/auth/RateLimitReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/auth/RateLimitReason;

    const-string v1, "TOO_MANY_REQUESTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/auth/RateLimitReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason;->TOO_MANY_REQUESTS:Lcom/dropbox/core/v2/auth/RateLimitReason;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/auth/RateLimitReason;

    const-string v1, "TOO_MANY_WRITE_OPERATIONS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/auth/RateLimitReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/auth/RateLimitReason;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/auth/RateLimitReason;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/auth/RateLimitReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason;->OTHER:Lcom/dropbox/core/v2/auth/RateLimitReason;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/auth/RateLimitReason;

    sget-object v1, Lcom/dropbox/core/v2/auth/RateLimitReason;->TOO_MANY_REQUESTS:Lcom/dropbox/core/v2/auth/RateLimitReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/auth/RateLimitReason;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/auth/RateLimitReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/auth/RateLimitReason;->OTHER:Lcom/dropbox/core/v2/auth/RateLimitReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason;->a:[Lcom/dropbox/core/v2/auth/RateLimitReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/auth/RateLimitReason;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/auth/RateLimitReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/auth/RateLimitReason;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/auth/RateLimitReason;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/auth/RateLimitReason;->a:[Lcom/dropbox/core/v2/auth/RateLimitReason;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/auth/RateLimitReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/auth/RateLimitReason;

    return-object v0
.end method
