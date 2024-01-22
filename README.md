SwiftUI Side Menu with Clean Code and Modular Design
Overview:

<p align="center">
  <img width="220" align="center" src="https://github.com/kambizvb6/SideMenu-Swiftui/blob/main/dark.png" alt="demo"/>
  <img width="220" align="center" src="https://github.com/kambizvb6/SideMenu-Swiftui/blob/main/SideMenu.gif" alt="demo"/>
  <img width="220" align="center" src="https://github.com/kambizvb6/SideMenu-Swiftui/blob/main/light.png" alt="demo"/>
</p>

This repository contains a SwiftUI project implementing a Side Menu using Modularizing iOS Applications. Ta versatile and clean implementation built with SwiftUI that seamlessly integrates into your iOS app. This project emphasizes clean code practices and a modular architecture using Enum models. The Side Menu is meticulously designed to support both light and dark modes, providing a consistent and polished user experience.

Key Components:

    Model Folder:
        In this folder, we have two models. You can add sections, menus, and also change menu icons.
        The SideMenuOptionModel.swift file defines an enumeration called SideMenuOptionModel, which represents different options for a side menu in a SwiftUI-based iOS application.
        Each option is associated with an integer raw value and conforms to the CaseIterable protocol, making it easy to iterate over all the cases.

    View:
        In this folder, we have two subfolders: "components" containing SideMenuHeaderView, SideMenuRowView, SideMenuSectionView, and SideMenuFooterView. 
        We've implemented all the code separately, making it modular and organized.

    ContentView:
        Finally, we implement all of the modules in the "ContentView" file.
