import 'package:mazare3/models/Enumerations/payment_status.dart';

class Payment{
  int paymentID;
  PaymentStatus paymentStatus;
  double totalPrice;
  double ownerProfit;
  double serviceFee; 

  Payment({required this.paymentID, required this.paymentStatus, required this.totalPrice, required this.ownerProfit,
  required this.serviceFee});
}