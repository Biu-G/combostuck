.class public final Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;
    }
.end annotation


# static fields
.field public static final DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

.field public static final UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;


# instance fields
.field private a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/fileproperties/LookupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .line 109
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 110
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .line 140
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 141
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    .line 142
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 1

    .line 125
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/fileproperties/LookupError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 2

    if-eqz p0, :cond_0

    .line 267
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object p0

    return-object p0

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 2

    if-eqz p0, :cond_2

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 193
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object p0

    return-object p0

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
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

    .line 337
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    if-eqz v2, :cond_7

    .line 338
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    .line 339
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 342
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->ordinal()I

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

    .line 350
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    .line 344
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    return-object v0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->name()Ljava/lang/String;

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

    .line 320
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->c:Lcom/dropbox/core/v2/fileproperties/LookupError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDoesNotFitTemplate()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PATH:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 304
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

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

    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->a:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 380
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
