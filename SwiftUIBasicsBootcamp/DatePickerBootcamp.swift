//
//  DatePickerBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 3.09.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    var body: some View {
        VStack {
            
            Text("The selected date is: ")
                .font(.title2)
                .fontWeight(.semibold)
            Text(formatter.string(from: selectedDate))
                .font(.headline)
                .padding()
                .background(Color.clear)
                
            
            
            //DatePicker("Select a date", selection: $selectedDate)
            //DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .datePickerStyle(CompactDatePickerStyle() // default one
                                 //.datePickerStyle(WheelDatePickerStyle())
                                 //.datePickerStyle(GraphicalDatePickerStyle())
                )
                .padding()
                .background()
                .cornerRadius(20)
                .padding()
                .shadow(color: .black, radius: 10, x: 5, y: 5)
                
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
