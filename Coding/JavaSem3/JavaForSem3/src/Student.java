public class Student implements Comparable<Student>{
    private int rollNum;
    private String name;
    private String email;
    
    public Student(int rollNum, String name, String email) {
        this.rollNum = rollNum;
        this.name = name;
        this.email = email;
    }
    @Override
    public int compareTo(Student o) {
        // TODO Auto-generated method stub
       return 0;
    }
    public int getRollNum() {
        return rollNum;
    }
    public String getName() {
        return name;
    }
    public String getEmail() {
        return email;
    }
    public void setRollNum(int rollNum) {
        this.rollNum = rollNum;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    @Override
    public String toString() {
        return "Student [rollNum=" + rollNum + ", name=" + name + ", email=" + email + "]";
    }
    
}
