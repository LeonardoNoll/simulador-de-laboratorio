/// @description Update timer logic every second
var _interval = fastforward ? 10 : 1000

if (counting_down) {
    var current = current_time; // Get the current time in milliseconds

    // Check if a second has passed
    if (current - last_update_time >= _interval) {
        last_update_time = current; // Update the last recorded time

        // Check if timer has already reached 0:00
        if (minutes == 0 && seconds == 0) {
            counting_down = false; // Stop the timer
            show_debug_message("Minutes Elapsed: " + string(minutes_elapsed));

            // Handle expiration logic
            if (minutes_elapsed == 5) {
                room_goto(rm_1b); // Go to the next room
            } else {
                criar_textbox(x + sprite_width, y, ["Você cronometrou o tempo errado"]);
                minutes_elapsed = 0; // Reset elapsed time
            }

            return; // Stop further execution for this frame
        }

        // Decrement seconds and adjust minutes if needed
        seconds--;
        if (seconds < 0) {
            seconds = 59; // Reset seconds
            minutes--;    // Decrement minutes
            if (minutes >= 0) {
                minutes_elapsed++; // Increment only when a full minute passes
            }
        }

        // Debug: Show the current time
        show_debug_message("Time Remaining: " + string(minutes) + ":" + (seconds < 10 ? "0" : "") + string(seconds));
    }
}
