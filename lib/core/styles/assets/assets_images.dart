abstract class AssetsImages {
  AssetsImages._();
/*
home_ui_dark.jpg 
home_ui_light.jpg 
search_ui_dark.jpg 
search_ui_light.jpg
 */

  //* Basic path
  static const basicPath = 'assets/images';
  static const basicPathCategories = 'assets/images/categories';
  static const basicPathSearch = 'assets/images/search';
  static const basicPathTheme = 'assets/images/theme';

  //* Logo
  static const logo = '${basicPath}/logo.jpg';

  //* Categories
  static const business = '${basicPathCategories}/business.png';
  static const entertainment = '${basicPathCategories}/entertainment.png';
  static const health = '${basicPathCategories}/health.png';
  static const science = '${basicPathCategories}/science.jpg';
  static const sport = '${basicPathCategories}/sport.png';
  static const technology = '${basicPathCategories}/technology.jpg';

  //*Theme
  static const homeDark = '${basicPathTheme}/home_ui_dark.jpg';
  static const homeLight = '${basicPathTheme}/home_ui_light.jpg';
  static const searchDark = '${basicPathTheme}/search_ui_dark.jpg';
  static const searchLight = '${basicPathTheme}/search_ui_light.jpg';

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
