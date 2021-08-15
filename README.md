# githubstatus

Welcome to Take-Home Test, I hope you enjoy while you`re reading my code :D

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)


Once you clone this repo in your computer you have to do the next steps:
    1.- In terminal run the next command: flutter pub get (this will be install all dependencies).
    2.- After installed, you will be able to run the application.
    3.- Find the main.dart and start debugging in your device. (Could be iOS or Android, even emulators).
    4.- When the app is running you will see a welcome view, then a start button.
    5.- In Github Actions view, you will see 4 option.
        5.1 : This module will list the public repositories from my github account.
        5.2 : This module will list all the commits of this project.
        5.3 : This module will list the public repositories from my github account using NodeJS and Express as API REST.
        5.4 : This module will list all the commits of this project using NodeJS and Express as API REST.
    6.- For 5.3 and 5.4 you will see a 404 error image. To solve this you have to clone and run the next repo: https://github.com/GermanRuelasCastillo/backendGithubstatus
    7.- Once you have finished cloning, you have to run the next command: npm install.
    8.- After install, you have to run the next command: npm run dev
    9.- The last command will run a server with the API, please make sure the port you`re running on, and set the same port in lib/services/api:5
    10.- Finally, it`s very very important to set you IP in lib/services/api:5. To get your IP just open your terminal and run ifconfig (MacOs/Linux) or ipconfig(Windows).

    Interesting data:

        - In welcome view you'll see a simple animation to show the content.
        - I configured the modules with bloc pattern.
        - Correct use to Widget inheritance.
        - Theme colors based in FULLTIME FORCE.
        - Optimize of svg logo.
        - "npm run test" in backendGithubstatus project to test the API.
        -