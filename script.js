document.addEventListener('DOMContentLoaded', () => {
    // Video Playback Logic
 const videoThumbnail = document.getElementById('video-thumbnail');
const playButton = document.getElementById('play-button');
const videoContainer = document.getElementById('video-container');

if (playButton && videoThumbnail) {
  playButton.addEventListener('click', () => {
    const videoUrl = videoThumbnail.getAttribute('data-video-url');

    if (videoUrl) {
      videoContainer.innerHTML = `
        <iframe
          src="${videoUrl}?autoplay=1&mute=1&rel=0"
          title="Video Player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen
        ></iframe>
      `;
    }
  });
}

    // FAQ Accordion Logic
    const faqQuestions = document.querySelectorAll('.faq-question');
    faqQuestions.forEach(question => {
        question.addEventListener('click', () => {
            const faqItem = question.parentElement;
            
            // Toggle active class on clicked item
            faqItem.classList.toggle('active');
            
            // Optional: Close other open items
            faqQuestions.forEach(otherQuestion => {
                if (otherQuestion !== question) {
                    otherQuestion.parentElement.classList.remove('active');
                }
            });
        });
    });

    // Sticky Footer Countdown Timer
    const countdownElement = document.getElementById('countdown-timer');
    if (countdownElement) {
        let timeParts = countdownElement.textContent.split(':');
        let minutes = parseInt(timeParts[0], 10);
        let seconds = parseInt(timeParts[1], 10);
        let totalSeconds = minutes * 60 + seconds;

        const timerInterval = setInterval(() => {
            if (totalSeconds <= 0) {
                clearInterval(timerInterval);
                return;
            }
            totalSeconds--;
            
            let m = Math.floor(totalSeconds / 60);
            let s = totalSeconds % 60;
            
            countdownElement.textContent = `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
        }, 1000);
    }
});

