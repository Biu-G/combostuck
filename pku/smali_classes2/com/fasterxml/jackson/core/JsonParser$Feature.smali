.class public final enum Lcom/fasterxml/jackson/core/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum IGNORE_UNDEFINED:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field private static final synthetic c:[Lcom/fasterxml/jackson/core/JsonParser$Feature;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 59
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "AUTO_CLOSE_SOURCE"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_YAML_COMMENTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 100
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 113
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 126
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 137
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 149
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 169
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 187
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "STRICT_DUPLICATE_DETECTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 211
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const-string v1, "IGNORE_UNDEFINED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->IGNORE_UNDEFINED:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    const/16 v0, 0xb

    .line 43
    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v9

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v10

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->IGNORE_UNDEFINED:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    aput-object v1, v0, v12

    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:I

    .line 238
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Z

    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 228
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 229
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 43
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 43
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->c:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->a:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1

    .line 246
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMask()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->b:I

    return v0
.end method