
public with sharing class EarthquakeSearchController {
    
   
    @RemoteAction
    public static String getGoogleResponse(Double lat, Double lng) {
        
        String northLat = String.valueOf(lat + 2);
        String southLat = String.valueOf(lat - 2);
        String eastLag = String.valueOf(lng + 2);
        String westLag = String.valueOf(lng - 2);
        
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('http://api.geonames.org/earthquakesJSON?north='+northLat+'&south='+southLat+'&east='+eastLag+'&west='+westLag+'&username=ajithsf');
 
        try {
            Http http = new Http();
            HTTPResponse res = http.send(req);
            
            return res.getBody();
                            
        } catch(System.CalloutException e) {
            System.debug(LoggingLevel.INFO, 'ERROR:' + e.getMessage());
            return null;
        }
    }
    
    @RemoteAction
    public static String getTopTenEarthquakes(){
        String northLat = '90';
        String southLat = '-90';
        String eastLag = '180';
        String westLag = '-180';
        
        String today = System.now().format('yyyy-MM-dd');
        
        String minMagnitude = '1';
        
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('http://api.geonames.org/earthquakesJSON?north='+northLat+'&south='+southLat+'&east='+eastLag+'&west='+westLag+'&datetime='+today+'&minMagnitude='+minMagnitude+'&maxRows='+10+'&username=ajithsf');
 
        try {
            Http http = new Http();
            HTTPResponse res = http.send(req);
            return res.getBody();
                            
        } catch(System.CalloutException e) {
            System.debug(LoggingLevel.INFO, 'ERROR:' + e.getMessage());
            return null;
        }
    }
    
   
}