// tombol navbar
document.querySelector('.menu-btn', 'icon-g').addEventListener('click', () => document.querySelector('.menu-utama').classList.toggle('show'));
$(document).ready(function () {
    setTimeout(function () {
        $(".datakosong").fadeOut("slow", function () {
            $(".datakosong").remove();
        });
    }, 3000);
});