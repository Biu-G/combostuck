package android.support.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.ANNOTATION_TYPE, java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.PACKAGE})
public @interface RestrictTo
{
  Scope[] value();
  
  public static enum Scope
  {
    static
    {
      GROUP_ID = new Scope("GROUP_ID", 2);
      TESTS = new Scope("TESTS", 3);
    }
    
    private Scope() {}
  }
}
