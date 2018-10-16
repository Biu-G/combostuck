.class final enum Lcom/amap/api/mapcore2d/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/mapcore2d/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore2d/q$a;

.field public static final enum b:Lcom/amap/api/mapcore2d/q$a;

.field public static final enum c:Lcom/amap/api/mapcore2d/q$a;

.field public static final enum d:Lcom/amap/api/mapcore2d/q$a;

.field private static final synthetic e:[Lcom/amap/api/mapcore2d/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lcom/amap/api/mapcore2d/q$a;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/q$a;->a:Lcom/amap/api/mapcore2d/q$a;

    new-instance v0, Lcom/amap/api/mapcore2d/q$a;

    const-string v1, "ALIBABA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amap/api/mapcore2d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/q$a;->b:Lcom/amap/api/mapcore2d/q$a;

    new-instance v0, Lcom/amap/api/mapcore2d/q$a;

    const-string v1, "CHELIANWAGN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amap/api/mapcore2d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/q$a;->c:Lcom/amap/api/mapcore2d/q$a;

    new-instance v0, Lcom/amap/api/mapcore2d/q$a;

    const-string v1, "U116114"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amap/api/mapcore2d/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/mapcore2d/q$a;->d:Lcom/amap/api/mapcore2d/q$a;

    const/4 v0, 0x4

    .line 62
    new-array v0, v0, [Lcom/amap/api/mapcore2d/q$a;

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->a:Lcom/amap/api/mapcore2d/q$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->b:Lcom/amap/api/mapcore2d/q$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->c:Lcom/amap/api/mapcore2d/q$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/mapcore2d/q$a;->d:Lcom/amap/api/mapcore2d/q$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amap/api/mapcore2d/q$a;->e:[Lcom/amap/api/mapcore2d/q$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore2d/q$a;
    .locals 1

    .line 62
    const-class v0, Lcom/amap/api/mapcore2d/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore2d/q$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/mapcore2d/q$a;
    .locals 1

    .line 62
    sget-object v0, Lcom/amap/api/mapcore2d/q$a;->e:[Lcom/amap/api/mapcore2d/q$a;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore2d/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore2d/q$a;

    return-object v0
.end method
