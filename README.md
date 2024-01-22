SwiftUI Side Menu with Clean Code and Modular Design
Overview:

<p align="center">
  <img width="300" align="center" src="https://github.com/kambizvb6/SideMenu-Swiftui/blob/main/SideMenu.gif" alt="demo"/>
</p>

This repository contains a SwiftUI project implementing a Side Menu using Modularizing iOS Applications. The User Profile View displays a list of users with their profile images, names, checkmark badges, follower counts, and supports searching and deletion functionalities.
Key Components:

    UserProfileView:
        A SwiftUI View responsible for displaying the user profile list.
        Utilizes the MVVM architecture with a dedicated UserViewModel for managing user data.
        Includes a search bar for filtering users based on their usernames.
        Implements a dynamic list with user information and supports swipe-to-delete functionality.

    UserViewModel:
        An ObservableObject class serving as the ViewModel for the UserProfileView.
        Manages the user data and loading state.
        Fetches user data asynchronously upon initialization.
        Provides methods for deleting users from the list.

    UserModel:
        Represents the data model for a user, including user image, name, full name, and follower count.

Additional Features:

    Loading Indicator:
        Displays a loading indicator while user data is being fetched.

    Tap Gesture:
        Prints the username to the console when a user cell is tapped.
