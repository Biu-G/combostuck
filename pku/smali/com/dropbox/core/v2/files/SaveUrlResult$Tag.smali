.class public final enum Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SaveUrlResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

.field public static final enum COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    const-string v1, "ASYNC_JOB_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    const-string v1, "COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->a:[Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .locals 1

    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->a:[Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    return-object v0
.end method
