.class public final enum Lcom/dropbox/core/v2/team/SetCustomQuotaError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/SetCustomQuotaError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/SetCustomQuotaError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

.field public static final enum SOME_USERS_ARE_EXCLUDED:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

.field public static final enum TOO_MANY_USERS:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/SetCustomQuotaError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    const-string v1, "TOO_MANY_USERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/SetCustomQuotaError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->TOO_MANY_USERS:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/SetCustomQuotaError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->OTHER:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    const-string v1, "SOME_USERS_ARE_EXCLUDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/SetCustomQuotaError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->SOME_USERS_ARE_EXCLUDED:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    sget-object v1, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->TOO_MANY_USERS:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->OTHER:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->SOME_USERS_ARE_EXCLUDED:Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->a:[Lcom/dropbox/core/v2/team/SetCustomQuotaError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/SetCustomQuotaError;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/SetCustomQuotaError;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/team/SetCustomQuotaError;->a:[Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/SetCustomQuotaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/SetCustomQuotaError;

    return-object v0
.end method
