import java.io.Console;
public class ConsoleClass {
   public static void main(String args[]){
        Console c = System.console();
        if(c == null){
            System.out.print("No console available");
            return;
        }
        String name = c.readLine("Enter your name: ");
        c.printf("%s", name);
        c.printf("%s","\nEnter your password: ");
        char pass[] = c.readPassword();
        String password = String.valueOf(pass);
        c.printf("%s%s","Password is: ",password);
    }
}