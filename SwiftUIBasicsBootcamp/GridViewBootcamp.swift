//
//  GridViewBootcamp.swift
//  SwiftUIBasicsBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 27.09.2024.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid {
            GridRow {
                Color.green.opacity(0.3)
                    .gridCellColumns(3)
            }
            GridRow {
                Color.blue.opacity(0.3)
                Color.red.opacity(0.3)
                    .gridCellColumns(2)
            }
            GridRow {
                Color.green.opacity(0.3)
                Color.blue.opacity(0.3)
                Color.red.opacity(0.3)
            }
            GridRow {
                Color.orange.opacity(0.3)
                    .gridCellColumns(2)
                Color.red.opacity(0.3)
            }
        }
    }
}

#Preview {
    GridViewBootcamp()
}
