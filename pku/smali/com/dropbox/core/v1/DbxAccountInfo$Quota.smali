.class public final Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
.super Lcom/dropbox/core/util/Dumpable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quota"
.end annotation


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxAccountInfo$Quota;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/dropbox/core/json/JsonReader$FieldMapping;


# instance fields
.field public final normal:J

.field public final shared:J

.field public final total:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 123
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    const-string v1, "quota"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "normal"

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    const-string v1, "shared"

    const/4 v2, 0x2

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->a:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 60
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->total:J

    .line 61
    iput-wide p3, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->normal:J

    .line 62
    iput-wide p5, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->shared:J

    return-void
.end method

.method static synthetic a()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 1

    .line 52
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->a:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    return-object v0
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 3

    const-string v0, "total"

    .line 68
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->total:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "normal"

    .line 69
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->normal:J

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "shared"

    .line 70
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object p1

    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->shared:J

    invoke-virtual {p1, v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(J)Lcom/dropbox/core/util/DumpWriter;

    return-void
.end method
