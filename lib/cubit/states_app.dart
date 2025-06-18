abstract class NewsStates {}

class NewsInitialStates extends NewsStates {}

class BottomNavigationBarStates extends NewsStates {}

class LoadingBusinessStates extends NewsStates {}

class GetBusinessSuccessStates extends NewsStates {}

class GetBusinessErrorStates extends NewsStates {
  final String errorMessage;

  GetBusinessErrorStates({required this.errorMessage});
}

class LoadingScienceStates extends NewsStates {}

class GetScienceSuccessStates extends NewsStates {}

class GetScienceErrorStates extends NewsStates {
  final String errorMessage;

  GetScienceErrorStates({required this.errorMessage});
}

class LoadingSportsStates extends NewsStates {}

class GetSportsSuccessStates extends NewsStates {}

class GetSportsErrorStates extends NewsStates {
  final String errorMessage;

  GetSportsErrorStates({required this.errorMessage});
}


class LoadingSearchStates extends NewsStates {}

class GetSearchSuccessStates extends NewsStates {}

class GetSearchErrorStates extends NewsStates {
  final String errorMessage;

  GetSearchErrorStates({required this.errorMessage});
}

