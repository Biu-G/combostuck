.class public final Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;
    }
.end annotation


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;


# instance fields
.field private a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/fileproperties/LookupError;

.field private d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .line 111
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 112
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .line 142
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 143
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 144
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 1

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    .line 128
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    .line 129
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    if-eqz p0, :cond_0

    .line 284
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object p0

    return-object p0

    .line 282
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    if-eqz p0, :cond_0

    .line 363
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object p0

    return-object p0

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 2

    if-eqz p0, :cond_2

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 210
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object p0

    return-object p0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
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

    .line 402
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    if-eqz v2, :cond_9

    .line 403
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    .line 404
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 407
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 423
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    .line 415
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    .line 409
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :cond_9
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

    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertyGroupLookupValue()Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PROPERTY_GROUP_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 384
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->d:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 390
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPropertyGroupLookup()Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->PROPERTY_GROUP_LOOKUP:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

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

    .line 310
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->a:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 435
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 447
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
