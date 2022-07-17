// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=304#1

import 'dart:convert';
import 'dart:io';

void main() {
  int ridesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int oneRideTicketPrice = 15;
  const int tenRidesTicketPrice = 125;
  const int sixtyRidesTicketPrice = 440;

  const int tenRides = 10;
  const int sixtyRides = 60;

  int totalSixtyRidesTickets = ridesQuantity ~/ sixtyRides;
  int totalTenRidesTickets = (ridesQuantity % sixtyRides) ~/ tenRides;
  int totalOneRideTickets = ridesQuantity % tenRides;

  int totalPriceTenRidesTickets = totalTenRidesTickets * tenRidesTicketPrice;
  int totalPriceOneRideTickets = totalOneRideTickets * oneRideTicketPrice;

  if (totalPriceOneRideTickets > tenRidesTicketPrice) {
    totalOneRideTickets = 0;
    ++totalTenRidesTickets;
  }

  if ((totalPriceOneRideTickets + totalPriceTenRidesTickets) >
      sixtyRidesTicketPrice) {
    totalTenRidesTickets = 0;
    ++totalSixtyRidesTickets;
  }

  stdout.write(
      '$totalOneRideTickets $totalTenRidesTickets $totalSixtyRidesTickets');
}
