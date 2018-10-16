.class public Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberAddArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected isDirectoryRestricted:Ljava/lang/Boolean;

.field protected final memberEmail:Ljava/lang/String;

.field protected memberExternalId:Ljava/lang/String;

.field protected memberGivenName:Ljava/lang/String;

.field protected memberPersistentId:Ljava/lang/String;

.field protected memberSurname:Ljava/lang/String;

.field protected role:Lcom/dropbox/core/v2/team/AdminTier;

.field protected sendWelcomeEmail:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    .line 232
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    .line 241
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 242
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-void

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberEmail\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberEmail\' is longer than 255"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'memberEmail\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberAddArg;
    .locals 10

    .line 395
    new-instance v9, Lcom/dropbox/core/v2/team/MemberAddArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;Ljava/lang/Boolean;)V

    return-object v9
.end method

.method public withIsDirectoryRestricted(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->isDirectoryRestricted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberExternalId\' is longer than 64"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    return-object p0
.end method

.method public withMemberGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    const-string v0, "[^/:?*<>\"|]*"

    .line 261
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberGivenName\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberGivenName\' is longer than 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    return-object p0
.end method

.method public withMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    return-object p0
.end method

.method public withMemberSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    const-string v0, "[^/:?*<>\"|]*"

    .line 285
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberSurname\' does not match pattern"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String \'memberSurname\' is longer than 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    return-object p0
.end method

.method public withRole(Lcom/dropbox/core/v2/team/AdminTier;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 368
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_0

    .line 371
    :cond_0
    sget-object p1, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    :goto_0
    return-object p0
.end method

.method public withSendWelcomeEmail(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    :goto_0
    return-object p0
.end method
