//
//  Misc.swift
//  Imaginate
//
//  Created by Ankit Kumar on 10/06/24.
//

import Foundation


let everydayObjects: [String] = [
    // Kitchen Items
    "Fork", "Spoon", "Knife", "Plate", "Cup", "Mug", "Saucepan",
    "Toaster", "Blender", "Microwave",

    // Office Supplies
    "Pen", "Pencil", "Eraser", "Notebook", "Stapler", "Paperclip",
    "Scissors", "Ruler", "Calculator", "Envelope",

    // Living Room Items
    "Sofa", "Television", "Remote Control", "Coffee Table", "Bookshelf",
    "Cushion", "Rug", "Lamp", "Picture Frame", "Clock",

    // Bathroom Items
    "Toothbrush", "Toothpaste", "Shampoo", "Conditioner", "Soap",
    "Towel", "Razor", "Hair Dryer", "Toilet Paper", "Sink",

    // Clothing and Accessories
    "Shirt", "Pants", "Dress", "Hat", "Shoes", "Socks", "Scarf",
    "Gloves", "Belt", "Jacket",

    // Outdoor and Garden
    "Flower", "Tree", "Grass", "Fence", "Garden Hose", "Lawnmower",
    "Birdhouse", "Swing", "Bicycle", "Bench",

    // Technology and Gadgets
    "Smartphone", "Tablet", "Headphones", "Camera", "Charger",
    "Router", "Smartwatch", "Game Console", "Printer", "USB Drive",

    // Miscellaneous
    "Book", "Toy", "Ball", "Key", "Lock", "Bag", "Bottle", "Binoculars",
    "Compass", "Map"
]

enum PlayerAuthState: String {
    case autenticating = "Logging into the Game Center..."
    case unautenticated = "Please Sign in to the Game Center to play."
    case authenticated=""
    case error = "There is some error logging into Game Center"
    case restricted = "You're not allowed to play multiplayer games!"
}

struct PastGuess: Identifiable{
    let id = UUID()
    var message: String
    var correct: Bool
}

let maxRemainingTime = 100
