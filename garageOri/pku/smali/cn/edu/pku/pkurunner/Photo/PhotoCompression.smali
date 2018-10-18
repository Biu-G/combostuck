.class public abstract Lcn/edu/pku/pkurunner/Photo/PhotoCompression;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressPhoto(Ljava/io/File;Lid/zelory/compressor/Compressor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->getPhotoDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p2, 0x280

    .line 20
    invoke-virtual {p1, p2}, Lid/zelory/compressor/Compressor;->setMaxWidth(I)Lid/zelory/compressor/Compressor;

    move-result-object p1

    const/16 p2, 0x1e0

    .line 21
    invoke-virtual {p1, p2}, Lid/zelory/compressor/Compressor;->setMaxHeight(I)Lid/zelory/compressor/Compressor;

    move-result-object p1

    const/16 p2, 0x32

    .line 22
    invoke-virtual {p1, p2}, Lid/zelory/compressor/Compressor;->setQuality(I)Lid/zelory/compressor/Compressor;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 23
    invoke-virtual {p1, p2}, Lid/zelory/compressor/Compressor;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lid/zelory/compressor/Compressor;

    move-result-object p1

    .line 24
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->getCompressedPhotoDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lid/zelory/compressor/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;

    move-result-object p0

    .line 25
    invoke-virtual {p0, v0}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
