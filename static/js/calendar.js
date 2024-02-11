document.addEventListener('DOMContentLoaded', function () {
 console.log('DOM content loaded');
    const calendarBody = document.getElementById('calendar-body');
    const monthYearHeader = document.getElementById('month-year');

    // Get current date
    const currentDate = new Date();
    let currentMonth = currentDate.getMonth();
    let currentYear = currentDate.getFullYear();

    // Update calendar
    function updateCalendar() {
        // Clear previous calendar
        calendarBody.innerHTML = '';

        // Set month and year in header
        monthYearHeader.textContent = `${getMonthName(currentMonth)} ${currentYear}`;

        // Get first day of the month
        const firstDayOfMonth = new Date(currentYear, currentMonth, 1);
        const startingDay = firstDayOfMonth.getDay();

        // Get number of days in the month
        const numDays = new Date(currentYear, currentMonth + 1, 0).getDate();

        // Generate calendar
        let date = 1;
        for (let i = 0; i < 6; i++) {
            const row = document.createElement('div');
            row.classList.add('calendar-row');

            for (let j = 0; j < 7; j++) {
                const cell = document.createElement('div');
                cell.classList.add('calendar-cell');

                if (i === 0 && j < startingDay) {
                    // Empty cells before the start of the month
                    cell.textContent = '';
                } else if (date > numDays) {
                    // No more days in the month
                    break;
                } else {
                    // Create cell with date
                    cell.textContent = date;
                    date++;
                }

                row.appendChild(cell);
            }

            calendarBody.appendChild(row);
        }
    }

    // Get month name
    function getMonthName(month) {
        const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
        return months[month];
    }

    // Load initial calendar
    updateCalendar();
});


