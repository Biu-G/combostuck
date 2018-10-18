.class public final Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;,
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;
    }
.end annotation


# static fields
.field public static final NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field public static final OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;


# instance fields
.field private a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

.field private b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0
.end method

.method public static update()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-static {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object v0

    return-object v0
.end method

.method public static update(Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 2

    .line 152
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    move-result-object p0

    return-object p0
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

    .line 213
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    if-eqz v2, :cond_5

    .line 214
    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 215
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 218
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 222
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    iget-object p1, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_2
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

.method public getUpdateValue()Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->name()Ljava/lang/String;

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

    .line 198
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->b:Lcom/dropbox/core/v2/filerequests/FileRequestDeadline;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNoUpdate()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

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

    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->OTHER:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdate()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    sget-object v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;->UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 248
    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;->a:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
