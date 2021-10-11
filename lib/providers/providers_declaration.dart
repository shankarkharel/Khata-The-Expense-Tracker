import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Khata/contracts/i_local_storage.dart';
import 'package:Khata/models/espense_model.dart';
import 'package:Khata/providers/expenses.dart';

final localStorageProvider = Provider<ILocalStorage>(
  (ref) => throw UnimplementedError(),
);

final expensesProvider =
    StateNotifierProvider<Expenses, List<ExpenseModel>>(
  (ref) => Expenses(ref.read(localStorageProvider)),
);