.class public Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/DbxOfficialAppConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbxOfficialAppInstallInfo"
.end annotation


# instance fields
.field public final supportsOpenWith:Z

.field public final versionCode:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->supportsOpenWith:Z

    .line 87
    iput p2, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->versionCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DbxOfficialAppInstallInfo(versionCode=%s, supportsOpenWith=%s)"

    const/4 v1, 0x2

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->versionCode:I

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/dropbox/core/android/DbxOfficialAppConnector$DbxOfficialAppInstallInfo;->supportsOpenWith:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
