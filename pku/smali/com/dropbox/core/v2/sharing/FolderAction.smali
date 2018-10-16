.class public final enum Lcom/dropbox/core/v2/sharing/FolderAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/FolderAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/FolderAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum CREATE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum SHARE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum UNMOUNT:Lcom/dropbox/core/v2/sharing/FolderAction;

.field public static final enum UNSHARE:Lcom/dropbox/core/v2/sharing/FolderAction;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/FolderAction;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "CHANGE_OPTIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "DISABLE_VIEWER_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "EDIT_CONTENTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "ENABLE_VIEWER_INFO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "INVITE_EDITOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "INVITE_VIEWER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "INVITE_VIEWER_NO_COMMENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "RELINQUISH_MEMBERSHIP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "UNMOUNT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->UNMOUNT:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "UNSHARE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "LEAVE_A_COPY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "SHARE_LINK"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "CREATE_LINK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "SET_ACCESS_INHERITANCE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    const-string v1, "OTHER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/sharing/FolderAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->OTHER:Lcom/dropbox/core/v2/sharing/FolderAction;

    const/16 v0, 0xf

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/FolderAction;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->CHANGE_OPTIONS:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_EDITOR:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->UNMOUNT:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v13

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v14

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->SET_ACCESS_INHERITANCE:Lcom/dropbox/core/v2/sharing/FolderAction;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderAction;->OTHER:Lcom/dropbox/core/v2/sharing/FolderAction;

    aput-object v1, v0, v15

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->a:[Lcom/dropbox/core/v2/sharing/FolderAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FolderAction;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/FolderAction;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/FolderAction;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderAction;->a:[Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/FolderAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/FolderAction;

    return-object v0
.end method
