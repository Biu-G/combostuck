package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum FileAction
{
  static
  {
    RELINQUISH_MEMBERSHIP = new FileAction("RELINQUISH_MEMBERSHIP", 6);
    SHARE_LINK = new FileAction("SHARE_LINK", 7);
  }
  
  private FileAction() {}
  
  static class a
    extends UnionSerializer<FileAction>
  {
    public static final a a = new a();
    
    a() {}
    
    public FileAction a(JsonParser paramJsonParser)
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
        if ("disable_viewer_info".equals(localObject)) {
          localObject = FileAction.DISABLE_VIEWER_INFO;
        } else if ("edit_contents".equals(localObject)) {
          localObject = FileAction.EDIT_CONTENTS;
        } else if ("enable_viewer_info".equals(localObject)) {
          localObject = FileAction.ENABLE_VIEWER_INFO;
        } else if ("invite_viewer".equals(localObject)) {
          localObject = FileAction.INVITE_VIEWER;
        } else if ("invite_viewer_no_comment".equals(localObject)) {
          localObject = FileAction.INVITE_VIEWER_NO_COMMENT;
        } else if ("unshare".equals(localObject)) {
          localObject = FileAction.UNSHARE;
        } else if ("relinquish_membership".equals(localObject)) {
          localObject = FileAction.RELINQUISH_MEMBERSHIP;
        } else if ("share_link".equals(localObject)) {
          localObject = FileAction.SHARE_LINK;
        } else if ("create_link".equals(localObject)) {
          localObject = FileAction.CREATE_LINK;
        } else {
          localObject = FileAction.OTHER;
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
    
    public void a(FileAction paramFileAction, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FileAction.1.a[paramFileAction.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 9: 
        paramJsonGenerator.writeString("create_link");
        return;
      case 8: 
        paramJsonGenerator.writeString("share_link");
        return;
      case 7: 
        paramJsonGenerator.writeString("relinquish_membership");
        return;
      case 6: 
        paramJsonGenerator.writeString("unshare");
        return;
      case 5: 
        paramJsonGenerator.writeString("invite_viewer_no_comment");
        return;
      case 4: 
        paramJsonGenerator.writeString("invite_viewer");
        return;
      case 3: 
        paramJsonGenerator.writeString("enable_viewer_info");
        return;
      case 2: 
        paramJsonGenerator.writeString("edit_contents");
        return;
      }
      paramJsonGenerator.writeString("disable_viewer_info");
    }
  }
}
