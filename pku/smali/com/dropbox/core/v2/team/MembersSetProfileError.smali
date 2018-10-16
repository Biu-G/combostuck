.class public final enum Lcom/dropbox/core/v2/team/MembersSetProfileError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersSetProfileError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/MembersSetProfileError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRECTORY_RESTRICTED_OFF:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field public static final enum USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetProfileError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/team/MembersSetProfileError;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "USER_NOT_IN_TEAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "NO_NEW_DATA_SPECIFIED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "EMAIL_RESERVED_FOR_OTHER_USER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "EXTERNAL_ID_USED_BY_OTHER_USER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "SET_PROFILE_DISALLOWED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "PARAM_CANNOT_BE_EMPTY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "PERSISTENT_ID_DISABLED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "PERSISTENT_ID_USED_BY_OTHER_USER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "DIRECTORY_RESTRICTED_OFF"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->DIRECTORY_RESTRICTED_OFF:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const-string v1, "OTHER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/team/MembersSetProfileError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->OTHER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    const/16 v0, 0xc

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/team/MembersSetProfileError;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->USER_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_AND_NEW_EXTERNAL_ID_UNSAFE:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->NO_NEW_DATA_SPECIFIED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EMAIL_RESERVED_FOR_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->EXTERNAL_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->SET_PROFILE_DISALLOWED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PARAM_CANNOT_BE_EMPTY:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->PERSISTENT_ID_USED_BY_OTHER_USER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->DIRECTORY_RESTRICTED_OFF:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/team/MembersSetProfileError;->OTHER:Lcom/dropbox/core/v2/team/MembersSetProfileError;

    aput-object v1, v0, v13

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->a:[Lcom/dropbox/core/v2/team/MembersSetProfileError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MembersSetProfileError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;->a:[Lcom/dropbox/core/v2/team/MembersSetProfileError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MembersSetProfileError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MembersSetProfileError;

    return-object v0
.end method
