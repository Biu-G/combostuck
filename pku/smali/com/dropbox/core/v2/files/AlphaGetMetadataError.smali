.class public final Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;,
        Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;

.field private c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 1

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    .line 82
    iput-object p1, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 83
    iput-object p2, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 1

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    .line 67
    iput-object p1, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    .line 68
    iput-object p2, v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 2

    if-eqz p0, :cond_0

    .line 130
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propertiesError(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 2

    if-eqz p0, :cond_0

    .line 176
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a(Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
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

    .line 214
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    if-eqz v2, :cond_7

    .line 215
    check-cast p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    .line 216
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 219
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 223
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 221
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertiesErrorValue()Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->name()Ljava/lang/String;

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

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->c:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 202
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isPath()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PATH:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPropertiesError()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 247
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->a:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
