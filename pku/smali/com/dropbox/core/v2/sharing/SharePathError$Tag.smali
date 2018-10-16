.class public final enum Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharePathError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/SharePathError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_SHARED_FOLDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_SHARED_FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_APP_FOLDER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "CONTAINS_TEAM_FOLDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_APP_FOLDER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_APP_FOLDER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_PUBLIC_FOLDER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_PUBLIC_FOLDER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "ALREADY_SHARED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INVALID_PATH"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "IS_OSX_PACKAGE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "INSIDE_OSX_PACKAGE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const-string v1, "OTHER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const/16 v0, 0xe

    .line 34
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v13

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v14

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v1, v0, v15

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->a:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1

    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1

    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->a:[Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object v0
.end method
