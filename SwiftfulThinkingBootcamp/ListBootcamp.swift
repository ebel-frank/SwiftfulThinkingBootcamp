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
                
                Button("Show alert") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(
                        title: Text("Hello"),
                        message: Text("This is an alert"),
                        primaryButton: .destructive(Text("DELETE"), action: {
                            listBg = Color.yellow
                        }),
                        secondaryButton: .cancel()
                    )
                })

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
}

#Preview {
    ListBootcamp()
}
