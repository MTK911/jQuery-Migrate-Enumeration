# Where to look
$folderPath = "<PATH_TO_SEARCH>"

# Magic Formula
$jqm1_0_0 = @("oldFragment = jQuery.buildFragment;","jQuery.buildFragment = function( elems, context, scripts, selection ) {","rquickExpr = /^(?:.*(<[\w\W]+>)[^>]*|#([\w\-]*))$/;")
$jqm1_1_0 = @("var attrFn = {},","	oldAttr = jQuery.attr,","if ( pass && oldAttr.length < 4 )")
$jqm1_1_1 = @("\/\^\(\?\:\[\^\<\]\*\(\<\[\\w\\W\]\+\>\)\[\^\>\]\*\|\#\(\[\\w\\\-\]\*\)\)\$\/;","if ( pass ) {")
$jqm1_2_0 = @("rignoreText \= \/\^\[\^\<\]\*\(\.\*\?\)\[\^\>\]\*\$\/,","match = rignoreText.exec( selector );")
$jqm1_2_1 = @("\( selector.charAt\( 0 \) !== `"<`" \)","if \( match[ 0 ].charAt\( 0 \) === `"#`" \) {","if \( !json && json !== null \) {")
$jqm1_3_0 = @("return oldLoad.apply\( this, arguments \);","setup: function\(\) { migrateWarn\( `"'ready' event is deprecated`" \);")
$jqm1_4_0 = @("migrateWarn\( `"Attribute selectors with '\#' must be quoted\: '`" \+ selector \+ `"'`" \);","rattrHash \= \/\\\[\\s\*\\w\+\\s\*\[~\|\^\$\*\]\?\=\\s\*\(\?\!\[\\s'`"\]\)\[\^\#\\\]\]\*\#\/")
$jqm1_4_1 = @("oldFind \= jQuery\.find,","rspaceAngle \= \/\^\\s\*\<\/,")
$jqm3_0_0 = @("\(function\( jQuery, window \) \{","if \( name && name \!\=\= jQuery\.camelCase\( name \) \) \{")
$jqm3_0_1 = @("jQuery\.fx\.interval \= jQuery\.fx\.interval \|\| 13;","function\( i, name \) \{","var rbadVersions \= \/\^\[12\]\\\.\/;")
$jqm3_1_0 = "migrateWarnFunc\( jQuery, `"nodeName`", jQuery\.nodeName,"
$jqm3_2_0 = @("var class2type \= \{\};","var camelCase \= function\( string \) \{")
$jqm3_3_0 = @("var origThis \= this;","if \( typeof value \=\=\= `"number`" && \!isAutoPx\( camelCase\( name \) \) \) \{")
$jqm3_3_1 = @("if \( name && typeof name \=\=\= `"object`" && \!Array\.isArray\( name \) \) \{","var oldAjax \= jQuery\.ajax;")
$jqm3_3_2 = "migrateWarn\( `"JSON\-to\-JSONP auto\-promotion is deprecated`""
$jqm3_4_0 = "jQuery\.cssNumber \= new Proxy\( \{"
$jqm3_4_1 = @("if \( jQuery\.expr\.match\.bool\.test\( attr \) \) \{","var origFnCss, internalCssNumber,")
$jqm3_5_x = @("\}, `"legacy\-self\-closed\-tags`",","if \( rbooleans\.test\( attr \) \) \{")



$files = Get-ChildItem -Path $folderPath -File -Recurse -Filter *.js
# Loop through files
foreach ($file in $files) {
    # Load the file
    $content = Get-Content -Path $file.FullName

    # Start the comparison Check
    if ($content -match $jqm1_0_0[0] -AND $jqm1_0_0[1] -AND $jqm1_0_0[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.0.0"
	}
		ElseIf ($content -contains $jqm1_1_0[0] -AND $jqm1_1_0[1] -AND $jqm1_1_0[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.0"
    }
		ElseIf ($content -match $jqm1_1_1[0] -AND $jqm1_1_1[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.1"
    }
		ElseIf ($content -match $jqm1_2_0[0] -AND $jqm1_2_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.2.0"
     }
		ElseIf ($content -match $jqm1_2_1[0] -AND $jqm1_2_1[1] -AND $jqm1_2_1[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.2.1"
     }
		ElseIf ($content -match $jqm1_3_0[0] -AND $content -match  $jqm1_3_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.3.0"
     }
		ElseIf ($content -match $jqm1_4_0[0] -AND $content -match  $jqm1_4_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.4.0"
     }
		ElseIf ($content -match $jqm1_4_1[0] -AND $content -match $jqm1_4_1[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.4.1"
	  }
		ElseIf ($content -match $jqm3_0_0[0] -AND $content -match $jqm3_0_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.0.0"
     }
		ElseIf ($content -match $jqm3_0_1[0] -AND $content -match $jqm3_0_1[1] -AND $content -match $jqm3_0_1[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.0.1"
     }
		ElseIf ($content -match $jqm3_1_0) {

        Write-Host $file.FullName `n"jQuery Migrate 3.1.0"
    }
		ElseIf ($content -match $jqm3_2_0[0] -AND $content -match $jqm3_2_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.2.0"
    }
		ElseIf ($content -match $jqm3_3_0[0] -AND $content -match $jqm3_3_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.0"
    }
		ElseIf ($content -match $jqm3_3_1[0] -AND $content -match $jqm3_3_1[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.1"
    }
		ElseIf ($content -match $jqm3_3_2) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.2"
    }
		ElseIf ($content -match $jqm3_4_0) {

        Write-Host $file.FullName `n"jQuery Migrate 3.4.0"
    }
		ElseIf ($content -match $jqm3_4_1[0] -AND $content -match $jqm3_4_1[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.4.1"
    }
		ElseIf ($content -match $jqm3_5_x[0] -AND $content -match $jqm3_5_x[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.5.0 OR 3.5.2"
    }
}