import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/transaction_two_page/models/transaction_two_model.dart';

/// A controller class for the TransactionTwoPage.
///
/// This class manages the state of the TransactionTwoPage, including the
/// current transactionTwoModelObj
class TransactionTwoController extends GetxController {
  TransactionTwoController(this.transactionTwoModelObj);

  Rx<TransactionTwoModel> transactionTwoModelObj;
}
