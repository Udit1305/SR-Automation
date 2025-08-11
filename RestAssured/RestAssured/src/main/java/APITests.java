import static io.restassured.RestAssured.*;
//import io.restassured.RestAssured;
import io.restassured.response.Response;
import org.testng.Assert;
import org.testng.annotations.Test;

public class APITests {

    @Test
    void test_Api_Response1(){
        Response response = get("https://reqres.in/api/users?page=2");
        System.out.println("Response: "+ response.asString());
        System.out.println("StatusCode: "+ response.getStatusCode());
        System.out.println("Body: "+ response.getBody().asString());
        System.out.println("Time Taken: "+ response.getTime());
        System.out.println("Headers: "+ response.getHeader("content-type"));

        int statusCode = response.getStatusCode();
        Assert.assertEquals(statusCode, 200);
    }
}
