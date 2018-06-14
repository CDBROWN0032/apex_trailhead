public class ParkLocator {    
    public static List<string> country(string countrySearch) {
        parkService.ParksImplPort park = new parkService.ParksImplPort();
        list<string> result = park.byCountry(countrySearch);
        return result;
    }
}