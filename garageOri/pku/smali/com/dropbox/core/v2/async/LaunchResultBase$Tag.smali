.class public final enum Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/async/LaunchResultBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

.field private static final synthetic a:[Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    const-string v1, "ASYNC_JOB_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->a:[Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
    .locals 1

    .line 35
    const-class v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->a:[Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/async/LaunchResultBase$Tag;

    return-object v0
.end method
