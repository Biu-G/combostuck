.class public final enum Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AclUpdatePolicy$Serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EDITORS:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field public static final enum OWNER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const-string v1, "OWNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->OWNER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const-string v1, "EDITORS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->EDITORS:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->OTHER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->OWNER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->EDITORS:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->OTHER:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->a:[Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .line 22
    const-class v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 1

    .line 22
    sget-object v0, Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->a:[Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object v0
.end method
