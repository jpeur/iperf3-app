//
//  ContentView.swift
//  iperf3-app
//
//  Created by Jackson Peurach on 8/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var task = iperfTask.client
    
    enum iperfTask {
        case client
        case server
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Pick the iperf3 task", selection:$task) {
                    Text("Client").tag(iperfTask.client)
                    Text("Server").tag(iperfTask.server)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding([.horizontal])
                
            }
        }
        .navigationTitle("iperf3")
    }
}

#Preview {
    ContentView()
}
