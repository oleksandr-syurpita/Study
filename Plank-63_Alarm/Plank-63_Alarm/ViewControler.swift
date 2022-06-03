import SwiftUI

class AlarmViewModel: ObservableObject {

    private var storedTime: Date?

    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = "HH : mm"
        return formatter
    }()

    func storeTime(_ time: Date) {
        storedTime = time
    }
    
    func getStoredTime() -> Date {
        return storedTime ?? Date()
    }
    

}

extension DatePicker {
   
    func localizedEnvironment() -> some View {
        return  environment(\.locale, Locale.init(identifier: "en"))

    }
}
