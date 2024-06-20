//
//  Category.swift
//  BeShopSwiftUI
//
//  Created by HardiB.Salih on 6/19/24.
//

import Foundation

enum ShopCategory: Int, CaseIterable, Identifiable, Hashable {
    case makeup
    case skinCare
    case hair
    case toolsAndBrushes
    case fragrance
    case bodyCare
    case men

    var id: ShopCategory { self }

    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .makeup: return "Makeup"
        case .skinCare: return "Skin Care"
        case .hair: return "Hair"
        case .toolsAndBrushes: return "Tools & Brushes"
        case .fragrance: return "Fragrance"
        case .bodyCare: return "Body Care"
        case .men: return "Men"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}

//MARK: - Makeup
enum Makeup: Int, CaseIterable, Identifiable {
    case face
    case lips
    case eyes
    case nails
    case brushesAndTools
    case bodyMakeup
    case palettes
    case bagsAndOrganizers
    case travelSize
    case gifts
    
    var id: Makeup { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .face: return "Face"
        case .lips: return "Lips"
        case .eyes: return "Eyes"
        case .nails: return "Nails"
        case .brushesAndTools: return "Makeup Brushes & Tools"
        case .bodyMakeup: return "Body Makeup"
        case .palettes: return "Makeup Palettes"
        case .bagsAndOrganizers: return "Makeup Bags & Organizers"
        case .travelSize: return "Travel Size Makeup"
        case .gifts: return "Makeup & Nail Gifts"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}

enum Face: Int, CaseIterable, Identifiable {
    case foundation
    case bbAndCCCreams
    case tintedMoisturizer
    case concealer
    case facePowder
    case facePrimer
    case blush
    case bronzer
    case highlighter
    case contouring
    case colorCorrecting
    case settingSprayAndPowder
    case makeupRemover
    
    var id: Face { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .foundation: return "Foundation"
        case .bbAndCCCreams: return "BB & CC Creams"
        case .tintedMoisturizer: return "Tinted Moisturizer"
        case .concealer: return "Concealer"
        case .facePowder: return "Face Powder"
        case .facePrimer: return "Face Primer"
        case .blush: return "Blush"
        case .bronzer: return "Bronzer"
        case .highlighter: return "Highlighter"
        case .contouring: return "Contouring"
        case .colorCorrecting: return "Color Correcting"
        case .settingSprayAndPowder: return "Setting Spray & Powder"
        case .makeupRemover: return "Makeup Remover"
        }
    }
    var imageName: String { return self.displayName.convertToImageName }
}

enum Lips: Int, CaseIterable, Identifiable {
    case lipstick
    case lipGloss
    case lipOil
    case lipLiner
    case lipStain
    case lipPlumpers
    case lipBalmsAndTreatments
    
    var id: Lips { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .lipstick: return "Lipstick"
        case .lipGloss: return "Lip Gloss"
        case .lipOil: return "Lip Oil"
        case .lipLiner: return "Lip Liner"
        case .lipStain: return "Lip Stain"
        case .lipPlumpers: return "Lip Plumpers"
        case .lipBalmsAndTreatments: return "Lip Balms & Treatments"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}
enum Eyes: Int, CaseIterable, Identifiable {
    case eyeshadowPalettes
    case mascara
    case eyeliner
    case eyebrows
    case eyeshadow
    case eyePrimerAndBase
    case eyelashes
    case lashPrimerAndSerums
    
    var id: Eyes { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .eyeshadowPalettes: return "Eyeshadow Palettes"
        case .mascara: return "Mascara"
        case .eyeliner: return "Eyeliner"
        case .eyebrows: return "Eyebrows"
        case .eyeshadow: return "Eyeshadow"
        case .eyePrimerAndBase: return "Eye Primer & Base"
        case .eyelashes: return "Eyelashes"
        case .lashPrimerAndSerums: return "Lash Primer & Serums"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}
enum Nails: Int, CaseIterable, Identifiable {
    case nailPolish
    case gelNailPolish
    case topAndBaseCoats
    case nailPolishStickers
    case pressOnNails
    case nailArtAndDesign
    case nailCare
    case manicureAndPedicureTools
    
