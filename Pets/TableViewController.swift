import UIKit

class TableViewController: UITableViewController {
    
    let reuseIdentifier = "cell"
    let casey = Pets(name: "Casey", type: "Dog")
    let jack = Pets(name: "Jack", type: "Dog")
    let fox = Pets(name: "Foxy", type: "Fox")
    let kangaroo = Pets(name: "Jumpy", type: "Kangaroo")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Model.shared.pets.append(casey)
        Model.shared.pets.append(jack)
        Model.shared.pets.append(fox)
        Model.shared.pets.append(kangaroo)
        tableView.reloadData()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.pets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) else {fatalError("No Cell")}
        cell.textLabel?.text = Model.shared.pets[indexPath.row].name
        return cell
    }


}

