<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>TimeTable Management System</title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <script type="text/javascript" src="assets/jsPDF/dist/jspdf.min.js"></script>
    <script type="text/javascript" src="assets/js/html2canvas.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FONT AWESOME CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- FLEXSLIDER CSS -->
    <link href="assets/css/flexslider.css" rel="stylesheet"/>
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet"/>
    <!-- Google	Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>

</head>
<body>
<br>
<style>
    table {
        margin-top: 20px;
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 2px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #ffffff;
    }

    tr:nth-child(odd) {
        background-color: #ffffff;
    }
</style>
<div id="TT" style="background-color: #FFFFFF">
    <table border="2" cellspacing="3" align="center" id="timetable">
        <caption>
            <strong><br><br>
                <?php
                if (isset($_POST['select_semester'])) {
                    echo "COMPUTER SCIENCE & ENGINEERING DEPARTMENT SEMESTER " . $_POST['select_semester'] . " ";
                    $year = (int)($_POST['select_semester'] / 2) + $_POST['select_semester'] % 2;
                    $r = mysqli_fetch_assoc(mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"), "SELECT * from classrooms
                                WHERE status = '$year'"));
                }
                ?>
            </strong>
        </caption>
        <tr>
            <td style="text-align:center">WEEKDAYS</td>
            <td style="text-align:center">9:00-9:45</td>
            <td style="text-align:center">9:55-10:45</td>
            <td style="text-align:center">10:45-11:35</td>
            <td style="text-align:center">11:45-12:35</td>
            <td style="text-align:center">12:40-1:25</td>
            <td style="text-align:center">1:25-2:05</td>
            <td style="text-align:center">2:05-2:55</td>
            <td style="text-align:center">2:55-3:45</td>
        </tr>
        <tr>
            <?php
            $table = null;
            if (isset($_POST['select_semester'])) {
                $table = " semester" . $_POST['select_semester'] . " ";
            } else
                echo '</table>';
            if (isset($_POST['select_semester']) && $_POST['select_semester'] % 2 !== 0) {
                $q = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
                    "SELECT * FROM" . $table);
                $qq = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
                    "SELECT * FROM subjects");
                $days = array('MONDAY', 'TUESDAY', 'WEDNESDAY', 'THURSDAY', 'FRIDAY', 'SATURDAY');
                $i = -1;
                $str = "<br>";
                if (isset($_POST['select_semester'])) {
                    while ($r = mysqli_fetch_assoc($qq)) {
                        if ($r['isAlloted'] == 1 && $r['semester'] == $_POST['select_semester']) {
                            $str .= $r['subject_code'] . ": " . $r['subject_name'] . " ";
                            if (isset($r['allotedto'])) {
                                $id = $r['allotedto'];
                                $qqq = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
                                    "SELECT * FROM teachers WHERE faculty_number = '$id'");
                                $rr = mysqli_fetch_assoc($qqq);
                                $str .= " " . $rr['alias'] . ": " . $rr['name'] . " ";
                            }
                            if ($r['course_type'] !== "LAB") {
                                $str .= "<br>";
                                continue;
                            } else {
                                $str .= ", ";
                            }
                            if (isset($r['allotedto2'])) {
                                $id = $r['allotedto2'];
                                $qqq = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
                                    "SELECT * FROM teachers WHERE faculty_number = '$id'");
                                $rr = mysqli_fetch_assoc($qqq);
                                $str .= " " . $rr['alias'] . ": " . $rr['name'] . ", ";
                            }
                            if (isset($r['allotedto3'])) {
                                $id = $r['allotedto3'];
                                $qqq = mysqli_query(mysqli_connect("localhost","id20469554_root","a@/jC1T-JrdVL5M!","id20469554_ttms"),
                                    "SELECT * FROM teachers WHERE faculty_number = '$id'");
                                $rr = mysqli_fetch_assoc($qqq);
                                $str .= " " . $rr['alias'] . ": " . $rr['name'] . "<br>";
                            }
                        }
                    }
                }
                while ($row = mysqli_fetch_assoc($q)) {
                    $i++;
                    echo "
                 <tr><td style=\"text-align:center\">$days[$i]</td>
                 <td style=\"text-align:center\">{$row['period1']}</td>
                <td style=\"text-align:center\">{$row['period2']}</td>
                <td style=\"text-align:center\">{$row['period3']}</td>
                 <td style=\"text-align:center\">{$row['period4']}</td>
                  <td style=\"text-align:center\">{$row['period5']}</td>
                  <td style=\"text-align:center\">LUNCH</td>
                  <td style=\"text-align:center\">{$row['period6']}</td>
                  <td style=\"text-align:center\">{$row['period6']}</td>
                </tr>\n";
                }
                echo '</table>';
                $sign = "GENERATED VIA TIMETABLE GENERATOR, COMPUTER SCIENCE & ENGINEERING DEPARTMENT.";
                if (isset($_POST['select_semester'])) {
                    echo "<div align=\"center\">" . "<br>" . $str . "<br>
                            <strong>" . $sign . "<br></strong></div>";
                }
                unset($_GET['generated']);
            } else {
                header("location:index.php?generated=false");

            }
            ?>
<html lang="en">
<head>
	<meta charset="utf-8">
    <script src="render.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
    <script type="text/javascript" language="JavaScript">
    window.onload = function () {
    document.getElementById("download")
        .addEventListener("click", () => {
            const invoice = this.document.getElementById("timetable");
            console.log(invoice);
            console.log(window);
            var opt = {
                margin: 1,
                filename: 'Timetable.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                html2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'letter', orientation: 'landscape' }
            };
            html2pdf().from(invoice).set(opt).save();
        })
}</script>
    <style>

      *{
	margin: 0;
	padding: 0;
	box-sizing: border-box;

}
.submit{
	margin-left: auto;
	color: #fff;
	background-color: #29025f;;
	border-radius: 3px;
	padding: 13px 39px;
	text-align: center;
	letter-spacing: 0.9px;
	text-decoration: none;
	margin-right: auto;
	line-height: 26px;
	font-size: 16px;
	align: center;
}
</div>
</div>
</style>
</head>
<body>
<script type="text/javascript">
        var checkList = document.getElementById('list1');
        var items = document.getElementById('items');
        checkList.getElementsByClassName('anchor')[0].onclick = function (evt) {
            if (items.classList.contains('visible')){
                items.classList.remove('visible');
                items.style.display = "none";
            }

            else{
                items.classList.add('visible');
                items.style.display = "block";
            }
        }

        items.onblur = function(evt) {
            items.classList.remove('visible');
        }


</script>
<div align="center" style="margin-top: 10px">
<button class="submit" id="download">Download</button>
</div>
</body>
</html>
