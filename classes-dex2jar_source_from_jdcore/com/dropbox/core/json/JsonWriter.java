package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public abstract class JsonWriter<T>
{
  private static final TimeZone a = TimeZone.getTimeZone("UTC");
  private static final String[] b = { null, "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
  private static final String[] c = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", null };
  
  public JsonWriter() {}
  
  private static String a(String paramString, int paramInt)
  {
    while (paramString.length() < paramInt)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("0");
      localStringBuilder.append(paramString);
      paramString = localStringBuilder.toString();
    }
    return paramString;
  }
  
  public static String formatDate(Date paramDate)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    localSimpleDateFormat.setTimeZone(a);
    return localSimpleDateFormat.format(paramDate);
  }
  
  public abstract void write(T paramT, JsonGenerator paramJsonGenerator)
    throws IOException;
  
  public void write(T paramT, JsonGenerator paramJsonGenerator, int paramInt)
    throws IOException
  {
    write(paramT, paramJsonGenerator);
  }
  
  public final void writeDate(Date paramDate, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    Object localObject = new GregorianCalendar(JsonDateReader.UTC);
    ((GregorianCalendar)localObject).setTime(paramDate);
    paramDate = Integer.toString(((GregorianCalendar)localObject).get(1));
    String str1 = c[localObject.get(2)];
    String str2 = a(Integer.toString(((GregorianCalendar)localObject).get(5)), 2);
    String str3 = a(Integer.toString(((GregorianCalendar)localObject).get(11)), 2);
    String str4 = a(Integer.toString(((GregorianCalendar)localObject).get(12)), 2);
    String str5 = a(Integer.toString(((GregorianCalendar)localObject).get(13)), 2);
    localObject = b[localObject.get(7)];
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(", ");
    localStringBuilder.append(str2);
    localStringBuilder.append(" ");
    localStringBuilder.append(str1);
    localStringBuilder.append(" ");
    localStringBuilder.append(paramDate);
    localStringBuilder.append(" ");
    localStringBuilder.append(str3);
    localStringBuilder.append(":");
    localStringBuilder.append(str4);
    localStringBuilder.append(":");
    localStringBuilder.append(str5);
    localStringBuilder.append(" +0000");
    paramJsonGenerator.writeString(localStringBuilder.toString());
  }
  
  public final void writeDateIso(Date paramDate, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    paramJsonGenerator.writeString(formatDate(paramDate));
  }
  
  public void writeFields(T paramT, JsonGenerator paramJsonGenerator)
    throws IOException
  {}
  
  public final void writeToFile(T paramT, File paramFile)
    throws IOException
  {
    writeToFile(paramT, paramFile, true);
  }
  
  public final void writeToFile(T paramT, File paramFile, boolean paramBoolean)
    throws IOException
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      writeToStream(paramT, paramFile, paramBoolean);
      return;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public final void writeToFile(T paramT, String paramString)
    throws IOException
  {
    writeToFile(paramT, paramString, true);
  }
  
  public final void writeToFile(T paramT, String paramString, boolean paramBoolean)
    throws IOException
  {
    writeToFile(paramT, new File(paramString), paramBoolean);
  }
  
  public final void writeToStream(T paramT, OutputStream paramOutputStream)
    throws IOException
  {
    writeToStream(paramT, paramOutputStream, true);
  }
  
  public final void writeToStream(T paramT, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException
  {
    JsonGenerator localJsonGenerator = JsonReader.a.createGenerator(paramOutputStream);
    paramOutputStream = localJsonGenerator;
    if (paramBoolean) {
      paramOutputStream = localJsonGenerator.useDefaultPrettyPrinter();
    }
    try
    {
      write(paramT, paramOutputStream);
      return;
    }
    finally
    {
      paramOutputStream.flush();
    }
  }
  
  public final String writeToString(T paramT)
  {
    return writeToString(paramT, true);
  }
  
  /* Error */
  public final String writeToString(T paramT, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 216	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 217	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore 5
    //   9: getstatic 194	com/dropbox/core/json/JsonReader:a	Lcom/fasterxml/jackson/core/JsonFactory;
    //   12: aload 5
    //   14: invokevirtual 200	com/fasterxml/jackson/core/JsonFactory:createGenerator	(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;
    //   17: astore 4
    //   19: aload 4
    //   21: astore_3
    //   22: iload_2
    //   23: ifeq +9 -> 32
    //   26: aload 4
    //   28: invokevirtual 204	com/fasterxml/jackson/core/JsonGenerator:useDefaultPrettyPrinter	()Lcom/fasterxml/jackson/core/JsonGenerator;
    //   31: astore_3
    //   32: aload_0
    //   33: aload_1
    //   34: aload_3
    //   35: invokevirtual 113	com/dropbox/core/json/JsonWriter:write	(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    //   38: aload_3
    //   39: invokevirtual 207	com/fasterxml/jackson/core/JsonGenerator:flush	()V
    //   42: new 24	java/lang/String
    //   45: dup
    //   46: aload 5
    //   48: invokevirtual 221	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   51: ldc -33
    //   53: invokespecial 226	java/lang/String:<init>	([BLjava/lang/String;)V
    //   56: areturn
    //   57: astore_1
    //   58: aload_3
    //   59: invokevirtual 207	com/fasterxml/jackson/core/JsonGenerator:flush	()V
    //   62: aload_1
    //   63: athrow
    //   64: astore_1
    //   65: ldc -28
    //   67: aload_1
    //   68: invokestatic 234	com/dropbox/core/util/LangUtil:mkAssert	(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	JsonWriter
    //   0	72	1	paramT	T
    //   0	72	2	paramBoolean	boolean
    //   21	38	3	localJsonGenerator1	JsonGenerator
    //   17	10	4	localJsonGenerator2	JsonGenerator
    //   7	40	5	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   32	38	57	finally
    //   9	19	64	java/io/IOException
    //   26	32	64	java/io/IOException
    //   38	57	64	java/io/IOException
    //   58	64	64	java/io/IOException
  }
}
