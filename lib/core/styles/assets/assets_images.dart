abstract class AssetsImages {
  AssetsImages._();
/*
assets/images/categories/business.png assets/images/categories/entertainment.png assets/images/categories/health.png assets/images/categories/science.jpg assets/images/categories/sport.png assets/images/categories/technology.jpg assets/images/logo.jpg
 */

  //* Basic path
  static const basicPath = 'assets/images';
  static const basicPathCategories = 'assets/images/categories';
  static const basicPathSearch = 'assets/images/search';

  //* Logo
  static const logo = '${basicPath}/logo.jpg';

  //* Categories
  static const business = '${basicPathCategories}/business.png';
  static const entertainment = '${basicPathCategories}/entertainment.png';
  static const health = '${basicPathCategories}/health.png';
  static const science = '${basicPathCategories}/science.jpg';
  static const sport = '${basicPathCategories}/sport.png';
  static const technology = '${basicPathCategories}/technology.jpg';

  static const newsCategoriesImages = [
    technology,
    business,
    science,
    sport,
    health,
    entertainment,
  ];

 static const searchIcon = '${basicPathSearch}/searchIcon.png';
 static const noBody = '${basicPathSearch}/noBody.png';
}
