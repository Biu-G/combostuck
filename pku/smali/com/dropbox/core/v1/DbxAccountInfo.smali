.class public Lcom/dropbox/core/v1/DbxAccountInfo;
.super Lcom/dropbox/core/util/Dumpable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;,
        Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    }
.end annotation


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/dropbox/core/json/JsonReader$FieldMapping;


# instance fields
.field public final country:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final email:Ljava/lang/String;

.field public final emailVerified:Z

.field public final nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

.field public final quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

.field public final referralLink:Ljava/lang/String;

.field public final userId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 283
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    const-string v1, "uid"

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "display_name"

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "country"

    const/4 v2, 0x2

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "referral_link"

    const/4 v2, 0x3

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "quota_info"

    const/4 v2, 0x4

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "name_details"

    const/4 v2, 0x5

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "email"

    const/4 v2, 0x6

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "email_verified"

    const/4 v2, 0x7

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->a:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$Quota;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->userId:J

    .line 30
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->displayName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->country:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->referralLink:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    .line 34
    iput-object p7, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->email:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    .line 36
    iput-boolean p9, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->emailVerified:Z

    return-void
.end method

.method static synthetic a()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .line 14
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo;->a:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 3

    const-string v0, "userId"

    .line 42
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->userId:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "displayName"

    .line 43
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "country"

    .line 44
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "referralLink"

    .line 45
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->referralLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "quota"

    .line 46
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->quota:Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "nameDetails"

    .line 47
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->nameDetails:Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "email"

    .line 48
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "emailVerified"

    .line 49
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object p1

    iget-boolean v0, p0, Lcom/dropbox/core/v1/DbxAccountInfo;->emailVerified:Z

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    return-void
.end method
