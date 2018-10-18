.class public Lcom/dropbox/core/v2/DbxClientV2Base;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _client:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private final a:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

.field private final b:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

.field private final c:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

.field private final d:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

.field private final e:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

.field private final f:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

.field private final g:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->_client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->a:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->b:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->c:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->d:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->e:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->f:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V

    iput-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->g:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-void
.end method


# virtual methods
.method public auth()Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->a:Lcom/dropbox/core/v2/auth/DbxUserAuthRequests;

    return-object v0
.end method

.method public fileProperties()Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->b:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    return-object v0
.end method

.method public fileRequests()Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->c:Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;

    return-object v0
.end method

.method public files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->d:Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    return-object v0
.end method

.method public paper()Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->e:Lcom/dropbox/core/v2/paper/DbxUserPaperRequests;

    return-object v0
.end method

.method public sharing()Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->f:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    return-object v0
.end method

.method public users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxClientV2Base;->g:Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    return-object v0
.end method
