import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public class UserSearch {

    private static final String USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36";

    public static void main(String[] args) {
        try {
            // Prompt the user for the username to search
            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
            System.out.print("Enter username to search: ");
            String username = reader.readLine();

            // Build the API URL with the search query
            String apiUrl = "http://127.0.0.1:8000/api/user/search?username=" + username;


            // Convert the String URL to a URI and then to a URL
            URI uri = new URI(apiUrl);
            URL url = uri.toURL();

            // Send GET request to the Laravel API
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.setRequestProperty("User-Agent", USER_AGENT);

            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {                 StringBuilder response;
                try ( // success
                        BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                    String inputLine;
                    response = new StringBuilder();
                    while ((inputLine = in.readLine()) != null) {
                        response.append(inputLine);
                    }
                }

                // Print the JSON response from the Laravel API
                System.out.println("Response from Laravel API:");
                System.out.println(response.toString());
            } else {
                System.out.println("GET request failed. Response Code: " + responseCode);
            }
        } catch (URISyntaxException e) {
            System.err.println("Invalid URL syntax: " + e.getMessage());
        } catch (IOException e) {
        }
    }
}