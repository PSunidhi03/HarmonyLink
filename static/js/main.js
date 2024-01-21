// main.js
document.addEventListener('scroll', function () {
        const scrollPosition = window.scrollY;

        // Customize these values based on your design preferences
        const colorChangeStart = 0;
        const colorChangeEnd = 500;

        // Change background color based on scroll position
        if (scrollPosition > colorChangeStart && scrollPosition < colorChangeEnd) {
            const percentage = (scrollPosition - colorChangeStart) / (colorChangeEnd - colorChangeStart);
            const newColor = blendColors('#87CEEB', '#CCCCFF', percentage);
            document.body.style.backgroundColor = newColor;
        }
    });

    // Helper function to blend two colors
    function blendColors(color1, color2, percentage) {
        const componentToHex = c => {
            const hex = c.toString(16);
            return hex.length === 1 ? '0' + hex : hex;
        };

        const hex = (color1, color2, percentage) => {
            const blended = Math.round(color1 + (color2 - color1) * percentage);
            return componentToHex(blended);
        };

        return `#${hex(parseInt(color1.slice(1, 3), 16), parseInt(color2.slice(1, 3), 16), percentage)}${hex(parseInt(color1.slice(3, 5), 16), parseInt(color2.slice(3, 5), 16), percentage)}${hex(parseInt(color1.slice(5, 7), 16), parseInt(color2.slice(5, 7), 16), percentage)}`;
    }

        // JavaScript for fade-in animations
        document.addEventListener('scroll', function () {
            document.querySelectorAll('section').forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;

                const isVisible = sectionTop < window.scrollY + window.innerHeight && sectionTop + sectionHeight > window.scrollY;

                if (isVisible) {
                    section.style.opacity = 1;
                    section.style.transform = 'translateY(0)';
                }
            });
        });


//location part
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

// Add this code to your existing main.js or create a new JavaScript file

// Sample data for story clips (you can replace this with dynamic data from your backend)
const storyClipsData = [
    { image: 'sample_image1.jpg', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
    { image: 'sample_image2.jpg', text: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
    // Add more story clips as needed
];

// Function to populate story clips
function populateStoryClips() {
    const storyClipContainer = document.getElementById('storyClipContainer');

    storyClipsData.forEach(clipData => {
        const storyClip = document.createElement('div');
        storyClip.className = 'story-clip';

        const image = document.createElement('img');
        image.src = clipData.image;
        image.alt = 'Story Image';

        const storyText = document.createElement('p');
        storyText.className = 'story-text';
        storyText.textContent = clipData.text;

        const interactions = document.createElement('div');
        interactions.className = 'interactions';

        const likeButton = document.createElement('button');
        likeButton.className = 'like-button';
        likeButton.textContent = 'Like';
        likeButton.addEventListener('click', function () {
            likeStory(this);
        });

        const shareButton = document.createElement('button');
        shareButton.className = 'share-button';
        shareButton.textContent = 'Share';
        shareButton.addEventListener('click', function () {
            shareStory(this);
        });

        interactions.appendChild(likeButton);
        interactions.appendChild(shareButton);

        storyClip.appendChild(image);
        storyClip.appendChild(storyText);
        storyClip.appendChild(interactions);

        storyClipContainer.appendChild(storyClip);
    });
}

// Sample function for liking a story (you can replace this with your actual backend logic)
function likeStory(button) {
    const storyClip = button.closest('.story-clip');
    // Implement the like functionality (e.g., updating likes count in the backend)
    alert('Liked!'); // Replace this with your actual logic
}

// Sample function for sharing a story (you can replace this with your actual backend logic)
function shareStory(button) {
    const storyClip = button.closest('.story-clip');
    // Implement the share functionality (e.g., sharing the story link)
    alert('Shared!'); // Replace this with your actual logic
}

// Call the function to populate story clips when the page is loaded
document.addEventListener('DOMContentLoaded', function () {
    populateStoryClips();
});
