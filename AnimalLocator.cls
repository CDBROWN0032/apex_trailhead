public class AnimalLocator {
    public static string getAnimalNameById(integer animalId) {
	Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + animalId);
    request.setMethod('GET');
    Map<string, object> animal = new Map<string, object>();
    HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            Map<string, object> results = (Map<string, object>) JSON.deserializeUntyped(response.getBody());
            animal = (Map<string, object>) results.get('animal');
        }
     	return (string)animal.get('name');
    }
}