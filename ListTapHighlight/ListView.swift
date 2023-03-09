import SwiftUI

/// Listで押下時の背景色を変える場合に使うButtonStyle
protocol ListButtonStyle: ButtonStyle {
    /// 通常の背景色
    var backgroundColor: Color { get }
    /// 押下時の背景色
    var pressedBackgroundColor: Color { get }

    /// 背景色を取得する
    /// - Parameter isPressed: 押下時かどうか
    /// - Returns: Color
    func backgroundColor(isPressed: Bool) -> Color
}

extension ListButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(backgroundColor(isPressed: configuration.isPressed))
    }

    func backgroundColor(isPressed: Bool) -> Color {
        return isPressed ? pressedBackgroundColor : backgroundColor
    }
}

struct ListItemButtonStyle: ListButtonStyle {
    var backgroundColor: Color = .init(red: 245/255, green: 245/255, blue: 245/255)
    var pressedBackgroundColor: Color = .init(red: 255/255, green: 192/255, blue: 203/255)
}

struct ListItemView: View {
    var title: String
    
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Text(title)
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        // ButtonStyleでタップ中のスタイルを指定
        .buttonStyle(ListItemButtonStyle())
    }
}

struct ListView: View {
    let items = Array(1...50).map{ String("Item\($0)") }
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListItemView(title: item)
                    .listRowInsets(.init())
            }
        }
        .listStyle(.plain)
        .navigationTitle("ListView")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
