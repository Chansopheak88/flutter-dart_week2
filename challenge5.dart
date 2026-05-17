//passenger: type=class(it's a class because passenger can contain alot information like their name gender dob email phonenum..) nullable=no(because it inside travelticket and we can't have ticket if we don't have passenger)
//destination: type:string,ex: new york, london nullable: no
//travel class: type: string nullable:no
//discount code: type:int nullable: yes


class Passenger {
  String firstName;
  String lastName;
  String gender;
  DateTime dob;
  String email;
  int phonenum;
  Passenger({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dob,
    required this.email,
    required this.phonenum,
  });
  
  String get name {
    return this.firstName + " " + this.lastName;
  }
}



class TravelTicket {
  Passenger passenger;
  String destination;
  String travel_class;
  int? discount_code;

  TravelTicket({
    required this.passenger,
    required this.destination,
    required this.travel_class,
    this.discount_code,
  });
}

void main() {
  //make 2 passenger
  Passenger p1 = Passenger(
    firstName: "jonh",
    lastName: "doe",
    gender: "female",
    dob: DateTime(2001, 1, 12),
    email: "iamme67@gmail.com",
    phonenum: 0123654,
  );
  Passenger p2 = Passenger(
    firstName: "joseph",
    lastName: "doe",
    gender: "female",
    dob: DateTime(2001, 1, 15),
    email: "iamme76@gmail.com",
    phonenum: 0123657,
  );
  TravelTicket t1 = TravelTicket(
    passenger: p1,
    destination: "london",
    travel_class: "economy",
  );
  TravelTicket t2 = TravelTicket(
    passenger: p2,
    destination: "london",
    travel_class: 'business',
    discount_code: 0123,
  );
  print("Ticket information:");
  print("Passenger Name:${t1.passenger.name}\nPassenger Date of Birth:${t1.passenger.dob}\nPassenger Gender:${t1.passenger.gender},\nPassenger Email:${t1.passenger.email},\nPassenger Phone:${t1.passenger.phonenum},\nDestination:${t1.destination},\nTravel class:${t1.travel_class},\nDiscount code:${t1.discount_code ?? 'no discount code'}\n\n");

  print("Passenger Name:${t2.passenger.name}\nPassenger Date of Birth:${t2.passenger.dob}\nPassenger Gender:${t2.passenger.gender},\nPassenger Email:${t2.passenger.email},\nPassenger Phone:${t2.passenger.phonenum},\nDestination:${t2.destination},\nTravel class:${t2.travel_class},\nDiscount code:${t2.discount_code ?? 'no discount code'}");
}
