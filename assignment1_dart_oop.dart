class Car{
  String brand;
  String model;
  int year;
  double milesDriven;


  static int numberOfCars = 0;


  // construction
  Car({required this.brand, required this.model, required this.year, required this.milesDriven}){
    numberOfCars++;
  }
// Method
  void drive(double miles){
    milesDriven = milesDriven+miles;
  }

// Method getMilesDriven() return the string value of the property milesdriven
  double getMilesDriven(){
    return milesDriven;
  }

// Method getBrand() return the string value of the property getBrand
  String getBrand(){
    return brand;
  }

// Method getModel() return the string value of the property model
  String getModel(){
    return model;
  }

  int getYear(){
    return year;
  }

  int getAge(){
    int currentYear = DateTime.now().year;
    return currentYear-year;
  }

}


void main() {

  Car car1 = Car(brand: "Toyota", model: "Premio", milesDriven: 1200, year: 2020);
  Car car2 = Car(brand: "Audi", model: "e-Tron GT", milesDriven: 1300, year: 2018);
  Car car3 = Car(brand: "Honda", model: "CRV", milesDriven: 1400, year: 2022);

  car1.drive(4000);
  car2.drive(3000);
  car3.drive(5000);

  print("Car 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles Driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge()} years");
  print("");

  print("Car 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles Driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge()} years");
  print("");

  print("Car 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles Driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge()} years");
  print("");

  print("Total number of cars created: ${Car.numberOfCars}");
}