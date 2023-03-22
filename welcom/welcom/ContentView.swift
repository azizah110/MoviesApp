//
//  ContentView.swift
//  welcom
//
//  Created by azizah ahmed alshami on 25/07/1444 AH.
//
        import SwiftUI

        struct ContentView: View {
            
            @State var isActive : Bool = false
            @State private var size = 0.5
            @State private var opacity = 0.5
            @State var bowAnimation = false
            
            @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
            
            var body: some View {
                
                if isActive {
                    if !isUserOnboarded {
                        ContentView()
                    }
//                    else {
//                        SwiftUIView()
//                    }
                } else {
//                    ZStack{
//                        SwiftUIView()
                        VStack{
                            
                            VStack {
                                Image("Image1")
                                   // .resizable()
                                    .scaledToFill()
                                    .aspectRatio(0.5, contentMode: .fill)
                                  //  .edgesIgnoringSafeArea(.all)
                              
                                
                            }   .scaleEffect(size)
                                .opacity(opacity)
                                .onAppear {
                                    withAnimation(.easeIn (duration: 1.2)) {
                                        self.size = 1.00
                                        self.opacity = 2.00}}
                            
                        }
                        
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                                withAnimation {
                                    self.isActive = true
                                }
                                
                            }
                        }
                    }
                }
                
                
            }
//        }

      
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
