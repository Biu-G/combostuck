.class public final Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;,
        Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;


# instance fields
.field private a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 1

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;)Ljava/util/List;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    return-object p0
.end method

.method public static filterSome(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v1, :cond_1

    const-string v3, "(/|ptid:).*"

    .line 157
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stringan item in list is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_3
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a(Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    move-result-object p0

    return-object p0

    .line 148
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List has fewer than 1 items"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_5
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

    .line 210
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eqz v2, :cond_5

    .line 211
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    .line 212
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 215
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 217
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilterSomeValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FILTER_SOME, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->name()Ljava/lang/String;

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

    .line 195
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFilterSome()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->FILTER_SOME:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

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

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    sget-object v1, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;->OTHER:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->a:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 243
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
