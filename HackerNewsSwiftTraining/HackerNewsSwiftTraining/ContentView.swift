import SwiftUI
import Foundation


struct ContentView: View {
    @StateObject var viewModel = NewsViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.courses, id: \.self) {
                    course in
                    NavigationLink(destination: DetailView(url: course.url)){
                        HStack{
                            Text("\(course.points!)")
                            Text(course.title!)
                        }
                        .padding(3)
                    }
                }
                    
            }
            .navigationTitle("Courses")
            .onAppear{
                viewModel.fetch()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
