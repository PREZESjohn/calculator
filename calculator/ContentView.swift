//
//  ContentView.swift
//  calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

enum CalcButton:String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    case sin = "sin"

}
enum Operation{
    case add, subtract, multiply, divide, sin}

struct ContentView: View {
    
    var fontSize=36
    @State var alertShown = false

    @State var output:String = ""
    @State var currentValue: Int
    @State var lastValue: Int
    @State var currentOperation:Operation
    
    var body: some View {
        VStack(spacing: 10){
            Spacer()
            Text("KALKULATOR")
                
            Spacer()
            Text(self.output)
                .frame(width:315,height:60)
                .border(Color.black)
            HStack(spacing: 10){
                Button(CalcButton.one.rawValue){
//                    output = "1"
//                    lastValue = currentValue
//                    currentValue = 1
                    output += "1"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "1"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.two.rawValue){
//                    output = "2"
//                    lastValue = currentValue
//                    currentValue = 2
                    output += "2"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "2"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.three.rawValue){
//                    output = "3"
//                    lastValue = currentValue
//                    currentValue = 3
                    output += "3"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "3"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                        }
            HStack(spacing: 10){
                Button(CalcButton.four.rawValue){
//                    output = "4"
//                    lastValue = currentValue
//                    currentValue = 4
                    output += "4"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "4"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.five.rawValue){
//                    output = "5"
//                    lastValue = currentValue
//                    currentValue = 5
                    output += "5"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "5"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.six.rawValue){
//                    output = "6"
//                    lastValue = currentValue
//                    currentValue = 6
                    output += "6"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "6"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
            }
            HStack(spacing: 10){
                Button(CalcButton.seven.rawValue){
//                    output = "7"
//                    lastValue = currentValue
//                    currentValue = 7
                    output += "7"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "7"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.eight.rawValue){
//                    output = "8"
//                    lastValue = currentValue
//                    currentValue = 8
                    output += "8"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "8"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.nine.rawValue){
//                    output = "9"
//                    lastValue = currentValue
//                    currentValue = 9
                    output += "9"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "9"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
            }
            HStack(spacing: 10){
                Button(CalcButton.zero.rawValue){
//                    output = "0"
//                    lastValue = currentValue
//                    currentValue = 0
                    output += "0"
                    var temp = ""
                    temp = String(currentValue)
                    temp += "0"
                    currentValue=Int(temp)!
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.add.rawValue){
                    
                    lastValue=currentValue
                    currentValue=0
                    
                    self.output = ""
                    currentOperation = Operation.add
                }.foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.subtract.rawValue){
                    
                    lastValue=currentValue
                    currentValue=0
                    
                    self.output = ""
                    currentOperation = Operation.subtract
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
            }
            HStack(spacing: 10){
                Button(CalcButton.multiply.rawValue){
                    
                    lastValue=currentValue
                    currentValue=0
                    
                    self.output = ""
                    currentOperation = Operation.multiply
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.divide.rawValue){
                    
                    lastValue=currentValue
                    currentValue=0
                    
                    self.output = ""
                    currentOperation = Operation.divide
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
                Button(CalcButton.sin.rawValue){
                    
                    lastValue=currentValue
                    currentValue=0
                    
                    self.output = ""
                    currentOperation = Operation.sin
                }
                .foregroundColor(.blue)
                .frame(width:100,height:60, alignment:.center)
                .clipShape(Rectangle())
                .border(Color.black)
            }

            Button("Oblicz"){
                switch currentOperation{
                    case Operation.add:
                        self.output = String(Calculations().add(value1: currentValue,value2: lastValue))
                    case Operation.subtract:
                        self.output = String(Calculations().subtract(value1: lastValue,value2: currentValue))
                    case Operation.divide:
                        if(currentValue == 0){
                            self.output = "Cannot divide by zero"
                            self.alertShown=true
                        }
                        else{
                            self.output = String(Calculations().divide(value1: currentValue,value2: lastValue) ?? 0.0)
                        }
                    case Operation.multiply:
                        self.output = String(Calculations().multiply(value1: currentValue,value2: lastValue))
                    case Operation.sin:
                        self.output = String(Calculations().sinus(value: Double(currentValue)))
                }
            }
            .foregroundColor(.blue)
            .frame(width:315,height:60, alignment:.center)
            .clipShape(Rectangle())
            .border(Color.black)
            .alert(isPresented: $alertShown ){
                Alert(title: Text("Błąd! "), message: Text("Nie można dzielić przez zero"), dismissButton: .default(Text("Ok")))
            }
            
            
        }.font(.system(size: CGFloat(fontSize)))
    }
}
//struct Calculations
//{
//
//    func add(value1:Int, value2:Int) -> Double{
//        return Double(value1 + value2)
//    }
//    func subtract(value1:Int, value2:Int) -> Double{
//        return Double(value1 - value2)
//    }
//    func divide(value1:Int, value2:Int) -> Double{
//         if(value2 == 0){
//            return 0.0
//         }
//         return Double(Double(value2)/Double(value1));
//    }
//    func multiply(value1:Int, value2:Int) -> Double{
//        return Double(value1 * value2)
//    }
//    func sinus(value:Double) -> Double{
//        return sin(value)
//    }
//}

// struct CustomButton: View{
//
//     var text: String
//
//     var body: some View{
//
//         Button(self.text){
//         }.foregroundColor(.blue)
//         .frame(width:100,height:60, alignment:.center)
//         .clipShape(Rectangle())
//     }
// }

// struct ContentView_Previews:
//     PreviewProvider{
//     static var previews: some View {
//         ContentView(currentValue: 0, lastValue: 0, currentOperation:  Operation.add)
//     }


#Preview {
    ContentView(currentValue: 0, lastValue: 0, currentOperation: Operation.add)
}
