//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Driksha Thakur on 12/13/18.

import UIKit

class IntroductionViewController: UIViewController {

    @IBAction func unwindToQuizIntroduction(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}




// perform segue - to manually trigger segue

// when use show nd modelly -
// MODELLY: whenever we want to interrupt the flow of the navigation - use modelly. interrupt ask ques, ask input, anytime you are expecting an input from the use you are interrupting

// why added navigation controller in the second screen not first?
// bcz after first screen we want nav bar for all screens

// why created single screen for all questions?
// no provision to go to the back ques. we dont want user to go back
// why not multiple? ques switch ho pr screen switch na ho

// progress bar usi screen pe ho aur usi screen mai kitni progress krni hai



// ques nd ans display nd store krane k liye we need models




// why created a computed property
// jo bhi result ara h vo ek emoji ki form mai ayega nd we want to display the description of that .

// we have array of ques. do we need to create a var ans? no bcz ans is already a property .

// second screen pe data populate krna h what will be the approach

// set button title? create outlet


// when is update single stack called. these methods will be use to update ans to first ques. first false cuz earlier hidden. then set title- title konsa set krna h?
// why is ans[00] cuz it was a 2d array? kyuki ques already fetch krlia let currentQues already stored hai
// ab konsa method call krna hai? use switch questype


// first ques 4 ans thats why used switch
// sender type: change any to uibutton. what if any was there? optionally downcast to uibutton then switch case
// ans chosen property array

/* func nextques
if user attempted q1 update index
 
 condition incase ques index 3 perform segue
 bcz what we want after attempting 3 ques. the ques will be >= 3 else part mai segue trigger
 
 updateui- ques index k base pe ques nd ans ko set kr ra hai . setting ques ans
 
 passing data through prepared
 ibsegueaction humesha source mai banta hai
 
 
 what are signatures? its a @ibsegueaction is a method
 as a parameter we are passing coder
 coder (type nscoder) viewcontroller ko design krne k liye
 ibsegueaction output? uiviewcontroller
 ek final des screen create hogi
 
 segue purpose ek screen se dusri screen pe jana
 jo next screen h usko apne customize krna h u can do that using ibsegueaction
 
 override func prepare (for segue: UIStoryboardSegue, sender: Any){
 guard let resultVC = segue.destination as? ResultsViewController {
 return}
 
 
 why init failable if no response then default
 self.response = response
 by default required init code will be given if u fix it
 
 alternative-> prepare
 
 
 */


