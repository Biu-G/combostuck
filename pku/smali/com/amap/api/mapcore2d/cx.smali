.class public Lcom/amap/api/mapcore2d/cx;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/er$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/cx$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String; = "sodownload"

.field private static i:Ljava/lang/String; = "sofail"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/er;

.field private b:Lcom/amap/api/mapcore2d/cx$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cx;->g:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/amap/api/mapcore2d/cx;->f:Ljava/lang/String;

    .line 78
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "temp.so"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/cx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cx;->d:Ljava/lang/String;

    const-string p2, "libwgs2gcj.so"

    .line 79
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/cx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cx;->e:Ljava/lang/String;

    .line 81
    new-instance p1, Lcom/amap/api/mapcore2d/cx$a;

    invoke-direct {p1, p3}, Lcom/amap/api/mapcore2d/cx$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    .line 82
    new-instance p1, Lcom/amap/api/mapcore2d/er;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/er;-><init>(Lcom/amap/api/mapcore2d/ev;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/cx;->a:Lcom/amap/api/mapcore2d/er;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "libso"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/cx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 247
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cx$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    .line 110
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cx$a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libJni_wgs2gcj.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->b:Lcom/amap/api/mapcore2d/cx$a;

    .line 111
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cx$a;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cx;->start()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 222
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    .line 226
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->g:Landroid/content/Context;

    const-string v1, "tempfile"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cx;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 229
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 233
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SDKCoordinatorDownload"

    const-string v1, "onException"

    .line 235
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "SDKCoordinatorDownload"

    const-string v1, "onException"

    .line 240
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a([BJ)V
    .locals 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onDownload"

    .line 149
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_2

    return-void

    .line 160
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 161
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 163
    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    const-string p2, "SDKCoordinatorDownload"

    const-string p3, "onDownload"

    .line 165
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 169
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    const-string p2, "SDKCoordinatorDownload"

    const-string p3, "onDownload"

    .line 170
    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    return-void

    .line 200
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cx;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cx;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onFinish"

    .line 213
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 123
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cx;->g:Landroid/content/Context;

    const-string v2, "tempfile"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/cx;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cx;->a:Lcom/amap/api/mapcore2d/er;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/er;->a(Lcom/amap/api/mapcore2d/er$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "run"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cx;->d()V

    :goto_0
    return-void
.end method
