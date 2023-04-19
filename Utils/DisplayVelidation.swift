//
//  DisplayVelidation.swift
//  Twitter
//
//  Created by Arpit Thummar on 03/04/23.
//

import Foundation
import UIKit

func displayValidation(massage: String){
    let alert: UIAlertController = UIAlertController(title: "Error", message: massage, preferredStyle: .alert)
    let okButten: UIAlertAction = UIAlertAction(title: "ok", style: .default)
    let cancelButten: UIAlertAction = UIAlertAction(title: "cancel", style: .destructive)
    alert.addAction(okButten)
    alert.addAction(cancelButten)
}
