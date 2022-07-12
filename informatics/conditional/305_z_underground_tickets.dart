// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=305#1

import 'dart:convert';
import 'dart:io';

void main() {
  int ridesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  const oneRideTicketPrice = 15;
  const fiveRidesTicketPrice = 70;
  const tenRidesTicketPrice = 125;
  const twentyRidesTicketPrice = 230;
  const sixtyRidesTicketPrice = 440;

  const int fiveRides = 5;
  const int tenRides = 10;
  const int twentyRides = 20;
  const int sixtyRides = 60;

  int totalSixtyRidesTickets = ridesQuantity ~/ sixtyRides;
  int totalTwentyRidesTickets = (ridesQuantity % sixtyRides) ~/ twentyRides;
  int totalTenRidesTickets = (ridesQuantity % sixtyRides) ~/ tenRides;
  int totalFiveRidesTickets = (ridesQuantity % sixtyRides) ~/ fiveRides;
  int totalOneRideTickets = ridesQuantity % 10;

  int totalPriceTwentyRidesTickets =
      totalTwentyRidesTickets * twentyRidesTicketPrice;
  int totalPriceTenRidesTickets = totalTenRidesTickets * tenRidesTicketPrice;
  int totalPriceFiveRidesTickets = totalFiveRidesTickets * fiveRidesTicketPrice;
  int totalPriceOneRideTickets = totalOneRideTickets * oneRideTicketPrice;

  if (totalPriceOneRideTickets > fiveRidesTicketPrice) {
    totalOneRideTickets = 0;
    totalFiveRidesTickets = totalFiveRidesTickets + 1;
  }

  if (totalPriceOneRideTickets + totalPriceFiveRidesTickets >
      tenRidesTicketPrice) {
    totalFiveRidesTickets = 0;
    totalTenRidesTickets = totalTenRidesTickets + 1;
  }

  if ((totalPriceOneRideTickets +
          totalPriceFiveRidesTickets +
          totalPriceTenRidesTickets) >
      twentyRidesTicketPrice) {
    totalTenRidesTickets = 0;
    totalTwentyRidesTickets = totalTwentyRidesTickets + 1;
  }

  if ((totalPriceOneRideTickets +
          totalPriceFiveRidesTickets +
          totalPriceTenRidesTickets +
          totalPriceTwentyRidesTickets) >
      sixtyRidesTicketPrice) {
    totalTwentyRidesTickets = 0;
    totalSixtyRidesTickets = totalSixtyRidesTickets + 1;
  }

  stdout.write(
      '$totalOneRideTickets $totalFiveRidesTickets $totalTenRidesTickets $totalTwentyRidesTickets $totalSixtyRidesTickets');
}
