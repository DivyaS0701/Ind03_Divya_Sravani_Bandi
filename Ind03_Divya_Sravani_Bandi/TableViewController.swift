//
//  TableViewController.swift
//  Ind03_Divya_Sravani_Bandi
//
//  Created by Bandi, Divya Sravani on 4/5/24.
//

import UIKit

class TableViewController: UITableViewController {
    struct State{ //State struct with all the details
        let name: String
        let nickname: String
        let area: String
        let flag: UIImage?
        let map: UIImage?
    }
    
    var states: [State] = [
        State(name: "Alabama", nickname: "The Yellowhammer State ", area: "52420 Sq. miles", flag: UIImage(named: "al"), map: UIImage(named: "alabamaMap")),
        State(name: "Alaska", nickname: "The Last Frontier ", area: "665384 Sq. miles", flag: UIImage(named: "ak"), map: UIImage(named: "alaskaMap")),
        State(name: "Arizona", nickname: "The Grand Canyon State ", area: "113990 Sq. miles", flag: UIImage(named: "az"), map: UIImage(named: "arizonaMap")),
        State(name: "Arkansas", nickname: "The Natural State ", area: "53179 Sq. miles", flag: UIImage(named: "ar"), map: UIImage(named: "arkansasMap")),
        State(name: "California", nickname: "The Golden State ", area: "163695 Sq. miles", flag: UIImage(named: "ca"), map: UIImage(named: "californiaMap")),
        State(name: "Colorado", nickname: "The Centennial State ", area: "104094 Sq. miles", flag: UIImage(named: "co"), map: UIImage(named: "coloradoMap")),
        State(name: "Connecticut", nickname: "The Constitution State ", area: "5543 Sq. miles", flag: UIImage(named: "ct"), map: UIImage(named: "connecticutMap")),
        State(name: "Delaware", nickname: "The First State ", area: "2489 Sq. miles", flag: UIImage(named: "de"), map: UIImage(named: "delawareMap")),
        State(name: "Florida", nickname: "The Sunshine State ", area: "65758 Sq. miles", flag: UIImage(named: "fl"), map: UIImage(named: "floridaMap")),
        State(name: "Georgia", nickname: "The Peach State ", area: "59425 Sq. miles", flag: UIImage(named: "ga"), map: UIImage(named: "georgiaMap")),
        State(name: "Hawaii", nickname: "The Aloha State ", area: "10932 Sq. miles", flag: UIImage(named: "hi"), map: UIImage(named: "hawaiiMap")),
        State(name: "Idaho", nickname: "The Gem State ", area: "83569 Sq. miles", flag: UIImage(named: "id"), map: UIImage(named: "idahoMap")),
        State(name: "Illinois", nickname: "The Prairie State ", area: "57914 Sq. miles", flag: UIImage(named: "il"), map: UIImage(named: "illinoisMap")),
        State(name: "Indiana", nickname: "The Hoosier State ", area: "36420 Sq. miles", flag: UIImage(named: "in"), map: UIImage(named: "indianaMap")),
        State(name: "Iowa", nickname: "The Hawkeye State ", area: "56273 Sq. miles", flag: UIImage(named: "ia"), map: UIImage(named: "iowaMap")),
        State(name: "Kansas", nickname: "The Sunflower State ", area: "82278 Sq. miles", flag: UIImage(named: "ks"), map: UIImage(named: "kansasMap")),
        State(name: "Kentucky", nickname: "The Bluegrass State ", area: "40408 Sq. miles", flag: UIImage(named: "ky"), map: UIImage(named: "kentuckyMap")),
        State(name: "Louisiana", nickname: "The Pelican State ", area: "52378 Sq. miles", flag: UIImage(named: "la"), map: UIImage(named: "louisianaMap")),
        State(name: "Maine", nickname: "The Pine Tree State ", area: "35380 Sq. miles", flag: UIImage(named: "me"), map: UIImage(named: "maineMap")),
        State(name: "Maryland", nickname: "The Old Line State ", area: "12406 Sq. miles", flag: UIImage(named: "md"), map: UIImage(named: "marylandMap")),
        State(name: "Massachusetts", nickname: "The Bay State ", area: "10554 Sq. miles", flag: UIImage(named: "ma"), map: UIImage(named: "massachusettsMap")),
        State(name: "Michigan", nickname: "The Great Lakes State ", area: "96714 Sq. miles", flag: UIImage(named: "mi"), map: UIImage(named: "michiganMap")),
        State(name: "Minnesota", nickname: "The North Star State ", area: "86936 Sq. miles", flag: UIImage(named: "mn"), map: UIImage(named: "minnesotaMap")),
        State(name: "Mississippi", nickname: "The Magnolia State ", area: "48432 Sq. miles", flag: UIImage(named: "ms"), map: UIImage(named: "mississippiMap")),
        State(name: "Missouri", nickname: "The Show Me State ", area: "69707 Sq. miles", flag: UIImage(named: "mo"), map: UIImage(named: "missouriMap")),
        State(name: "Montana", nickname: "The Treasure State ", area: "147040 Sq. miles", flag: UIImage(named: "mt"), map: UIImage(named: "montanaMap")),
        State(name: "Nebraska", nickname: "The Cornhusker State ", area: "77348 Sq. miles", flag: UIImage(named: "ne"), map: UIImage(named: "nebraskaMap")),
        State(name: "Nevada", nickname: "The Silver State ", area: "110572 Sq. miles", flag: UIImage(named: "nv"), map: UIImage(named: "nevadaMap")),
        State(name: "New Hampshire", nickname: "The Granite State ", area: "9349 Sq. miles", flag: UIImage(named: "nh"), map: UIImage(named: "newHampshireMap")),
        State(name: "New Jersey", nickname: "The Garden State ", area: "8723 Sq. miles", flag: UIImage(named: "nj"), map: UIImage(named: "newJerseyMap")),
        State(name: "New Mexico", nickname: "The Land of Enchantment ", area: "121590 Sq. miles", flag: UIImage(named: "nm"), map: UIImage(named: "newMexicoMap")),
        State(name: "New York", nickname: "The Empire State ", area: "54555 Sq. miles", flag: UIImage(named: "ny"), map: UIImage(named: "newYorkMap")),
        State(name: "North Carolina", nickname: "The Tar Heel State ", area: "53819 Sq. miles", flag: UIImage(named: "nc"), map: UIImage(named: "northCarolinaMap")),
        State(name: "North Dakota", nickname: "The Peace Garden State ", area: "70698 Sq. miles", flag: UIImage(named: "nd"), map: UIImage(named: "northDakotaMap")),
        State(name: "Ohio", nickname: "The Buckeye State ", area: "44826 Sq. miles", flag: UIImage(named: "oh"), map: UIImage(named: "ohioMap")),
        State(name: "Oklahoma", nickname: "The Sooner State ", area: "69899 Sq. miles", flag: UIImage(named: "ok"), map: UIImage(named: "oklahomaMap")),
        State(name: "Oregon", nickname: "The Beaver State ", area: "98379 Sq. miles", flag: UIImage(named: "or"), map: UIImage(named: "oregonMap")),
        State(name: "Pennsylvania", nickname: "The Keystone State ", area: "46054 Sq. miles", flag: UIImage(named: "pa"), map: UIImage(named: "pennsylvaniaMap")),
        State(name: "Rhode Island", nickname: "The Ocean State ", area: "1545 Sq. miles", flag: UIImage(named: "ri"), map: UIImage(named: "rhodeIslandMap")),
        State(name: "South Carolina", nickname: "The Palmetto State ", area: "32020 Sq. miles", flag: UIImage(named: "sc"), map: UIImage(named: "southCarolinaMap")),
        State(name: "South Dakota", nickname: "The Mount Rushmore State ", area: "77116 Sq. miles", flag: UIImage(named: "sd"), map: UIImage(named: "southDakotaMap")),
        State(name: "Tennessee", nickname: "The Volunteer State ", area: "42144 Sq. miles", flag: UIImage(named: "tn"), map: UIImage(named: "tennesseeMap")),
        State(name: "Texas", nickname: "The Lone Star State ", area: "268596 Sq. miles", flag: UIImage(named: "tx"), map: UIImage(named: "texasMap")),
        State(name: "Utah", nickname: "The Beehive State ", area: "84897 Sq. miles", flag: UIImage(named: "ut"), map: UIImage(named: "utahMap")),
        State(name: "Vermont", nickname: "The Green Mountain State ", area: "9616 Sq. miles", flag: UIImage(named: "vt"), map: UIImage(named: "vermontMap")),
        State(name: "Virginia", nickname: "The Old Dominion State ", area: "42775 Sq. miles", flag: UIImage(named: "va"), map: UIImage(named: "virginiaMap")),
        State(name: "Washington", nickname: "The Evergreen State ", area: "71298 Sq. miles", flag: UIImage(named: "wa"), map: UIImage(named: "washingtonMap")),
        State(name: "West Virginia", nickname: "The Mountain State ", area: "24230 Sq. miles", flag: UIImage(named: "wv"), map: UIImage(named: "westVirginiaMap")),
        State(name: "Wisconsin", nickname: "The Badger State ", area: "65496 Sq. miles", flag: UIImage(named: "wi"), map: UIImage(named: "wisconsinMap")),
        State(name: "Wyoming", nickname: "The Equality or Cowboy State ", area: "97813 Sq. miles", flag: UIImage(named: "wy"), map: UIImage(named: "wyomingMap"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        states.sort { $0.name < $1.name }
    }

 

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //Returns number of states i.e., states.count

        return states.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // Function to prepare the view when selected a state to display name, map, flag and area
        if segue.identifier == "StateDetailSegue", //Segue between the two pages
           let destinationVC = segue.destination as? ViewController, // Giving destination to segue
           let indexPath = tableView.indexPathForSelectedRow { // Getting the state index
            let selectedState = states[indexPath.row]
            //Passing details to the destination view controller
            destinationVC.stateFlag = selectedState.flag
            destinationVC.stateName = states[indexPath.row].name
            destinationVC.stateMap = selectedState.map
            destinationVC.stateArea = states[indexPath.row].area
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Function to display the tableview
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) // Defining the reusable cell

        let state = states[indexPath.row]
        cell.textLabel?.text = state.name //Displays state name
        cell.detailTextLabel?.text = state.nickname // Displays state nickname

        return cell
    }
    

    

}
