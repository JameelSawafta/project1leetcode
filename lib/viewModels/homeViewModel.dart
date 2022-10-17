import '../repository/dataRepository.dart';
import 'dataViewModel.dart';

class HomeViewModel{
  final String title="Home";
  List<String> recentAC=[
    "Valid Parentheses",
    "Valid Anagram",
    "Is Subsequence",
    "Isomorphic Strings",
    "Longest Common Prefix",
    "Find Pivot Index",
    "Running Sum of 1d Array",
    "Best Time to Buy and Sell Stock",
    "Roman to Integer",
    "Palindrome Number",
    "Two Sum",
    "Single Number"
  ];

  DataRepository? dataRepository;
  HomeViewModel({this.dataRepository});

  Future<List<DataViewModel>> getAllDataAPI() async {
    var dataFromAPI = await dataRepository!.getAllData();
    return dataFromAPI.map((data)=>DataViewModel(dataModel: data)).toList();
  }
  List<DataViewModel> getAllData()  {
    var dataFromLocal = dataRepository!.getAllData();
    return dataFromLocal.map((data)=>DataViewModel(dataModel: data)).toList();
  }
}