import SwiftUI

struct AlarmView: View {
    @State private var currentDate = Date()
    @State private var showDatePicker: Bool = false
    @ObservedObject var viewModel: AlarmViewModel

    var body: some View {
        ZStack {
            dialLabel
            if showDatePicker {
                DatePickerView(
                    currentDate: $currentDate,
                    showDatePicker: $showDatePicker,
                    onDismiss: { action in
                        switch action {
                            case .ok:
                                break
                            case .cancel:
                                currentDate = viewModel.getStoredTime()
                        }
                    }
                )
            }
        }
        .frame(
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height
        )
        .background(Color.white)
    }
}

private extension AlarmView {
    var dialLabel: some View {
        VStack {
            HStack {
                Text(viewModel.dateFormatter.string(from: currentDate))
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding([.leading, .top], 50)
                    .onTapGesture {
                        self.showDatePicker = true
                        viewModel.storeTime(currentDate)
                    }
                Spacer()
            }
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView(viewModel: AlarmViewModel())
    }
}
#endif
