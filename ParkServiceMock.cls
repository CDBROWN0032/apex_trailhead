@isTest
global class ParkServiceMock implements WebServiceMock {
	global void doInvoke(
    object stub,
    object request,
    Map<string, object> response,
    string endpoint,
    string soapAction,
    string requestName,
    string responseNS,
    string responseName,
    string responseType) {
    	parkService.byCountryResponse response_x = new parkService.byCountryResponse();
        List<string> fakeList = new List<string>();
        fakeList.add('Hamilton');
        fakeList.add('Dayton');
        fakeList.add('Cincinnati');
        response_x.return_x = fakeList;
        response.put('response_x', response_x);
    }
}