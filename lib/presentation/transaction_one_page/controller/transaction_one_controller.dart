import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/transaction_one_page/models/transaction_one_model.dart';

/// A controller class for the TransactionOnePage.
///
/// This class manages the state of the TransactionOnePage, including the
/// current transactionOneModelObj
class TransactionOneController extends GetxController {
  TransactionOneController(this.transactionOneModelObj);

  Rx<TransactionOneModel> transactionOneModelObj;
}
