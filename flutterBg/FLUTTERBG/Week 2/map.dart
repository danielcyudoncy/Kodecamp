Map a = {};
var b = {};

Map countryCapitals = {
  'France': 'Paris',
  'USA': 'Washinton',
  'Japan': 'Tokyo',
};
Map nameAge = {'David': 72, 'Dele': 45, 'De': 45};
Map employees = {
  23: {'Name': 'David', 'dept': 'Engineering', 'Salary': 1000},
  24: {'Name': 'Daniel', 'dept': 'Software', 'Salary': 1500},
};

void main(List<String> args) {
  nameAge['jt'] = 'Janet';
  print(nameAge['De']);
}
