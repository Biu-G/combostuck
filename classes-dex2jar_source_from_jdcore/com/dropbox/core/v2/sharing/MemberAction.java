package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum MemberAction
{
  private MemberAction() {}
  
  static class a
    extends UnionSerializer<MemberAction>
  {
    public static final a a = new a();
    
    a() {}
    
    public MemberAction a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("leave_a_copy".equals(localObject)) {
          localObject = MemberAction.LEAVE_A_COPY;
        } else if ("make_editor".equals(localObject)) {
          localObject = MemberAction.MAKE_EDITOR;
        } else if ("make_owner".equals(localObject)) {
          localObject = MemberAction.MAKE_OWNER;
        } else if ("make_viewer".equals(localObject)) {
          localObject = MemberAction.MAKE_VIEWER;
        } else if ("make_viewer_no_comment".equals(localObject)) {
          localObject = MemberAction.MAKE_VIEWER_NO_COMMENT;
        } else if ("remove".equals(localObject)) {
          localObject = MemberAction.REMOVE;
        } else {
          localObject = MemberAction.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(MemberAction paramMemberAction, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (MemberAction.1.a[paramMemberAction.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 6: 
        paramJsonGenerator.writeString("remove");
        return;
      case 5: 
        paramJsonGenerator.writeString("make_viewer_no_comment");
        return;
      case 4: 
        paramJsonGenerator.writeString("make_viewer");
        return;
      case 3: 
        paramJsonGenerator.writeString("make_owner");
        return;
      case 2: 
        paramJsonGenerator.writeString("make_editor");
        return;
      }
      paramJsonGenerator.writeString("leave_a_copy");
    }
  }
}
