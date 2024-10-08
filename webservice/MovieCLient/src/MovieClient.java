import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class MovieClient {

    private static final String BASE_URL = "http://localhost:8000/api/movies/search";

    public static void main(String[] args) {
        try {
            String search = "Inside out"; // Search term        <---------------------HERE-----------------------------
            String genre = "Animation"; // Genre               <---------------------HERE-----------------------------
            
            String requestUrl = BASE_URL + "?title=" + encode(search) + "&genre=" + encode(genre);
            URI uri = URI.create(requestUrl);

            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(uri)
                    .GET()
                    .build();

            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            System.out.println("Response status code: " + response.statusCode());
            System.out.println("Response body: " + response.body());

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

    private static String encode(String value) {
        try {
            return java.net.URLEncoder.encode(value, "UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
            return value;
        }
    }
}