    var id: Nails { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .nailPolish: return "Nail Polish"
        case .gelNailPolish: return "Gel Nail Polish"
        case .topAndBaseCoats: return "Top & Base Coats"
        case .nailPolishStickers: return "Nail Polish Stickers"
        case .pressOnNails: return "Press On Nails"
        case .nailArtAndDesign: return "Nail Art & Design"
        case .nailCare: return "Nail Care"
        case .manicureAndPedicureTools: return "Manicure & Pedicure Tools"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

enum MakeupBrushesTools: Int, CaseIterable, Identifiable {
    case brushSets
    case makeupBrushes
    case spongesAndApplicators
    case brushCleaner
    case browAndLashTools
    case blottingPapers
    case mirrors
    
    var id: MakeupBrushesTools { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .brushSets: return "Brush Sets"
        case .makeupBrushes: return "Makeup Brushes"
        case .spongesAndApplicators: return "Sponges & Applicators"
        case .brushCleaner: return "Brush Cleaner"
        case .browAndLashTools: return "Brow & Lash Tools"
        case .blottingPapers: return "Blotting Papers"
        case .mirrors: return "Mirrors"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

//MARK: - SkinCare
enum SkinCare: Int, CaseIterable, Identifiable {
    case cleansers
    case moisturizers
    case treatmentAndSerums
    case eyeTreatments
    case suncare
    case supplements
    case skincareTools
    case travelSize
    case skinGifts
    case dermatologistRecommended
    
    var id: SkinCare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .cleansers: return "Cleansers"
        case .moisturizers: return "Moisturizers"
        case .treatmentAndSerums: return "Treatment & Serums"
        case .eyeTreatments: return "Eye Treatments"
        case .suncare: return "Suncare"
        case .supplements: return "Supplements"
        case .skincareTools: return "Skincare Tools"
        case .travelSize: return "Travel Size Skin Care"
        case .skinGifts: return "Skin Gifts"
        case .dermatologistRecommended: return "Dermatologist Recommended"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

enum Cleansers: Int, CaseIterable, Identifiable {
    case faceWash
    case cleansingBalmsAndOils
    case faceWipes
    case cleansingExfoliators
    case toner
    case makeupRemover
    case cleansingBrushes
    
    var id: Cleansers { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .faceWash: return "Face Wash"
        case .cleansingBalmsAndOils: return "Cleansing Balms & Oils"
        case .faceWipes: return "Face Wipes"
        case .cleansingExfoliators: return "Cleansing Exfoliators"
        case .toner: return "Toner"
        case .makeupRemover: return "Makeup Remover"
        case .cleansingBrushes: return "Cleansing Brushes"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum Moisturizers: Int, CaseIterable, Identifiable {
    case faceMoisturizer
    case nightCream
    case faceOils
    case faceMistsAndEssences
    case neckCream
    case tintedMoisturizer
    case lipBalmsAndTreatments
    
    var id: Moisturizers { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .faceMoisturizer: return "Face Moisturizer"
        case .nightCream: return "Night Cream"
        case .faceOils: return "Face Oils"
        case .faceMistsAndEssences: return "Face Mists & Essences"
        case .neckCream: return "Neck Cream"
        case .tintedMoisturizer: return "Tinted Moisturizer"
        case .lipBalmsAndTreatments: return "Lip Balms & Treatments"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum TreatmentSerums: Int, CaseIterable, Identifiable {
    case faceSerums
    case facePeelsAndExfoliators
    case faceMasks
    case sheetMasks
    case acneAndBlemishTreatments
    case bodyTreatments
    
    var id: TreatmentSerums { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .faceSerums: return "Face Serums"
        case .facePeelsAndExfoliators: return "Face Peels & Exfoliators"
        case .faceMasks: return "Face Masks"
        case .sheetMasks: return "Sheet Masks"
        case .acneAndBlemishTreatments: return "Acne & Blemish Treatments"
        case .bodyTreatments: return "Body Treatments"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum EyeTreatments: Int, CaseIterable, Identifiable {
    case eyeCream
    case eyeSerums
    case eyeMasks
    
    var id: EyeTreatments { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .eyeCream: return "Eye Cream"
        case .eyeSerums: return "Eye Serums"
        case .eyeMasks: return "Eye Masks"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum Suncare: Int, CaseIterable, Identifiable {
    case sunscreen
    case selfTanningAndBronzing
    case afterSunCare
    
    var id: Suncare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .sunscreen: return "Sunscreen"
        case .selfTanningAndBronzing: return "Self-Tanning & Bronzing"
        case .afterSunCare: return "After Sun Care"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

//MARK: - Hair
enum Hair: Int, CaseIterable, Identifiable {
    case shampooAndConditioner
    case treatment
    case stylingProducts
    case hairColor
    case hairStylingTools
    case hairBrushesAndCombs
    case accessories
    case kidsHaircare
    case travelSizeHairCare
    case hairGifts
    
    var id: Hair { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .shampooAndConditioner: return "Shampoo & Conditioner"
        case .treatment: return "Treatment"
        case .stylingProducts: return "Styling Products"
        case .hairColor: return "Hair Color"
        case .hairStylingTools: return "Hair Styling Tools"
        case .hairBrushesAndCombs: return "Hair Brushes & Combs"
        case .accessories: return "Accessories"
        case .kidsHaircare: return "Kid's Haircare"
        case .travelSizeHairCare: return "Travel Size Hair Care"
        case .hairGifts: return "Hair Gifts"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

enum ShampooConditioner: Int, CaseIterable, Identifiable {
    case shampoo
    case dryShampoo
    case conditioner
    case coWash
    case leaveInConditioner
    
    var id: ShampooConditioner { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .shampoo: return "Shampoo"
        case .dryShampoo: return "Dry Shampoo"
        case .conditioner: return "Conditioner"
        case .coWash: return "Co-Wash"
        case .leaveInConditioner: return "Leave-In Conditioner"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum Treatment: Int, CaseIterable, Identifiable {
    case oilsAndSerums
    case masks
    case hairThinningAndHairLoss
    case leaveInTreatment
    case scalpCare
    
    var id: Treatment { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .oilsAndSerums: return "Oils & Serums"
        case .masks: return "Masks"
        case .hairThinningAndHairLoss: return "Hair Thinning & Hair Loss"
        case .leaveInTreatment: return "Leave-In Treatment"
        case .scalpCare: return "Scalp Care"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum StylingProducts: Int, CaseIterable, Identifiable {
    case hairspray
    case volumeAndTexture
    case heatProtectant
    case glossAndShine
    case smoothing
    case curlEnhancing
    case waxAndPomade
    
    var id: StylingProducts { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .hairspray: return "Hairspray"
        case .volumeAndTexture: return "Volume & Texture"
        case .heatProtectant: return "Heat Protectant"
        case .glossAndShine: return "Gloss & Shine"
        case .smoothing: return "Smoothing"
        case .curlEnhancing: return "Curl Enhancing"
        case .waxAndPomade: return "Wax & Pomade"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}
enum HairColor: Int, CaseIterable, Identifiable {
    case rootTouchUp
    case hairColorAndBleach
    case trendColor
    
    var id: HairColor { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .rootTouchUp: return "Root Touch Up"
        case .hairColorAndBleach: return "Hair Color & Bleach"
        case .trendColor: return "Trend Color"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum HairStylingTools: Int, CaseIterable, Identifiable {
    case flatIrons
    case hairDryers
    case curlingIronsAndStylers
    case hotBrushes
    case hairRollers
    
    var id: HairStylingTools { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .flatIrons: return "Flat Irons"
        case .hairDryers: return "Hair Dryers"
        case .curlingIronsAndStylers: return "Curling Irons & Stylers"
        case .hotBrushes: return "Hot Brushes"
        case .hairRollers: return "Hair Rollers"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum Accessories: Int, CaseIterable, Identifiable {
    case hairExtensions
    case elastics
    case headbands
    case clipsAndBobbyPins
    case hairCuttingTools
    case stylingAccessories
    
    var id: Accessories { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .hairExtensions: return "Hair Extensions"
        case .elastics: return "Elastics"
        case .headbands: return "Headbands"
        case .clipsAndBobbyPins: return "Clips & Bobby Pins"
        case .hairCuttingTools: return "Hair Cutting Tools"
        case .stylingAccessories: return "Styling Accessories"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

//MARK: - Tools & Brushes
enum ToolsBrushes: Int, CaseIterable, Identifiable {
    case hairStylingTools
    case skincareTools
    case hairRemovalTools
    case makeupBrushesAndTools
    case hairBrushesAndCombs
    
    var id: ToolsBrushes { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .hairStylingTools: return "Hair Styling Tools"
        case .skincareTools: return "Skincare Tools"
        case .hairRemovalTools: return "Hair Removal Tools"
        case .makeupBrushesAndTools: return "Makeup Brushes & Tools"
        case .hairBrushesAndCombs: return "Hair Brushes & Combs"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum SkincareTools: Int, CaseIterable, Identifiable {
    case cleansingBrushes
    case antiAging
    case facialRollers
    
    var id: SkincareTools { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .cleansingBrushes: return "Cleansing Brushes"
        case .antiAging: return "Anti-Aging"
        case .facialRollers: return "Facial Rollers"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}


//MARK: - Fragrance
enum Fragrance: Int, CaseIterable, Identifiable , Hashable {
    case womensFragrance
    case mensFragrance
    
    var id: Fragrance { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .womensFragrance: return "Women's Fragrance"
        case .mensFragrance: return "Men's Fragrance"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum WomensFragrance: Int, CaseIterable, Identifiable, Hashable {
    case perfume
    case rollerballsAndPurseSprays
    case bodyLotions
    case bodyMistAndHairMist
    case bathAndShower
    
    var id: WomensFragrance { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .perfume: return "Perfume"
        case .rollerballsAndPurseSprays: return "Rollerballs & Purse Sprays"
        case .bodyLotions: return "Body Lotions"
        case .bodyMistAndHairMist: return "Body Mist & Hair Mist"
        case .bathAndShower: return "Bath & Shower"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum MensFragrance: Int, CaseIterable, Identifiable, Hashable {
    case cologne
    case aftershave
    case bathAndShower
    
    var id: MensFragrance { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .cologne: return "Cologne"
        case .aftershave: return "Aftershave"
        case .bathAndShower: return "Bath & Shower"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}


//MARK: - Body Care
enum BodyCare: Int, CaseIterable, Identifiable {
    case bathAndShower
    case bodyMoisturizers
    case handAndFootCare
    case selfCareAndWellness
    case bathAndBodyAccessories
    case suncare
    case motherAndBaby
    
    var id: BodyCare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .bathAndShower: return "Bath & Shower"
        case .bodyMoisturizers: return "Body Moisturizers"
        case .handAndFootCare: return "Hand & Foot Care"
        case .selfCareAndWellness: return "Self Care & Wellness"
        case .bathAndBodyAccessories: return "Bath & Body Accessories"
        case .suncare: return "Suncare"
        case .motherAndBaby: return "Mother & Baby"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}

enum BathShower: Int, CaseIterable, Identifiable {
    case showerGelBodyWash
    case bodyScrubsExfoliants
    case bubbleBathSoaks
    case bathBombsShowerSteamers
    
    var id: BathShower { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .showerGelBodyWash: return "Shower Gel & Body Wash"
        case .bodyScrubsExfoliants: return "Body Scrubs & Exfoliants"
        case .bubbleBathSoaks: return "Bubble Bath & Soaks"
        case .bathBombsShowerSteamers: return "Bath Bombs & Shower Steamers"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum BodyMoisturizers: Int, CaseIterable, Identifiable {
    case bodyLotionCreams
    case bodyButters
    case bodySerumsOils
    
    var id: BodyMoisturizers { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .bodyLotionCreams: return "Body Lotion & Creams"
        case .bodyButters: return "Body Butters"
        case .bodySerumsOils: return "Body Serums & Oils"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum HandFootCare: Int, CaseIterable, Identifiable {
    case handFootCream
    case handFootTreatment
    case manicurePedicureTools
    case handSoapSanitizers
    
    var id: HandFootCare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .handFootCream: return "Hand Cream & Foot Cream"
        case .handFootTreatment: return "Hand & Foot Treatment"
        case .manicurePedicureTools: return "Manicure & Pedicure Tools"
        case .handSoapSanitizers: return "Hand Soap & Sanitizers"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum SelfCareWellness: Int, CaseIterable, Identifiable {
    case bodyTreatments
    case supplements
    case aromatherapy
    case deodorant
    case hairRemoval
    case oralCare
    case sleepEssentials
    case spaEssentials
    case downThereCare
    case intimateWellness
    
    var id: SelfCareWellness { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .bodyTreatments: return "Body Treatments"
        case .supplements: return "Supplements"
        case .aromatherapy: return "Aromatherapy"
        case .deodorant: return "Deodorant"
        case .hairRemoval: return "Hair Removal"
        case .oralCare: return "Oral Care"
        case .sleepEssentials: return "Sleep Essentials"
        case .spaEssentials: return "Spa Essentials"
        case .downThereCare: return "Down There Care"
        case .intimateWellness: return "Intimate Wellness"
        }
    }
    var imageName: String { return self.displayName.convertToImageName }

}

enum BathBodyAccessories: Int, CaseIterable, Identifiable {
    case bathSpongesGlovesBrushes
    case hairTowelsShowerCaps
    case trendFashionAccessories
    
    var id: BathBodyAccessories { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .bathSpongesGlovesBrushes: return "Bath Sponges, Gloves & Brushes"
        case .hairTowelsShowerCaps: return "Hair Towels & Shower Caps"
        case .trendFashionAccessories: return "Trend & Fashion Accessories"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}


//MARK: - Men
enum MenCategory: Int, CaseIterable, Identifiable {
    case cologne
    case skinCare
    case shaving
    case bodyCare
    case hair
    
    var id: MenCategory { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .cologne: return "Cologne"
        case .skinCare: return "Skin Care"
        case .shaving: return "Shaving"
        case .bodyCare: return "Body Care"
        case .hair: return "Hair"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }
}

enum MenSkinCare: Int, CaseIterable, Identifiable {
    case faceWash
    case moisturizersTreatments
    
    var id: MenSkinCare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .faceWash: return "Face Wash"
        case .moisturizersTreatments: return "Moisturizers & Treatments"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum Shaving: Int, CaseIterable, Identifiable {
    case shavingCreamRazors
    case aftershave
    case beardCare
    
    var id: Shaving { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .shavingCreamRazors: return "Shaving Cream & Razors"
        case .aftershave: return "Aftershave"
        case .beardCare: return "Beard Care"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum MenBodyCare: Int, CaseIterable, Identifiable {
    case showerGelBodyWash
    case bodyLotion
    case deodorant
    
    var id: MenBodyCare { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .showerGelBodyWash: return "Shower Gel & Body Wash"
        case .bodyLotion: return "Body Lotion"
        case .deodorant: return "Deodorant"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}
enum HairCategory: Int, CaseIterable, Identifiable {
    case shampoo
    case conditioner
    case hairThinningLoss
    case styling
    
    var id: HairCategory { self }
    
    // Computed property to return the display name
    var displayName: String {
        switch self {
        case .shampoo: return "Shampoo"
        case .conditioner: return "Conditioner"
        case .hairThinningLoss: return "Hair Thinning & Hair Loss"
        case .styling: return "Styling"
        }
    }
    
    var imageName: String { return self.displayName.convertToImageName }

}


//MARK: Barnd
enum Brand: String, Codable {
    case beautyBrand = "BeautyBrand"
    case colorPop = "ColorPop"
    case hairCare = "HairCare"
    case fentyBeauty = "FentyBeauty"
    case sephora = "Sephora"
}


extension String {
    var convertToImageName: String {
        // Replace " & " with "-"
        var converted = self.replacingOccurrences(of: " & ", with: "-")
        // Replace spaces with "-"
        converted = converted.replacingOccurrences(of: " ", with: "-")
        // Convert to lowercase
        converted = converted.lowercased()
        // Append "-bubble"
        converted += "-bubble"
        return converted
    }
}
