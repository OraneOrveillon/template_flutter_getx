# Flutter template using GetX package

I use this repo as a template for my personal Flutter projects. It is using a modular MVC architecture.
<br/>
Still improving. 🫡

## Architecture overview

```yaml
- /lib
  # Global components
  - /components
  # List of different modules, each one corresponding to a screen in your app
  - /modules
    # Module name
    - /example
      # Local components (if they exist)
      - /components
      # Dependency injection
      - example_binding.dart
      # Logic behind the view
      - example_controller.dart
      # Data class(es)
      - example_model.dart
      # Presentation layer
      - example_page.dart
      # Repository if there is one
      - example_repository.dart
  - /routes
    # Get pages 
    - pages.dart
    # Route names
    - routes.dart
  - /utils
    # Theming part
    - /theme
      # Color constants
      - colors.dart
      # Custom themes (light and dark)
      - themes.dart
    # Your enums if they exist
    - enums.dart
    # Padding constants used on screens
    - paddings.dart
    # String constants used on screens
    - texts.dart
    # Form validators
    - validators.dart
  main.dart
```

## How to use it?
See [how to create a new repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)