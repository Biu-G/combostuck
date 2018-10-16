.class public final Lcom/dropbox/core/v2/fileproperties/TemplateError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

.field public static final RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;


# instance fields
.field private a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/TemplateError;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;
    .locals 2

    if-eqz p0, :cond_2

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "(/|ptid:).*"

    .line 155
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a(Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplateError;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
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

    .line 218
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    if-eqz v2, :cond_5

    .line 219
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    .line 220
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 223
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/TemplateError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    .line 225
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTemplateNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEMPLATE_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 203
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

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

    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

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

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;->TEMPLATE_NOT_FOUND:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateError;->a:Lcom/dropbox/core/v2/fileproperties/TemplateError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
