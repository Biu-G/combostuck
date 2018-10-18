.class public final enum Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->OTHER:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->OTHER:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->a:[Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->a:[Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    return-object v0
.end method
