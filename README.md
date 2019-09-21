# FancyControl

A new SwiftUI project 

UIViewRepresentable for MapKit, CircleImage for Avatar, Model , load Data, List, NavigationView, NavigationLink, Handling User Input,ScrollView,@EnvironmentObject,GeometryReader


Image().renderingMode(.original)

Array(landmarkDataList.prefix(3))

@Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
self.presentationMode.wrappedValue.dismiss()

List{
...
}.sheet(isPresented: $schowProfile){
    ProfileView()
}

## Screenshot

![image](https://github.com/ly05010419/WWDC19/blob/master/screenshot.png?raw=true)

