.class public final enum Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

.field public static final enum SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

.field public static final enum SHARED_LINK_IS_DIRECTORY:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

.field public static final enum SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

.field public static final enum UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v1, "SHARED_LINK_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    .line 27
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v1, "SHARED_LINK_ACCESS_DENIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v1, "UNSUPPORTED_LINK_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const-string v1, "SHARED_LINK_IS_DIRECTORY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_IS_DIRECTORY:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_NOT_FOUND:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_ACCESS_DENIED:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->UNSUPPORTED_LINK_TYPE:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->SHARED_LINK_IS_DIRECTORY:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->a:[Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->a:[Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    return-object v0
.end method
