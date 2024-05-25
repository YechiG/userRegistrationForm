import Array "mo:base/Array";

actor {
  public query func greet(name : Text) : async Text {
    return "Hello, My name is " # name # "!";
  };

  type Gender = { #Male; #Female };

    type UserInfo = {
        name: Text;
        phoneNumber: Text;
        gender: Gender;
        course: Text;
        department: Text;
        age: Nat;
    };

    var users: [UserInfo] = [];

    public func registerUser(
        name: Text,
        phoneNumber: Text,
        gender: Gender,
        course: Text,
        department: Text,
        age: Nat
    ) : async Text {
        var detail = {
            name = name;
            phoneNumber = phoneNumber;
            gender = gender;
            course = course;
            department = department;
            age = age;
        };
        users := Array.append(users, [detail]);
        return "User registered successfully!";
    };

    public func getUsers() : async [UserInfo] {
        return users;
    };
};
