.class public final enum Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const-string v1, "DISABLED_FOR_TEAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->OTHER:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->OTHER:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->a:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;
    .locals 1

    .line 20
    const-class v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;
    .locals 1

    .line 20
    sget-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->a:[Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    return-object v0
.end method
