.class public final enum Lcom/dropbox/core/v2/files/ListFolderLongpollError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderLongpollError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/ListFolderLongpollError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

.field public static final enum RESET:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/files/ListFolderLongpollError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/ListFolderLongpollError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->RESET:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/ListFolderLongpollError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->RESET:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->OTHER:Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->a:[Lcom/dropbox/core/v2/files/ListFolderLongpollError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderLongpollError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/ListFolderLongpollError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;->a:[Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/ListFolderLongpollError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    return-object v0
.end method
