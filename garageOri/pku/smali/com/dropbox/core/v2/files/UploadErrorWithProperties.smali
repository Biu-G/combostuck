.class public final Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;,
        Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

.field private b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

.field private c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 109
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    .line 110
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 2

    if-eqz p0, :cond_0

    .line 157
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 2

    if-eqz p0, :cond_0

    .line 206
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a(Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object p0

    return-object p0

    .line 204
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

    .line 258
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    if-eqz v2, :cond_7

    .line 259
    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    .line 260
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 263
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 265
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/UploadWriteFailed;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertiesErrorValue()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->name()Ljava/lang/String;

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

    .line 241
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->b:Lcom/dropbox/core/v2/files/UploadWriteFailed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->c:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 246
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isOther()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

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

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

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

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 281
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 293
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->a:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
