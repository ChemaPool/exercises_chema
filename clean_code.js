Zammad.Handlers.Homes.HomesCalendarHandler = {
  hasBeenShow: false,
  init: () => { this.initEvents(); },

  initEvents: () => {
    let that = this;
    const checkBlock = $('.js-check-if-is-blocked[value="true"]');
    this.setDaysHoverEvent();
    this.setDaysClickEvent();
    this.setTimesHoverEvent();
    this.setTimesClickEvent();
    this.setBlockButtonEvent();
    this.setDesBlockButtonEvent();
    this.setTimeEvents();
    this.closeMagnificButton();
    checkBlock.parent().addClass('selected');
  },

  setDaysHoverEvent: () => {
    const $btn = $(this);
    const index = $btn.data('id');
    const container = $(`.js-times-container[data-day="${index}"] .time-calendar`);
    $('.js-day-button').hover( () => {
      container.addClass('active');
      $btn.addClass('active');
    }, () => {
      container.removeClass('active');
      $btn.removeClass('active');
    });
  },

  setDaysClickEvent: () => {
    $('.js-day-button').on('click', () => {
      const index = $btn.data('id');
      let buttonHasClass = btn.hasClass('is-blocked');
      $(`.js-times-container[data-day="${index}"].time-calendar`).toggleClass('selected');
      btn.toggleClass('is-blocked');
      $(`.js-times-container[data-day="${index}"].js-change-block`).prop('checked', !buttonHasClass);
      $(`.js-times-container[data-day="${index}"].js-change-time`).prop('checked', !buttonHasClass);
    });
  },

  setDaysClickEvent: () => {
    $('.js-day-button').on('click', () => {
      const btn = $(this);
      const index = btn.data('id');
      let buttonHasClass = btn.hasClass('is-blocked');

      $(`.js-times-container[data-day="${index}"].time-calendar`).toggleClass('selected');
      btn.toggleClass('is-blocked');

      $(`.js-times-container[data-day="${index}"].js-change-block`).prop('checked', !buttonHasClass);
      $(`.js-times-container[data-day="${index}"].js-change-time`).prop('checked', !buttonHasClass);
    });
  },

  setTimesHoverEvent: () => {
    const $btn = $(this);
    const index = $btn.data('time');
    const container = $(`.js-time-button[data-time="${index}"]`);
    $('.js-times-button').hover( () => {
      container.addClass('active');
      $btn.addClass('active');
    }, () => {
      container.removeClass('active');
      $btn.removeClass('active');
    });
  },

  setTimesClickEvent: () => {
    let self = this;
    $('.js-times-button').on('click', () => {
      const $btn = $(this);
      const index = $btn.data('time');
      const timeButton = $(`.js-time-button[data-time="${index}"].js-change-time`);
      timeButton.prop('checked', !btn.hasClass('is-blocked'));
      timeButton.toggleClass('selected');
      btn.toggleClass('is-blocked');
    });
  },

  setBlockButtonEvent: () => {
    $('.js-block-btn').on('click', () => {
      const $btn = $(this);
      const id = $btn.data('day');
      $(`.js-day-button[data-id="${id}"]`).removeClass('active');
      $(`.js-day-button[data-id="${id}"]`).addClass('blocked');
      $btn.hide();
      $('.js-desblock-btn').show();
      $(`.js-times-container[data-day="${id}"] .js-change-time`).each((ii, check_box) => {
        $(check_box).prop('checked', true);
        $(check_box).parent().addClass('selected');
      });
      $(`.js-times-container[data-day="${id}"] .js-change-block`).prop('checked', true);
      if ($('.js-day-button.complete, .js-day-button.blocked').length == 7) {
        $('.js-finish-btn').show();
      }
    })
  },

  setDesBlockButtonEvent: () => {
    $('.js-desblock-btn').on('click', () => {
      let $btn = $(this);
      let id = $btn.data('day');

      $(`.js-day-button[data-id="${id}"]`).addClass('active');
      $(`.js-day-button[data-id="${id}"]`).removeClass('blocked');
      $btn.hide();
      $('.js-block-btn').show();
      $(`.js-times-container[data-day="${id}"] .js-change-time`).each((ii, check_box) => {
        $(check_box).prop('checked', false);
        $(check_box).parent().removeClass('selected');
      });
      $(`.js-times-container[data-day="${id}"] .js-change-block`).prop('checked', false);
    })
  },

  setFinishButtonEvent: () => {
    $('.js-finish-btn').on('click', () => {
      const $btn = $(this);
      const id = $btn.data('day');
      $.magnificPopup.open({
        items: {
          src: '#calendar-finish-modal',
          type: 'inline',
          midClick: true,
        }
      });
    })
  },

  setTimeEvents: () => {
    let self = this;
    $('.js-change-time').change( () => {
      let $checkbox = $(this);
      let time = $checkbox.parent().data('time');
      let day = $checkbox.parent().parent().data('day');
      if ($checkbox.is(':checked')) {
        $checkbox.parent().addClass('selected');
      }else {
        $checkbox.parent().removeClass('selected');
      }
      self.verifyDaysAndTimesMarks(day, time);
    });
  },

  showPopupHelper: () => {
    if (!this.hasBeenShow) {
      $.magnificPopup.open({
        items: {
          src: '#calendar-help-popup',
          type: 'inline'
        }
      });
      this.hasBeenShow = true;
    }
  },

  markAsActiveTheNextUnCompletedDay: () => {
    const uncompleted_days  = $('.js-day-button:not(.complete)');
    if (uncompleted_days.length > 0) {
      $(uncompleted_days[0]).click();
    }
  },

  verifyDaysAndTimesMarks: (day, time) => {
    let total = $(`.js-times-container[data-day="${day}"] .time-calendar`).length;
    let selected_total = $(`.js-times-container[data-day="${day}"] .time-calendar.selected`).length;
    const buttonContainer = $(`.js-day-button[data-id="${day}"]`);
    const timesContainer = $(`.js-times-container[data-day=${day}] .js-change-block`);

    if (selected_total == total) {
      buttonContainer.addClass('is-blocked');
    }
    else {
      buttonContainer.removeClass('is-blocked');
      timesContainer.prop('checked', false);
    }

    total = buttonContainer.length;
    selected_total = $(`.js-time-button[data-time="${time}"].selected`).length;

    if (selected_total == total) {
      $(`.js-times-button[data-time="${time}"]`).addClass('is-blocked');
    }else {
      $(`.js-times-button[data-time="${time}"]`).removeClass('is-blocked');
    }
  },

  closeMagnificButton: () => {
    $('.js-close-popup').click(() => {
      $('.js-text-change').removeClass('white');
      $('.js-text-change').parent().parent().css('z-index', 1);
      $.magnificPopup.close();
    });
  },

  initSlider: () => {
    const owl = $('#owl-carousel-calendar');
    setTimeout(() => {
      owl.trigger('destroy.owl.carousel');
      if($(window).width() > 768){ owl.removeClass('owl-carousel')};
    }, 1000);
  }
};
