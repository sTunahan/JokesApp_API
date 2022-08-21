

import Foundation
import Alamofire



//MARK: - @Published
class JokesViewModel : ObservableObject{
    
    @Published var jokes = [Value]()
    
    
    init () {
        getJokes()
    }
    
//MARK: - request
    
    
    func getJokes(requestNumber:Int = 6){
        
       
        AF.request("http://api.icndb.com/jokes/random/\(requestNumber)",method: .get).responseDecodable(of:Welcome.self) { response in
            
            
            switch response.result {
            case .success(let data):
                print(data)
                let value = data.value
                self.jokes += value
            case.failure(let error):
                print(error)
            }
            
        }
    }
}
