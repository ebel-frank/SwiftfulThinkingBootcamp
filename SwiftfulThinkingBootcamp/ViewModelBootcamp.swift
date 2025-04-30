//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Frank Ebeledike on 12/04/2025.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
    
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let fruit1 = FruitModel(name: "Orange", count: 5)
            let fruit2 = FruitModel(name: "Watermelon", count: 88)
            let fruit3 = FruitModel(name: "Mango", count: 2)
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
//    @State var fruits: [FruitModel] = [
//        FruitModel(name: "Banana", count: 3)
//    ]
    // @StateObject -> use this on creation / Int
    // ObservedObject -> use this for subviews
    @StateObject var fvm: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fvm.isLoading {
                    ProgressView()
                } else {
                    ForEach(fvm.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fvm.deleteFruit)
                }
            }
            .navigationTitle("Fruits Inventory")
            .navigationBarItems(trailing: NavigationLink(
                destination: GotoScreen(fvm: fvm),
                label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }
            ))
        }
    }

}

struct GotoScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fvm: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fvm.fruits) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                Spacer()
                Button {
                    fvm.getFruits()
                } label: {
                    if fvm.isLoading {
                        ProgressView()
                    } else {
                        Text("Get Fruits")
                    }
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
