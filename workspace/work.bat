set RESULTS_DIR=msxsl-results
set LINKS_FILE=links.xml
set XSLT_FILE=xs3p.xsl
set ORIGINAL_XSLT_FILE=..\%XSLT_FILE%
rem      Copy XSLT file to local directory
copy %ORIGINAL_XSLT_FILE% .
rem      Create results directory
if not exist %RESULTS_DIR% mkdir %RESULTS_DIR%
rem      Loop through schema files
for %%f in (*.xsd) do msxsl %%f %XSLT_FILE% -t -o %RESULTS_DIR%\%%f.html
rem      Test external links
rem set XSD_FILE=address.xsd
rem msxsl %XSD_FILE% %XSLT_FILE% -t -o %RESULTS_DIR%\%XSD_FILE%.html searchImportedSchemas=true searchIncludedSchemas=true linksFile=%LINKS_FILE%
rem set XSD_FILE=ipo.xsd
rem msxsl %XSD_FILE% %XSLT_FILE% -t -o %RESULTS_DIR%\%XSD_FILE%.html searchImportedSchemas=true searchIncludedSchemas=true linksFile=%LINKS_FILE%
rem set XSD_FILE=report.xsd
rem msxsl %XSD_FILE% %XSLT_FILE% -t -o %RESULTS_DIR%\%XSD_FILE%.html searchImportedSchemas=true searchIncludedSchemas=true linksFile=%LINKS_FILE%
rem      Delete local copy of stylesheet
del %XSLT_FILE%

pause