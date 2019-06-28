<html>
<input type="button" id="more_fields" onclick="add_fields();" value="Add another Skill" />
<?php
$cars =  ["Volvo", "BMW", "Toyota", "Toyota", "Toyota"];
echo $cars[0];
?>
       <div id="data_fileds">
           <div>
                <div class="content">
                <span>Skill:
                <form method="POST" action="aaa.php">
              <!--    <input type="text" style="Skill:48px;" name="employer[]" value= "<?php echo $cars[0];?>" /> -->
                  <?php for($i = 0; $i < count($cars); $i++): ?>
                  <div class="content">
                      <span>Skill:
                          <input type="text" style="Skill:48px;" name="employer[]" value="<?php echo $cars[$i];?>" />
                      </span>
                  </div>
                  <?php endfor; ?>
                </div>
           </div>
        </div>



  <script>

function add_fields() {
    var objTo = document.getElementById('data_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<div class="content"><span>Skill: <input type="text" style="Skill:48px;" name="employer[]" value="<?php echo $cars[2];?>" />';
    objTo.appendChild(divtest)
    }
 </script>
  <input type="submit" Value="submit">
 </form>
</html>