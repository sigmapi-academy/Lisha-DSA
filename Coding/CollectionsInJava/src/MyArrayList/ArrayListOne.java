package MyArrayList;
import java.util.ArrayList;

public class ArrayListOne {
    public static void main(String[] args) {
        ArrayList al = new ArrayList();

        al.add("A");
        al.add(10);
        al.add("Lisha");
        al.add(Math.PI);
        System.out.println(al);

        System.out.println(al.remove(1));
        System.out.println(al);
        al.add(2, Integer.MAX_VALUE);
        al.add("Shiv");
        System.out.println(al);
        System.out.println("Last element: "+al.getLast());
    }

}
