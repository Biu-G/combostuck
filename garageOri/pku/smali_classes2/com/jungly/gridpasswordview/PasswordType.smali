.class public final enum Lcom/jungly/gridpasswordview/PasswordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jungly/gridpasswordview/PasswordType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NUMBER:Lcom/jungly/gridpasswordview/PasswordType;

.field public static final enum TEXT:Lcom/jungly/gridpasswordview/PasswordType;

.field public static final enum TEXTVISIBLE:Lcom/jungly/gridpasswordview/PasswordType;

.field public static final enum TEXTWEB:Lcom/jungly/gridpasswordview/PasswordType;

.field private static final synthetic a:[Lcom/jungly/gridpasswordview/PasswordType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/jungly/gridpasswordview/PasswordType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jungly/gridpasswordview/PasswordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jungly/gridpasswordview/PasswordType;->NUMBER:Lcom/jungly/gridpasswordview/PasswordType;

    new-instance v0, Lcom/jungly/gridpasswordview/PasswordType;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/jungly/gridpasswordview/PasswordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jungly/gridpasswordview/PasswordType;->TEXT:Lcom/jungly/gridpasswordview/PasswordType;

    new-instance v0, Lcom/jungly/gridpasswordview/PasswordType;

    const-string v1, "TEXTVISIBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/jungly/gridpasswordview/PasswordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jungly/gridpasswordview/PasswordType;->TEXTVISIBLE:Lcom/jungly/gridpasswordview/PasswordType;

    new-instance v0, Lcom/jungly/gridpasswordview/PasswordType;

    const-string v1, "TEXTWEB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/jungly/gridpasswordview/PasswordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jungly/gridpasswordview/PasswordType;->TEXTWEB:Lcom/jungly/gridpasswordview/PasswordType;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/jungly/gridpasswordview/PasswordType;

    sget-object v1, Lcom/jungly/gridpasswordview/PasswordType;->NUMBER:Lcom/jungly/gridpasswordview/PasswordType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jungly/gridpasswordview/PasswordType;->TEXT:Lcom/jungly/gridpasswordview/PasswordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jungly/gridpasswordview/PasswordType;->TEXTVISIBLE:Lcom/jungly/gridpasswordview/PasswordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jungly/gridpasswordview/PasswordType;->TEXTWEB:Lcom/jungly/gridpasswordview/PasswordType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jungly/gridpasswordview/PasswordType;->a:[Lcom/jungly/gridpasswordview/PasswordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jungly/gridpasswordview/PasswordType;
    .locals 1

    .line 8
    const-class v0, Lcom/jungly/gridpasswordview/PasswordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jungly/gridpasswordview/PasswordType;

    return-object p0
.end method

.method public static values()[Lcom/jungly/gridpasswordview/PasswordType;
    .locals 1

    .line 8
    sget-object v0, Lcom/jungly/gridpasswordview/PasswordType;->a:[Lcom/jungly/gridpasswordview/PasswordType;

    invoke-virtual {v0}, [Lcom/jungly/gridpasswordview/PasswordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jungly/gridpasswordview/PasswordType;

    return-object v0
.end method
