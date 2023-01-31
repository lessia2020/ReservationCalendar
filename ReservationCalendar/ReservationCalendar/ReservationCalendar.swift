//
//  ReservationCalendar.swift
//  ReservationCalendar
//
//  Created by Olesia Nurislamova on 31.01.2023.
//

import SwiftUI

struct ReservationCalendar: View {
    
@State var reservationDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(selection: $reservationDate, in: Date()..., label: {})
                
                Button(action: {
                    print("done")
                }, label: {
                    HStack{
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }).padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
