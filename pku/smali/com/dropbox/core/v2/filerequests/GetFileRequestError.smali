.class public final enum Lcom/dropbox/core/v2/filerequests/GetFileRequestError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/GetFileRequestError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/filerequests/GetFileRequestError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_LACKS_ACCESS:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum NOT_A_FOLDER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum NOT_FOUND:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field public static final enum VALIDATION_ERROR:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/filerequests/GetFileRequestError;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 25
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "DISABLED_FOR_TEAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->OTHER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NOT_FOUND:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "NOT_A_FOLDER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NOT_A_FOLDER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "APP_LACKS_ACCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->APP_LACKS_ACCESS:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "NO_PERMISSION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NO_PERMISSION:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "EMAIL_UNVERIFIED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const-string v1, "VALIDATION_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->VALIDATION_ERROR:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    const/16 v0, 0x8

    .line 20
    new-array v0, v0, [Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->DISABLED_FOR_TEAM:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->OTHER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NOT_FOUND:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NOT_A_FOLDER:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->APP_LACKS_ACCESS:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->NO_PERMISSION:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->VALIDATION_ERROR:Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    aput-object v1, v0, v9

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->a:[Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/GetFileRequestError;
    .locals 1

    .line 20
    const-class v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/filerequests/GetFileRequestError;
    .locals 1

    .line 20
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->a:[Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/filerequests/GetFileRequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    return-object v0
.end method
