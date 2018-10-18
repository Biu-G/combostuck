package com.dropbox.core.json;

import com.dropbox.core.util.Collector;
import com.dropbox.core.util.Collector.ArrayListCollector;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.util.List;

public class JsonArrayReader<T, L>
  extends JsonReader<L>
{
  public final Collector<T, ? extends L> collector;
  public final JsonReader<? extends T> elementReader;
  
  public JsonArrayReader(JsonReader<? extends T> paramJsonReader, Collector<T, ? extends L> paramCollector)
  {
    elementReader = paramJsonReader;
    collector = paramCollector;
  }
  
  public static <T> JsonArrayReader<T, List<T>> mk(JsonReader<? extends T> paramJsonReader)
  {
    return new JsonArrayReader(paramJsonReader, new Collector.ArrayListCollector());
  }
  
  public static <T, L> JsonArrayReader<T, L> mk(JsonReader<? extends T> paramJsonReader, Collector<T, ? extends L> paramCollector)
  {
    return new JsonArrayReader(paramJsonReader, paramCollector);
  }
  
  public static <T, L> L read(JsonReader<? extends T> paramJsonReader, Collector<T, ? extends L> paramCollector, JsonParser paramJsonParser)
    throws JsonReadException, IOException
  {
    expectArrayStart(paramJsonParser);
    int i = 0;
    while (!isArrayEnd(paramJsonParser)) {
      try
      {
        paramCollector.add(paramJsonReader.read(paramJsonParser));
        i += 1;
      }
      catch (JsonReadException paramJsonReader)
      {
        throw paramJsonReader.addArrayContext(i);
      }
    }
    paramJsonParser.nextToken();
    return paramCollector.finish();
  }
  
  public L read(JsonParser paramJsonParser)
    throws JsonReadException, IOException
  {
    return read(elementReader, collector, paramJsonParser);
  }
}
