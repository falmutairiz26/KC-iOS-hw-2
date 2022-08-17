//
//  ContentView.swift
//  hw 2
//
//  Created by Fatemah Almutairi on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    //1
     @State var n1 : Int = 0
     @State var p1 = 2.90
    //2
     @State var n2 : Int = 0
     @State var p2 = 2.15
    //3
     @State var n3 : Int = 0
     @State var p3 = 2.90
    //4
     @State var n4 : Int = 0
     @State var p4 = 2.00
    //5
     @State var n5 : Int = 0
     @State var p5 = 1.25
    //
     @State var tots = 0.0
     @State var n = ""
     @State var aa = ""

    var body: some View {
        ZStack{
            VStack{
VStack{
    //title
        HStack{
        Text("Elevation Burger")
                .foregroundColor(Color("blue"))
                .font(.title3)
                .fontWeight(.semibold)
        Spacer()
            Image("EB")
                .resizable()
                .frame(width: 155, height: 135)
                .clipShape(Circle())
        }.padding(.horizontal)
    Spacer()
    //menu
    VStack {
        NavigationView{
        List{
            VStack {
                HStack{
                       Image("EBB")
                           .resizable()
                           .frame(width: 100, height: 100)
                       Text("Elevation Burger")
                        .foregroundColor(Color("gold"))
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                }
                    HStack {
                        Stepper(value: $n1, in: 0...10) {
                               Text("2.90KD")
                        }
                        Text("\(n1)")
                }
            }
            VStack {
                HStack{
                    Image("CB")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("Cheese Burger")
                        .foregroundColor(Color("gold"))
                        .font(.title3)
                        .fontWeight(.semibold)
                        Spacer()
                }
                    HStack {
                        Stepper(value: $n2, in: 0...10) {
                                Text("2.15KD")
                        }
                        Text("\(n2)")
                    }
            }
            VStack {
                HStack{
                    Image("FanF")
                        .resizable()
                        .frame(width: 100, height: 100)
                        Text("Fancy fries")
                        .foregroundColor(Color("gold"))
                        .font(.title3)
                        .fontWeight(.semibold)
                        Spacer()
                }
                    HStack {
                        Stepper(value: $n3, in: 0...10) {
                                Text("2.90KD")
                        }
                        Text("\(n3)")
                }
            }
            VStack {
                HStack{
                        Image("HB")
                        .resizable()
                        .frame(width: 100, height: 100)
                        Text("Hamburger")
                        .foregroundColor(Color("gold"))
                        .font(.title3)
                        .fontWeight(.semibold)
                        Spacer()
                }
                    HStack {
                        Stepper(value: $n4, in: 0...10) {
                                Text("2.00KD")
                        }
                        Text("\(n4)")
                }
            }
            VStack {
                HStack{
                    Image("FF")
                    .resizable()
                    .frame(width: 100, height: 100)
                        Text("Fresh fries")
                        .foregroundColor(Color("gold"))
                        .font(.title3)
                        .fontWeight(.semibold)
                        Spacer()
                }
                HStack {
                        Stepper(value: $n5, in: 0...10) {
                                Text("1.25KD")
                        }
                        Text("\(n5)")
                }
            }
             }.navigationTitle("Best sellers")
            .foregroundColor(.black)
            }
    }
         HStack{
                Text("Total Price:")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .padding(.leading)
                Spacer()
                Text("\(tots)KD")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                    .padding(.trailing)
            }
}
    //total
    VStack {
        HStack{
             Text("Amount Of Cash")
             TextField("$",text:$n)
                .multilineTextAlignment(.center)
                .frame(width: 90, height: 35)
                .background(Color.white.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    //calculate the amount
    VStack{
            Text("calculate Price")
            .multilineTextAlignment(.center)
            .frame(width: 190, height: 35)
            .background(Color.white.opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .onTapGesture {
                tots = totalc(n1: Double(n1) , p1: 2.90, n2: Double(n2) , p2: 2.15, n3: Double(n3) , p3: 2.0, n4: Double(n4) , p4: 1.85, n5: Double(n5) , p5: 1.15)

                if tots <= (Double(n) ?? 0)
                {
                    aa = "Affordable"
                }
                else if tots == (Double(n) ?? 0)
                {
                    aa = "Affordable"
                }
                else if tots >= (Double(n) ?? 0)
                {
                    aa = "Un-affordable"
                }
                else
                {
                    aa = "Enter amount of cash"
                }
            }

        Text("\(aa)")
}
}
}
}
}
    func totalc(n1: Double, p1: Double, n2: Double, p2: Double, n3: Double, p3: Double, n4: Double, p4: Double,n5: Double,p5: Double) -> Double{
            return (n1 * p1) + (n2 * p2) + (n3 * p3) + (n4 * p4) + (n5 * p5)
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
