.class public Landroid/support/v4/app/Person$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field a:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field b:Landroid/support/v4/graphics/drawable/IconCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Person;)V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iget-object v0, p1, Landroid/support/v4/app/Person;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->a:Ljava/lang/CharSequence;

    .line 217
    iget-object v0, p1, Landroid/support/v4/app/Person;->b:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->b:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 218
    iget-object v0, p1, Landroid/support/v4/app/Person;->c:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->c:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Landroid/support/v4/app/Person;->d:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->d:Ljava/lang/String;

    .line 220
    iget-boolean v0, p1, Landroid/support/v4/app/Person;->e:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person$Builder;->e:Z

    .line 221
    iget-boolean p1, p1, Landroid/support/v4/app/Person;->f:Z

    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->f:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/app/Person;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 300
    new-instance v0, Landroid/support/v4/app/Person;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Person;-><init>(Landroid/support/v4/app/Person$Builder;)V

    return-object v0
.end method

.method public setBot(Z)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 281
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->e:Z

    return-object p0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 242
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->b:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setImportant(Z)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 293
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->f:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 271
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 230
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 260
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
