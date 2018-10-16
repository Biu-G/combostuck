.class public final Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    }
.end annotation


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;


# instance fields
.field private a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/fileproperties/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 100
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 150
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .line 151
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 1

    .line 134
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    .line 135
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    .line 136
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 2

    if-eqz p0, :cond_0

    .line 276
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 2

    if-eqz p0, :cond_2

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 202
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 357
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    if-eqz v2, :cond_7

    .line 358
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    .line 359
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 362
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    .line 370
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    .line 364
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 340
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 345
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPath()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPropertyFieldTooLarge()Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPropertyGroupAlreadyExists()Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRestrictedContent()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTemplateNotFound()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsupportedFolder()Z
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 402
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
