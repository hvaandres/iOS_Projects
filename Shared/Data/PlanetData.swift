//
//  PlanetData.swift
//  Planets (iOS)
//
//  Created by Andres Haro on 9/30/21.
//

import SwiftUI

// Planets Data

let planetsData: [Planet] = [
    Planet(title: "Earth",
           headline: "This is the planet where humans live",
           image: "earth",
           gradientColors: [Color("ColorEarth"), Color("ColorVenus")],
           description: "Earth is the third planet from the Sun and the only astronomical object known to harbour and support life. About 29.2% of Earth's surface is land consisting of continents and islands.",
           information: [" 4.543 billion years", " 3,958.8 mi", " 92.96 million mi", "5.972 × 10^24 kg", "196.9 million mi²", " 57.51 million mi²", "7.674 billion (2019)"]),
    
    Planet(title: "Jupiter",
           headline: "Jupiter is the fifth planet from the Sun and the largest in the Solar System.",
           image: "jupiter",
           gradientColors: [Color("ColorJupiter"), Color("ColorVenus")],
           description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun.",
           information: [" 23.71 billion mi²", "12 years", " 1.898 × 10^27 kg (317.8 M⊕)", "43,441 mi", "483.8 million mi", "0d 9h 56m", "Europa, Ganymede, Io, Callisto, Amalthea, Himalia, Etc"]),
    
    Planet(title: "Mars",
           headline: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System",
           image: "mars",
           gradientColors: [Color("ColorMars"), Color("ColorVenus")],
           description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the 'Red Planet'.",
           information: ["3.721 m/s²", "687 days", "141.6 million mi", "55.91 million mi²", "1d 0h 37m", "Phobos, Deimos"]),
    
    Planet(title: "Mercury",
           headline: "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
           image: "mercury",
           gradientColors: [Color("ColorMercury"), Color("ColorVenus")],
           description: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets.",
           information: ["88 days", "35.98 million mi", "28.88 million mi²", "58d 15h 30m", "1,516 mi", "3.285 × 10^23 kg (0.055 M⊕)"]),
    
    Planet(title: "Moon",
           headline: "The Moon is Earth's only natural satellite.",
           image: "moon",
           gradientColors: [Color("ColorMoon"), Color("ColorVenus")],
           description: "The Moon is Earth's only natural satellite. At about one-quarter the diameter of Earth, it is the largest natural satellite in the Solar System relative to the size of its planet, the fifth largest satellite in the Solar System overall, and is larger than any known dwarf planet.",
           information: ["238,900 mi", "1.62 m/s²", " 27 days", "1,079.6 mi", " 3.793×107 km2; (0.074 of Earth's)", "10−7 Pa (1 picobar) (day) 10−10 Pa (1 femtobar) (night)"]),
    
    Planet(title: "Neptune",
           headline: "Neptune is the eighth and farthest known Solar planet from the Sun.",
           image: "neptune",
           gradientColors: [Color("ColorNeptune"), Color("ColorVenus")],
           description: "Neptune is the eighth and farthest known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, slightly more massive than its near-twin Uranus.",
           information: ["165 years", "2.793 billion mi", "2.941 billion mi²", "15,299 mi", "0d 16h 6m", "1.024 × 10^26 kg (17.15 M⊕)", "Triton, Sao, Hippocamp, Nereid, Despina, Thalassa, Etc"]),
    
    Planet(title: "Saturn",
           headline: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.",
           image: "saturn",
           gradientColors: [Color("ColorSaturn"), Color("ColorVenus")],
           description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive.",
           information: [" 29 years", " 890.8 million mi", " 16.49 billion mi²", " 36,184 mi", " 5.683 × 10^26 kg (95.16 M⊕)", " 0d 10h 42m", " Titan, Enceladus, Iapetus, Mimas, Hyperion, Dione, Tethys, Etc"]),
    
    Planet(title: "Uranus",
           headline: "Uranus is the seventh planet from the Sun.",
           image: "uranus",
           gradientColors: [Color("ColorUranus"), Color("ColorVenus")],
           description: "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the great-grandfather of Ares, grandfather of Zeus and father of Cronus. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System.",
           information: [" 1.784 billion mi", " 84 years", " 3.121 billion mi²", " 15,759 mi", " 0d 17h 14m", " March 13, 1781", "Titania, Miranda, Ariel, Umbriel, Oberon, Desdemona, Etc"]),
    
    Planet(title: "Venus",
           headline: "Venus is the second planet from the Sun.",
           image: "venus",
           gradientColors: [Color("ColorVenus"), Color("ColorNeptune")],
           description: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be, on rare occasions, visible to the naked eye in broad daylight.",
           information: [" 177.7 million mi²", " 225 days", " 116d 18h 0m", " 67.24 million mi", "3,760.4 mi", " 8.87 m/s²"]),
    
]
