.class public final Lcom/dropbox/core/v1/DbxDelta$Entry;
.super Lcom/dropbox/core/util/Dumpable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxDelta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/util/Dumpable;"
    }
.end annotation


# instance fields
.field public final lcPath:Ljava/lang/String;

.field public final metadata:Lcom/dropbox/core/util/Dumpable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TMD;)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDelta$Entry;->lcPath:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDelta$Entry;->metadata:Lcom/dropbox/core/util/Dumpable;

    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    const-string v0, "lcPath"

    .line 230
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDelta$Entry;->lcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    const-string v0, "metadata"

    .line 231
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDelta$Entry;->metadata:Lcom/dropbox/core/util/Dumpable;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    return-void
.end method
