// https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=305#1

import 'dart:convert';
import 'dart:io';

void main() {
  int ridesQuantity = int.parse(stdin.readLineSync(encoding: utf8)!);

  const int oneRideTicketPrice = 15;
  const int fiveRidesTicketPrice = 70;
  const int tenRidesTicketPrice = 125;
  const int twentyRidesTicketPrice = 230;
  const int sixtyRidesTicketPrice = 440;

  const int fiveRides = 5;
  const int tenRides = 10;
  const int twentyRides = 20;
  const int sixtyRides = 60;

  int totalSixtyRidesTickets = ridesQuantity ~/ sixtyRides;
  int totalTwentyRidesTickets = (ridesQuantity % sixtyRides) ~/ twentyRides;
  int totalTenRidesTickets = (ridesQuantity % twentyRides) ~/ tenRides;
  int totalFiveRidesTickets = (ridesQuantity % tenRides) ~/ fiveRides;
  int totalOneRideTickets = ridesQuantity % fiveRides;

  int totalPriceTwentyRidesTickets =
      totalTwentyRidesTickets * twentyRidesTicketPrice;
  int totalPriceTenRidesTickets = totalTenRidesTickets * tenRidesTicketPrice;
  int totalPriceFiveRidesTickets = totalFiveRidesTickets * fiveRidesTicketPrice;
  int totalPriceOneRideTickets = totalOneRideTickets * oneRideTicketPrice;

  if (totalPriceOneRideTickets > fiveRidesTicketPrice) {
    totalOneRideTickets = 0;
    ++totalFiveRidesTickets;
  }

  if (totalPriceOneRideTickets + totalPriceFiveRidesTickets >
      tenRidesTicketPrice) {
    totalFiveRidesTickets = 0;
    ++totalTenRidesTickets;
  }

  if ((totalPriceOneRideTickets +
          totalPriceFiveRidesTickets +
          totalPriceTenRidesTickets) >
      twentyRidesTicketPrice) {
    totalTenRidesTickets = 0;
    ++totalTwentyRidesTickets;
  }

  if ((totalPriceOneRideTickets +
          totalPriceFiveRidesTickets +
          totalPriceTenRidesTickets +
          totalPriceTwentyRidesTickets) >
      sixtyRidesTicketPrice) {
    totalTwentyRidesTickets = 0;
    ++totalSixtyRidesTickets;
  }

  stdout.write(
      '$totalOneRideTickets $totalFiveRidesTickets $totalTenRidesTickets $totalTwentyRidesTickets $totalSixtyRidesTickets');
}
