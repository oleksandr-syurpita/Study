import SwiftUI

struct DatePickerView: View {

    @Binding var currentDate: Date
    @Binding var showDatePicker: Bool

    enum Actions {
        case ok
        case cancel
    }

    var onDismiss: (Actions) -> Void

    var body: some View {
        VStack {
            datePicker
            buttons
        }
        .frame(
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height
        )
        .background(Color.green.opacity(0.5))
    }
}

private extension DatePickerView {
    var datePicker: some View {
        DatePicker(
            String(),
            selection: $currentDate,
            displayedComponents: .hourAndMinute
        )
        .localizedEnvironment()
       
//        .datePickerStyle(WheelDatePickerStyle())
        .datePickerStyle(WheelDatePickerStyle())
        .labelsHidden()
        .background(Color.black)
        .cornerRadius(30)

    }

    var buttons: some View {
        VStack {
            Button(action: {
                showDatePicker = false
            }, label: {
                Text("OK")
            })
            .padding()

            Button(action: {
                showDatePicker = false
                onDismiss(.cancel)
            }, label: {
                Text("Cancel")
            })
            .padding()
        }
    }
}

#if DEBUG
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView(
            currentDate: .constant(Date()),
            showDatePicker: .constant(true),
            onDismiss: { _ in }
        )
    }
}
#endif
