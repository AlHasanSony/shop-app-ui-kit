### State management

- BLoC - State management
  https://bloclibrary.dev


### How to format your code?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

![screenshots](https://github.com/AlHasanSony/shop-app-ui-kit/assets/48161357/e020428d-d0ec-4855-bbee-fa59e11cf726)


.
├── core
│   ├── app_export.dart
│   ├── constants
│   │   └── constants.dart
│   ├── errors
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── network
│   │   └── network_info.dart
│   └── utils
│       ├── date_time_utils.dart
│       ├── image_constant.dart
│       ├── logger.dart
│       ├── navigator_service.dart
│       ├── pref_utils.dart
│       ├── progress_dialog_utils.dart
│       ├── size_utils.dart
│       └── validation_functions.dart
├── data
│   ├── apiClient
│   │   └── api_client.dart
│   └── models
│       └── selectionPopupModel
│           └── selection_popup_model.dart
├── domain
│   ├── facebookauth
│   │   ├── facebook_auth_helper.dart
│   │   └── facebook_user.dart
│   └── googleauth
│       └── google_auth_helper.dart
├── localization
│   ├── app_localization.dart
│   └── en_us
│       └── en_us_translations.dart
├── main.dart
├── presentation
│   ├── app_navigation_screen
│   │   ├── app_navigation_screen.dart
│   │   ├── bloc
│   │   │   ├── app_navigation_bloc.dart
│   │   │   ├── app_navigation_event.dart
│   │   │   └── app_navigation_state.dart
│   │   └── models
│   │       └── app_navigation_model.dart
│   ├── detail_product_screen
│   │   ├── bloc
│   │   │   ├── detail_product_bloc.dart
│   │   │   ├── detail_product_event.dart
│   │   │   └── detail_product_state.dart
│   │   ├── detail_product_screen.dart
│   │   └── models
│   │       └── detail_product_model.dart
│   ├── filter_dialog
│   │   ├── bloc
│   │   │   ├── filter_bloc.dart
│   │   │   ├── filter_event.dart
│   │   │   └── filter_state.dart
│   │   ├── filter_dialog.dart
│   │   └── models
│   │       └── filter_model.dart
│   ├── home_container_screen
│   │   ├── bloc
│   │   │   ├── home_container_bloc.dart
│   │   │   ├── home_container_event.dart
│   │   │   └── home_container_state.dart
│   │   ├── home_container_screen.dart
│   │   └── models
│   │       └── home_container_model.dart
│   ├── home_page
│   │   ├── bloc
│   │   │   ├── home_bloc.dart
│   │   │   ├── home_event.dart
│   │   │   └── home_state.dart
│   │   ├── home_page.dart
│   │   ├── models
│   │   │   ├── home_model.dart
│   │   │   └── usercard_item_model.dart
│   │   └── widgets
│   │       └── usercard_item_widget.dart
│   ├── home_tab_container_page
│   │   ├── bloc
│   │   │   ├── home_tab_container_bloc.dart
│   │   │   ├── home_tab_container_event.dart
│   │   │   └── home_tab_container_state.dart
│   │   ├── home_tab_container_page.dart
│   │   ├── models
│   │   │   ├── banner_item_model.dart
│   │   │   └── home_tab_container_model.dart
│   │   └── widgets
│   │       └── banner_item_widget.dart
│   ├── log_in_screen
│   │   ├── bloc
│   │   │   ├── log_in_bloc.dart
│   │   │   ├── log_in_event.dart
│   │   │   └── log_in_state.dart
│   │   ├── log_in_screen.dart
│   │   └── models
│   │       └── log_in_model.dart
│   ├── onboarding_screen
│   │   ├── bloc
│   │   │   ├── onboarding_bloc.dart
│   │   │   ├── onboarding_event.dart
│   │   │   └── onboarding_state.dart
│   │   ├── models
│   │   │   └── onboarding_model.dart
│   │   └── onboarding_screen.dart
│   └── sign_up_screen
│       ├── bloc
│       │   ├── sign_up_bloc.dart
│       │   ├── sign_up_event.dart
│       │   └── sign_up_state.dart
│       ├── models
│       │   └── sign_up_model.dart
│       └── sign_up_screen.dart
├── routes
│   └── app_routes.dart
├── theme
│   ├── app_decoration.dart
│   ├── bloc
│   │   ├── theme_bloc.dart
│   │   ├── theme_event.dart
│   │   └── theme_state.dart
│   ├── custom_button_style.dart
│   ├── custom_text_style.dart
│   └── theme_helper.dart
└── widgets
├── app_bar
│   ├── appbar_image.dart
│   ├── appbar_image_1.dart
│   ├── appbar_title.dart
│   └── custom_app_bar.dart
├── base_button.dart
├── custom_bottom_bar.dart
├── custom_elevated_button.dart
├── custom_icon_button.dart
├── custom_image_view.dart
├── custom_outlined_button.dart
├── custom_search_view.dart
└── custom_text_form_field.dart

50 directories, 90 files