import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/transaction_page/models/transaction_model.dart';

/// A controller class for the TransactionPage.
///
/// This class manages the state of the TransactionPage, including the
/// current transactionModelObj
class TransactionController extends GetxController {
  TransactionController(this.transactionModelObj);

  Rx<TransactionModel> transactionModelObj;
}
