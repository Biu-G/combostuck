.class public final enum Lcom/dropbox/core/v2/sharing/MemberAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MemberAction$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/MemberAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

.field private static final synthetic a:[Lcom/dropbox/core/v2/sharing/MemberAction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "LEAVE_A_COPY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "MAKE_EDITOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "MAKE_OWNER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "MAKE_VIEWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "MAKE_VIEWER_NO_COMMENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "REMOVE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string v1, "OTHER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/MemberAction;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v8

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->a:[Lcom/dropbox/core/v2/sharing/MemberAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 1

    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/MemberAction;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 1

    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->a:[Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/MemberAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/MemberAction;

    return-object v0
.end method
