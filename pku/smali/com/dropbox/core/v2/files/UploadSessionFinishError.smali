.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;,
        Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field public static final TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field private b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field private c:Lcom/dropbox/core/v2/files/WriteError;

.field private d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .line 158
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 159
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 160
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .line 125
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .line 142
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 143
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 144
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object p0
.end method

.method public static lookupFailed(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 2

    if-eqz p0, :cond_0

    .line 211
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 2

    if-eqz p0, :cond_0

    .line 262
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object p0

    return-object p0

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 2

    if-eqz p0, :cond_0

    .line 313
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object p0

    return-object p0

    .line 311
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

    .line 387
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    if-eqz v2, :cond_9

    .line 388
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 389
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 392
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/UploadSessionFinishError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->ordinal()I

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

    .line 398
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 396
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 394
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->equals(Ljava/lang/Object;)Z

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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLookupFailedValue()Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LOOKUP_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertiesErrorValue()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PROPERTIES_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

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

    .line 370
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->b:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->c:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->d:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLookupFailed()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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

    .line 365
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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

    .line 240
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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

    .line 292
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManySharedFolderTargets()Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 416
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 428
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->a:Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
