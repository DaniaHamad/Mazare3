class Booking{
  int bookingID;
  int farmID;
  int userID;
  DateTime startDate;
  DateTime endDate;
  String discountCode;
  double total;
  int paymentID;

  Booking({required this.bookingID, required this.farmID, required this.userID,
  required this.startDate, required this.endDate, required this.discountCode,
   required this.total, required this.paymentID});
}