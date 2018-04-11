
@isTest 
private class EarthquakeSearchTest {
    static testMethod void validateEarthquakeSearch() {
      // 
       
       EarthquakeSearchMock fakeResponse = new EarthquakeSearchMock(200,
                                                 'Complete',
                                                 '[{"Name": "sForceTest1"}]',
                                                 null);
        Test.setMock(HttpCalloutMock.class, fakeResponse);
        EarthquakeSearchController.getTopTenEarthquakes();
        Double lat = 37.792528;
        Double log = -122.393981;
        String res = EarthquakeSearchController.getGoogleResponse(lat,log);