.class public final enum Lcom/dropbox/core/v2/team/MembersRemoveError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersRemoveError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersRemoveError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/MembersRemoveError;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "USER_NOT_IN_TEAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "REMOVE_LAST_ADMIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "TRANSFER_DEST_USER_NOT_FOUND"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "TRANSFER_DEST_USER_NOT_IN_TEAM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "TRANSFER_ADMIN_USER_NOT_FOUND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "TRANSFER_ADMIN_USER_NOT_IN_TEAM"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "UNSPECIFIED_TRANSFER_ADMIN_ID"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "TRANSFER_ADMIN_IS_NOT_ADMIN"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "CANNOT_KEEP_ACCOUNT_AND_TRANSFER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    const-string v1, "CANNOT_KEEP_INVITED_USER_ACCOUNT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/team/MembersRemoveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

    const/16 v0, 0x10

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/MembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVE_LAST_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_DEST_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->REMOVED_AND_TRANSFER_ADMIN_SHOULD_DIFFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_DEST_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->UNSPECIFIED_TRANSFER_ADMIN_ID:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->TRANSFER_ADMIN_IS_NOT_ADMIN:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_TRANSFER:Lcom/dropbox/core/v2/team/MembersRemoveError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_ACCOUNT_AND_DELETE_DATA:Lcom/dropbox/core/v2/team/MembersRemoveError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->EMAIL_ADDRESS_TOO_LONG_TO_BE_DISABLED:Lcom/dropbox/core/v2/team/MembersRemoveError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersRemoveError;->CANNOT_KEEP_INVITED_USER_ACCOUNT:Lcom/dropbox/core/v2/team/MembersRemoveError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->a:[Lcom/dropbox/core/v2/team/MembersRemoveError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersRemoveError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersRemoveError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveError;->a:[Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersRemoveError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersRemoveError;

    return-object v0
.end method
