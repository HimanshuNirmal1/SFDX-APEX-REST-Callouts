public class AnimalLocator {

    public static String getAnimalNameById(Integer Id){

        Http http = new Http();
        

        HttpRequest request = new HttpRequest();

        String animalName;
        
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+Id);
        
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){

            Map <String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            Map<String,Object> animal = (Map<String,Object>) result.get('animal');

            animalName = String.valueOf(animal.get('name'));


        }
        return animalName;
    }

}