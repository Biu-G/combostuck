.class final enum Lokhttp3/HttpUrl$Builder$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/HttpUrl$Builder$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lokhttp3/HttpUrl$Builder$a;

.field public static final enum b:Lokhttp3/HttpUrl$Builder$a;

.field public static final enum c:Lokhttp3/HttpUrl$Builder$a;

.field public static final enum d:Lokhttp3/HttpUrl$Builder$a;

.field public static final enum e:Lokhttp3/HttpUrl$Builder$a;

.field private static final synthetic f:[Lokhttp3/HttpUrl$Builder$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1314
    new-instance v0, Lokhttp3/HttpUrl$Builder$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/HttpUrl$Builder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->a:Lokhttp3/HttpUrl$Builder$a;

    .line 1315
    new-instance v0, Lokhttp3/HttpUrl$Builder$a;

    const-string v1, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lokhttp3/HttpUrl$Builder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->b:Lokhttp3/HttpUrl$Builder$a;

    .line 1316
    new-instance v0, Lokhttp3/HttpUrl$Builder$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lokhttp3/HttpUrl$Builder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->c:Lokhttp3/HttpUrl$Builder$a;

    .line 1317
    new-instance v0, Lokhttp3/HttpUrl$Builder$a;

    const-string v1, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lokhttp3/HttpUrl$Builder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->d:Lokhttp3/HttpUrl$Builder$a;

    .line 1318
    new-instance v0, Lokhttp3/HttpUrl$Builder$a;

    const-string v1, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lokhttp3/HttpUrl$Builder$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->e:Lokhttp3/HttpUrl$Builder$a;

    const/4 v0, 0x5

    .line 1313
    new-array v0, v0, [Lokhttp3/HttpUrl$Builder$a;

    sget-object v1, Lokhttp3/HttpUrl$Builder$a;->a:Lokhttp3/HttpUrl$Builder$a;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/HttpUrl$Builder$a;->b:Lokhttp3/HttpUrl$Builder$a;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/HttpUrl$Builder$a;->c:Lokhttp3/HttpUrl$Builder$a;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/HttpUrl$Builder$a;->d:Lokhttp3/HttpUrl$Builder$a;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/HttpUrl$Builder$a;->e:Lokhttp3/HttpUrl$Builder$a;

    aput-object v1, v0, v6

    sput-object v0, Lokhttp3/HttpUrl$Builder$a;->f:[Lokhttp3/HttpUrl$Builder$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$a;
    .locals 1

    .line 1313
    const-class v0, Lokhttp3/HttpUrl$Builder$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/HttpUrl$Builder$a;

    return-object p0
.end method

.method public static values()[Lokhttp3/HttpUrl$Builder$a;
    .locals 1

    .line 1313
    sget-object v0, Lokhttp3/HttpUrl$Builder$a;->f:[Lokhttp3/HttpUrl$Builder$a;

    invoke-virtual {v0}, [Lokhttp3/HttpUrl$Builder$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/HttpUrl$Builder$a;

    return-object v0
.end method
