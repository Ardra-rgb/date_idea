flatpickr("#calendar", {

    inline: true,

    minDate: "today",

    onChange: function() {

        selectedDate = true;

        checkButton();

    }

});