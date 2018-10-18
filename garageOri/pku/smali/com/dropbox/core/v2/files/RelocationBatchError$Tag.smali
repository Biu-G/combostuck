.class public final enum Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "FROM_LOOKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "FROM_WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "TO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "CANT_COPY_SHARED_FOLDER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "CANT_NEST_SHARED_FOLDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "CANT_MOVE_FOLDER_INTO_ITSELF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "TOO_MANY_FILES"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "DUPLICATED_OR_NESTED_PATHS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "CANT_TRANSFER_OWNERSHIP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "INSUFFICIENT_QUOTA"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "OTHER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string v1, "TOO_MANY_WRITE_OPERATIONS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const/16 v0, 0xc

    .line 30
    new-array v0, v0, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v8

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v9

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v10

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v11

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v12

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v13

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->a:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->a:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method
