import SwiftUI

struct MainView: View {
    
    @State private var task = iperfTask.client
    @State private var serverIP = ""
    @State private var duration = 0
    @State private var showCommand = false
    
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
        
        if(task == iperfTask.client)
        {
            TextField("Enter server ip address", text: $serverIP)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    showCommand = true
                }
            
            TextField
        }
        if(showCommand)
        {
            Text("Command: iperf3 -c " + serverIP)
        }
        
        Spacer()
    }
}

#Preview {
    return NavigationStack{
        MainView()
    }
}
