package com.dropbox.core.v1;

import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonReader.FieldMapping;
import com.dropbox.core.json.JsonReader.FieldMapping.Builder;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public class DbxDeltaC<C>
  extends Dumpable
{
  public final String cursor;
  public final C entries;
  public final boolean hasMore;
  public final boolean reset;
  
  public DbxDeltaC(boolean paramBoolean1, C paramC, String paramString, boolean paramBoolean2)
  {
    reset = paramBoolean1;
    entries = paramC;
    cursor = paramString;
    hasMore = paramBoolean2;
  }
  
  protected void dumpFields(DumpWriter paramDumpWriter)
  {
    paramDumpWriter.f("reset").v(reset);
    paramDumpWriter.f("cursor").v(cursor);
    paramDumpWriter.f("entries").v(hasMore);
  }
  
  public static final class Entry<MD extends Dumpable>
    extends Dumpable
  {
    public final String lcPath;
    public final MD metadata;
    
    public Entry(String paramString, MD paramMD)
    {
      lcPath = paramString;
      metadata = paramMD;
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.f("lcPath").v(lcPath);
      paramDumpWriter.f("metadata").v(metadata);
    }
    
    public static final class Reader<MD extends Dumpable>
      extends JsonReader<DbxDeltaC.Entry<MD>>
    {
      public final JsonReader<MD> metadataReader;
      
      public Reader(JsonReader<MD> paramJsonReader)
      {
        metadataReader = paramJsonReader;
      }
      
      public static <MD extends Dumpable> DbxDeltaC.Entry<MD> read(JsonParser paramJsonParser, JsonReader<MD> paramJsonReader)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = JsonReader.expectArrayStart(paramJsonParser);
        if (!JsonReader.isArrayEnd(paramJsonParser)) {
          try
          {
            String str = (String)JsonReader.StringReader.read(paramJsonParser);
            if (!JsonReader.isArrayEnd(paramJsonParser)) {
              try
              {
                paramJsonReader = (Dumpable)paramJsonReader.readOptional(paramJsonParser);
                if (JsonReader.isArrayEnd(paramJsonParser))
                {
                  paramJsonParser.nextToken();
                  return new DbxDeltaC.Entry(str, paramJsonReader);
                }
                throw new JsonReadException("expecting a two-element array of [path, metadata], found more than two elements", localJsonLocation);
              }
              catch (JsonReadException paramJsonParser)
              {
                throw paramJsonParser.addArrayContext(1);
              }
            }
            throw new JsonReadException("expecting a two-element array of [path, metadata], found a one-element array", localJsonLocation);
          }
          catch (JsonReadException paramJsonParser)
          {
            throw paramJsonParser.addArrayContext(0);
          }
        }
        throw new JsonReadException("expecting a two-element array of [path, metadata], found a zero-element array", localJsonLocation);
      }
      
      public DbxDeltaC.Entry<MD> read(JsonParser paramJsonParser)
        throws IOException, JsonReadException
      {
        return read(paramJsonParser, metadataReader);
      }
    }
  }
  
  public static final class Reader<C, MD extends Dumpable>
    extends JsonReader<DbxDeltaC<C>>
  {
    private static final JsonReader.FieldMapping c;
    public final Collector<DbxDeltaC.Entry<MD>, C> entryCollector;
    public final JsonReader<MD> metadataReader;
    
    static
    {
      JsonReader.FieldMapping.Builder localBuilder = new JsonReader.FieldMapping.Builder();
      localBuilder.add("reset", 0);
      localBuilder.add("entries", 1);
      localBuilder.add("cursor", 2);
      localBuilder.add("has_more", 3);
      c = localBuilder.build();
    }
    
    public Reader(JsonReader<MD> paramJsonReader, Collector<DbxDeltaC.Entry<MD>, C> paramCollector)
    {
      metadataReader = paramJsonReader;
      entryCollector = paramCollector;
    }
    
    public static <C, MD extends Dumpable> DbxDeltaC<C> read(JsonParser paramJsonParser, JsonReader<MD> paramJsonReader, Collector<DbxDeltaC.Entry<MD>, C> paramCollector)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramJsonParser);
      Object localObject4 = null;
      Object localObject3 = null;
      Object localObject1 = localObject3;
      Object localObject2 = localObject1;
      String str;
      int i;
      if (paramJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        str = paramJsonParser.getCurrentName();
        JsonReader.nextToken(paramJsonParser);
        i = c.get(str);
        if (i != -1) {
          break label306;
        }
      }
      for (;;)
      {
        try
        {
          JsonReader.skipValue(paramJsonParser);
        }
        catch (JsonReadException paramJsonParser)
        {
          continue;
        }
        continue;
        localObject2 = (Boolean)JsonReader.BooleanReader.readField(paramJsonParser, str, localObject2);
        break;
        localObject1 = (String)JsonReader.StringReader.readField(paramJsonParser, str, localObject1);
        break;
        localObject3 = JsonArrayReader.mk(new DbxDeltaC.Entry.Reader(paramJsonReader), paramCollector).readField(paramJsonParser, str, localObject3);
        break;
        localObject4 = (Boolean)JsonReader.BooleanReader.readField(paramJsonParser, str, localObject4);
        break;
        paramJsonParser = new StringBuilder();
        paramJsonParser.append("bad index: ");
        paramJsonParser.append(i);
        paramJsonParser.append(", field = \"");
        paramJsonParser.append(str);
        paramJsonParser.append("\"");
        throw new AssertionError(paramJsonParser.toString());
        throw paramJsonParser.addFieldContext(str);
        JsonReader.expectObjectEnd(paramJsonParser);
        if (localObject4 != null)
        {
          if (localObject3 != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null) {
                return new DbxDeltaC(((Boolean)localObject4).booleanValue(), localObject3, (String)localObject1, ((Boolean)localObject2).booleanValue());
              }
              throw new JsonReadException("missing field \"has_more\"", localJsonLocation);
            }
            throw new JsonReadException("missing field \"cursor\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"entries\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"path\"", localJsonLocation);
        label306:
        switch (i)
        {
        }
      }
    }
    
    public DbxDeltaC<C> read(JsonParser paramJsonParser)
      throws IOException, JsonReadException
    {
      return read(paramJsonParser, metadataReader, entryCollector);
    }
  }
}