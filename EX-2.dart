class BankAccount {
  // acc atribute has accNumber(a unique indetifier), accHolderName(name of the owner), balance
  int _accId;
  String _accOwner;
  double _currentBalance;
  BankAccount(this._accId, this._accOwner, this._currentBalance);
  int get accId => _accId;
  String get accOwner => _accOwner;
  double get currentBalance => _currentBalance;
  double balance() {
    double balance = _currentBalance;
    return balance;
  }

  //withdraw
  double withdraw(double amount) {
    double calculate = _currentBalance - amount;
    if (calculate >= 0) {
      _currentBalance = calculate;
      return _currentBalance;
    } else {
      throw 'Insufficient balance for withdrawal!';
    }
  }

  //credit
  double credit(double amount) {
    _currentBalance = _currentBalance + amount;
    return _currentBalance;
  }
}

class Bank {
  String bankName;
  List<BankAccount> _accounts = [];
  Bank(this.bankName);
  List<BankAccount> get accounts => _accounts;
  BankAccount createAccount(
    int accountId,
    String accountOwner,
    double accBalance,
  ) {
    //loop to ensure accid is unique
    for (BankAccount acc in _accounts) {
      if (acc.accId == accountId) {
        throw 'Account with ID $accountId already exists!';
      }
    }
    //creata new bank acc
    BankAccount newAcc = BankAccount(accountId, accountOwner, accBalance);
    //add the acc to the bank list
    _accounts.add(newAcc);
    return newAcc;
  }
}

void main() {
  Bank myBank = Bank("CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan',0);

  print(ronanAccount.balance()); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance()); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance()); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy', 100); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
