$LastnameOfMembers = 'LastnameOfMembers'; # The last names of the team members for file name
$ExerciseNumber = 'XX'; # The number of the current exercise

$pdf_mode = 1; # PDF output
@default_files = ('Ex'.$ExerciseNumber.'_'.$LastnameOfMembers.'.tex');
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 ';
