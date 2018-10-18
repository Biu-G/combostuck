package cn.edu.pku.pkurunner.Network.Model;

import io.reactivex.Observable;

public class AMapReverseEncoding
{
  private String info;
  private String infocode;
  private RegeocodeBean regeocode;
  private String status;
  
  public AMapReverseEncoding() {}
  
  public Observable<String> getStreetName()
  {
    return Observable.just(access$100access$000regeocode)).street);
  }
  
  public static class RegeocodeBean
  {
    private AddressComponentBean addressComponent;
    
    public RegeocodeBean() {}
    
    public static class AddressComponentBean
    {
      private String adcode;
      private String citycode;
      private String country;
      private String district;
      private String province;
      private StreetNumberBean streetNumber;
      private String towncode;
      private String township;
      
      public AddressComponentBean() {}
      
      public static class StreetNumberBean
      {
        private String direction;
        private String distance;
        private String location;
        private String number;
        private String street;
        
        public StreetNumberBean() {}
      }
    }
  }
}
