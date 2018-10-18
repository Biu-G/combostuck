.class public final enum Lcom/dropbox/core/v2/paper/PaperDocCreateError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocCreateError$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/paper/PaperDocCreateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

.field private static final synthetic a:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "INSUFFICIENT_PERMISSIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "CONTENT_MALFORMED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "FOLDER_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "DOC_LENGTH_EXCEEDED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const-string v1, "IMAGE_SIZE_EXCEEDED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    const/4 v0, 0x6

    .line 18
    new-array v0, v0, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->a:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/PaperDocCreateError;
    .locals 1

    .line 18
    const-class v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/paper/PaperDocCreateError;
    .locals 1

    .line 18
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->a:[Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    return-object v0
.end method
