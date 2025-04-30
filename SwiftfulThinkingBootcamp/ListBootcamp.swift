//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 15/02/2025.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits = [
        "Apple", "Orange", "Bannana", "Peach",
    ]
    @State var places = [
        "Abuja", "Kano", "Kaduna", "Niger",
    ]
    @State var showAlert = false
    @State var listBg = Color.pink
    
    //    @State var alertTitle: String = ""
    //    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: deleteFruit)
                    .onMove { from, to in
                        fruits.move(fromOffsets: from, toOffset: to)
                    }
                    .listRowBackground(listBg)
                } header: {
                    Text("Fruits")
                        .foregroundColor(.green)
                }
                
                Section(
                    header: Text("Places")
                ) {
                    ForEach(places, id: \.self) { place in
                        Text(place.capitalized)
                            .onTapGesture {
                                showAlert.toggle()
                            }
                    }
                    .onDelete(perform: deletePlace)
                }
                
                Button("Show error alert") {
                    alertType = .error
                    //                    alertTitle = "Error"
                    //                    alertMessage = "An error occured while uploading your video, please try again later"
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: getAlert)
                Button("Show  success alert") {
//                    alertType = .success
                    //                    alertTitle = "Success"
                    //                    alertMessage = "Your video has been uploaded successfully"
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: getAlert)
                
            }
            //            .listStyle(.inset)
            .navigationTitle("Products")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button("Add") {
                    fruits.append("Coconut")
                })
        }
        .accentColor(.red)
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func deletePlace(indexSet: IndexSet) {
        places.remove(atOffsets: indexSet)
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            Alert(title: Text("Success"), message: Text("Your video has been uploaded successfully"))
        case .error:
            Alert(title: Text("Error"), message: Text("An error occured while uploading your video, please try again later"))
        default:
            Alert(title: Text("ERROR"))
        }
        //        Alert(title: Text(alertTitle),
        //              message: Text(alertMessage),
        //              dismissButton: .default(Text("OK")))
        //        Alert(
        //            title: Text("Hello"),
        //            message: Text("This is an alert"),
        //            primaryButton: .destructive(Text("Delete"), action: {
        //                listBg = Color.yellow
        //            }),
        //            secondaryButton: .cancel()
        //        )
    }
}

#Preview {
    ListBootcamp()
}
