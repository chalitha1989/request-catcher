import ballerina/http;
import ballerina/io;


public function main() returns error? {
    // Create an HTTP client for the given URL
    http:Client httpClient = check new("https://test1111.requestcatcher.com");

    // Data to be sent
    string payload = "Hello World!";

    // Send a POST request
    http:Response response = check httpClient->post("/test", payload);

    // Print the response (optional)
    io:println(response.statusCode);
}