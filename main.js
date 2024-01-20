// main.js

document.addEventListener('DOMContentLoaded', function () {
    // Event listener for form submission
    document.getElementById('locationForm').addEventListener('submit', function (event) {
        event.preventDefault();

        // Get the location entered by the user
        const locationInput = document.getElementById('location');
        const location = locationInput.value;

        // Call the function to find nearby care homes
        findNearbyCareHomes(location);
    });
});

// Function to find nearby care homes based on location
function findNearbyCareHomes(location) {
    // Replace 'YOUR_GOOGLE_MAPS_API_KEY' with your actual API key
    const apiKey = 'YOUR_GOOGLE_MAPS_API_KEY';
    const geocodingApiUrl = `https://maps.googleapis.com/maps/api/geocode/json?address=${encodeURIComponent(location)}&key=${apiKey}`;

    // Use fetch to get the geocode information for the location
    fetch(geocodingApiUrl)
        .then(response => response.json())
        .then(data => {
            if (data.status === 'OK' && data.results.length > 0) {
                const locationInfo = data.results[0].geometry.location;
                
                // You can use the locationInfo.latitude and locationInfo.longitude
                // to perform further actions, such as querying a database for nearby care homes.

                // For demonstration purposes, we'll log the coordinates to the console.
                console.log('Latitude:', locationInfo.lat);
                console.log('Longitude:', locationInfo.lng);
            } else {
                console.error('Error finding geocode information:', data.status);
            }
        })
        .catch(error => {
            console.error('Error fetching geocode information:', error);
        });
}
 // Example: Use JavaScript to fetch and display dynamic content for skill sharing
        // This script is just a placeholder; you'll need to customize it based on your platform's backend logic

        // Fetch skill listings from the server (AJAX request or similar)
        // Update the skill-listings div with the fetched data

        // Example:
        const skillListings = [
            { skill: "Cooking", category: "Practical Skills", location: "City A", user: "UserA" },
            { skill: "Language Tutoring", category: "Educational Skills", location: "City B", user: "UserB" },
            // Add more listings as needed
        ];

        // Populate the skill-listings div with dynamic content
        const skillListingsContainer = document.getElementById("skill-listings");

        skillListings.forEach(listing => {
            const listingElement = document.createElement("div");
            listingElement.innerHTML = `
                <p><strong>Skill:</strong> ${listing.skill}</p>
                <p><strong>Category:</strong> ${listing.category}</p>
                <p><strong>Location:</strong> ${listing.location}</p>
                <p><strong>User:</strong> ${listing.user}</p>
                <hr>
            `;
            skillListingsContainer.appendChild(listingElement);
        });