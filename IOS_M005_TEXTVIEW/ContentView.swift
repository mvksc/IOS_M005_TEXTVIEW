//
//  ContentView.swift
//  IOS_M005_TEXTVIEW
//
//  Created by MVK on 18/9/2563 BE.
//  Copyright © 2563 MVK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let sName = "Mr.Warayut Khuntongdang"
    let sNickName = "Aem"
    let sToday = Date()
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        //formatter.dateStyle = .long
        //formatter.dateStyle = .short
        formatter.dateFormat = "dd-MM-YYYY"
        return formatter
    }()
    
    static let numberFormat: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body: some View {
        VStack(spacing:20){
            Text(self.sName)//self เพื่อระบุว่าเรียกตัวแปรที่มาจาก Class หรือ struct
            Text(sName)
            Text("My nick name is \(sNickName)")
            Text("Today is \(sToday,formatter: Self.dateFormat)")//static ต้องใช้ Self
            Text("My money is \(Self.numberFormat.string(from: 9999999999)!)").bold()
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
