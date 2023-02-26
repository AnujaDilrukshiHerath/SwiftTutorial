//
//  ContentView.swift
//  BasicBMI
//
//  Created by Anuja Dilrukshi on 2023-02-10.
//

import SwiftUI

struct ContentView: View {
    @State private var weightText: String = ""
    @State private var heightText: String = ""
    @State private var bmi: Double = 0.0
    @State private var classification : String = ""
    @State private var showAlert: Bool = false
    @State private var bmiText: String = ""
    @State private var bmiDetail: String = ""
    @State private var bmiString: String = ""
    
    @State private var weightSlider: Double = 1
    @State private var heightSlider: Double = 1


    
    var body: some View {
        ZStack{
            Color.cyan
            //ContentView().environment(\.colorScheme, .dark)
                .ignoresSafeArea()
        
            
            VStack(spacing : 20){
                
                //            Text("BMI Calculator:").font(.largeTitle)
                //            TextField("Enter Weight (in kilograms)",text: $weightText).textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.black)
                Text("BMI Calculator").font(.largeTitle).fontWeight(.semibold)
                
                HStack(spacing: 20.0){
                    Text("Weight")
                        .frame(width: 100, height: 50, alignment: .leading)
                    TextField("Enter Weight in Kilograms", text: $weightText)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                    
                }
                Slider(value: $weightSlider, in: 1...300){ _ in
                    weightText = String( format: "%2f", weightSlider)
                }
                
                
                HStack(spacing: 20.0){
                    
                    Text("Height")
                        .frame(width: 100, height: 50, alignment: .leading)
                    TextField("Enter Height in meters", text: $heightText)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
                }
                Slider(value: $heightSlider, in: 1...300){ _ in
                    heightText = String(format: "%2f", heightSlider)
                    
                }
            }
            
            
            
            //            Text("Weight")
            //            TextField("Enter Weight in Kilograms", text: $weightText)
            //                .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
            //
            //
            //            Text("Height")
            //            TextField("Enter Height in meters", text: $heightText)
            //                .textFieldStyle(RoundedBorderTextFieldStyle()).border(Color.blue)
            
            Button {
                guard let weight = Double(weightText),
                      let height = Double(heightText) else{
                    showAlert = true
                    
                    print("Invalid Input")
                    return
                }
                
                let bmi = weight / pow(height, 2)
                self.bmi = Double(bmi)
                
                //                    let result
                //                    let validHeight = (result != nil)
                //                    if (!height){
                //                        self.showAlert = true
                //return
                //                    }
                if self.bmi < 18.5 {
                    self.bmiDetail = "Underweight"
                }else if
                    self.bmi < 24.9 {self.bmiDetail = "Healthy weight"
                }else if
                    self.bmi < 29.9 {self.bmiDetail = "Overweight"
                }else {
                    self.bmiDetail = "Obese"}
                
                //bmiText = "Your BMI"
                //            }label:{Text("Calculate BMI").padding().foregroundColor(Color(.white)).background(Color.blue)
                
                
                showAlert = true
                bmiText = " Your BMI "
                bmiDetail = " Got it "
                
            }
        label: {
            //Text("Calculate BMI")
            Text("BMI: \(bmi, specifier: "%.1f"),\(classification)")
            
                .font(.title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.mint)
                .cornerRadius(20)
        }.alert(isPresented: $showAlert){
            Alert(title: Text(bmiText),
                  message: Text(bmiDetail),
                  dismissButton: .default(Text(bmiString)))
        }
            Text("BMI: \(bmi, specifier: "%.1f"),\(classification)")
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
            .padding()
        }
                 
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    //let textFiledInUiKit = UITextView()
    //textFiledInUiKit.text

