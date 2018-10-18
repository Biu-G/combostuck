.class public abstract Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver$a;
    }
.end annotation


# static fields
.field public static final NULL_RESOURCE:I = 0x7f08006e

.field public static final UNACHIEVED_RESOURCE:I = 0x7f08006e

.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;->a:Ljava/util/HashMap;

    .line 18
    sget-object v0, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;->a:Ljava/util/HashMap;

    const-string v1, "daily"

    const v2, 0x7f08006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver$a;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 22
    sget-object v0, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 25
    :cond_0
    new-instance p0, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver$a;

    invoke-direct {p0}, Lcn/edu/pku/pkurunner/TaskList/BadgeResourceResolver$a;-><init>()V

    throw p0
.end method
