class CurrenciesModel {
  String CcyNm_UZ;
  String Nominal;
  String Rate;
  String Date;

  CurrenciesModel({
    required this.CcyNm_UZ,
    required this.Date,
    required this.Nominal,
    required this.Rate,
  });

  factory CurrenciesModel.fromJson(Map<String, dynamic> json) =>
      CurrenciesModel(
        CcyNm_UZ: json['CcyNm_UZ'] ?? "error CcyNm_UZ",
        Date: json['Date'] ?? "error Date",
        Nominal: json['Nominal'] ?? "error Nominal",
        Rate: json['Rate'] ?? "error Rate",
      );
}

List<CurrenciesModel> cureniesFromMap(List list) => List<CurrenciesModel>.from(
    list.map((item) => CurrenciesModel.fromJson(item)));
