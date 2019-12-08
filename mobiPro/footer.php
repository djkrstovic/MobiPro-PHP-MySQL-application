		
	<div id="futer">
	<p>&copy; <?php echo date('Y'); ?> MobiPro. All Rights Reserved. Created by <a href="author.html">Djordje Krstovic</a></p>
	</div>
	
	<script type="text/javascript">
        // Skripta za navigacione dugmice.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>

</body>

</html>