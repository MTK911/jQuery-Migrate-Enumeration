# Where to look
$folderPath = "<PATH_TO_SEARCH_IN>"

# Magic Formula
$jqm1_0_0 = @("oldFragment \= jQuery\.buildFragment;","jQuery\.buildFragment \= function\( elems, context, scripts, selection \) \{","rquickExpr \= \/\^\(\?\:\.\*\(\<\[\\w\\W\]\+\>\)\[\^\>\]\*\|\#\(\[\\w\\\-\]\*\)\)\$\/;")
$jqm1_0_0c = @("j=e\.buildFragment;e\.fn\.andSelf=function\(\)","e\.buildFragment=function\(t,n,o,i\)\{","v=/\^\(\?:\.\*\(<\[\\w\\W]\+>\)\[\^>]\*\|\#\(\[\\w\\-]\*\)\)\$/;")

$jqm1_1_0 = @("var attrFn \= \{\},","oldAttr \= jQuery\.attr,","if \( pass && oldAttr\.length \< 4 \)")
$jqm1_1_0c = @("var i\=\{\},","s\=e\.attr","return i&&4\>s\.length&&")

$jqm1_1_1 = @("var attrFn \= jQuery\( `"\<input\/\>`",","\/\^\(\?\:\[\^\<\]\*\(\<\[\\w\\W\]\+\>\)\[\^\>\]\*\|\#\(\[\\w\\\-\]\*\)\)\$\/;","if ( pass ) {")
$jqm1_1_1c = @("var i\=e\(`"\<input\/\>`",",",g\=t&&t\.nodeType;return","y\=\/\^\(\?\:\[\^\<\]\*\(\<\[\\w\\W\]\+\>\)\[\^\>\]\*\|\#\(\[\\w\\\-\]\*\)\)\$\/;")

$jqm1_2_0 = @("rignoreText \= \/\^\[\^\<\]\*\(\.\*\?\)\[\^\>\]\*\$\/,","match \= rignoreText\.exec\( selector \);")
$jqm1_2_0c = @("y\=\/\^\[\^\<\]\*\(\.\*\?\)\[\^\>\]\*\$\/","b\=\/\^\[\^\<\]\*\<\[\\w\\W\]\+\>\[\^\>\]\*\$\/;","\?\(i\=y\.exec\(t")

$jqm1_2_1 = @("\(\ selector\.charAt\(\ 0\ \)\ !==\ `"<`"\ \)","if\ \(\ match\[\ 0\ ]\.charAt\(\ 0\ \)\ ===\ `"\#`"\ \)\ \{","if\ \(\ !json\ &&\ json\ !==\ null\ \)\ \{")
$jqm1_2_1c = @("&&i\[0\]&&\(`"\<`"\!\=\=t\.charAt\(0\)","`"\#`"\=\=\=i\[0\]\.charAt\(0\)&&\(r","return e\|\|null\=\=\=e\?m\.apply\(this,arguments\)\:\(r")

$jqm1_3_0 = @("return oldLoad.apply\( this, arguments \);","setup: function\(\) { migrateWarn\( `"'ready' event is deprecated`" \);")
$jqm1_3_0c = @(",`"load`"\=\=\=c&&`"string`"\=\=typeof","\{setup\:function\(\)\{d\(`"'ready' event is deprecated`"\)\}\}")

$jqm1_4_0 = @("migrateWarn\( `"Attribute selectors with '\#' must be quoted\: '`" \+ selector \+ `"'`" \);","rattrHash \= \/\\\[\\s\*\\w\+\\s\*\[~\|\^\$\*\]\?\=\\s\*\(\?\!\[\\s'`"\]\)\[\^\#\\\]\]\*\#\/")
$jqm1_4_0c = @("t\=\/\\\[\\s\*\\w\+\\s\*\[~\|\^\$\*\]\?\=\\s\*\(\?\!\[\\s'`"\]\)\[\^\#\\\]\]\*\#\/,","&&d\(`"Attribute selectors with '\#' must be quoted\: '`"\+b\+`"'`"\)")

$jqm1_4_1 = @("oldFind \= jQuery\.find,","rspaceAngle \= \/\^\\s\*\<\/,")
$jqm1_4_1c = @("a\.fn\.init,r\=a",",t\=\/\^\\s\*\<\/,u\=","u\=\/\\\[\(\\s\*\[\-\\w\]\+\\s\*\)\(\[~\|\^\$\*\]\?\=\)\\s\*\(\[\-\\w\#\]\*\?\#\[\-\\w\#\]\*\)\\s\*\\\]\/,","ownerDocument\|\|e\|\|document,\!0\),e,f\)")

$jqm3_0_0 = @("\(function\( jQuery, window \) \{","if \( name && name \!\=\= jQuery\.camelCase\( name \) \) \{")
$jqm3_0_0c = @("function\(a,b\)\{`"use strict`";","d&&d\!\=\=a\.camelCase\(d\)&&")

$jqm3_0_1 = @("jQuery\.fx\.interval \= jQuery\.fx\.interval \|\| 13;","function\( i, name \) \{","var rbadVersions \= \/\^\[12\]\\\.\/;")
$jqm3_0_1c = @("e\.fx\.interval \|\| 13, t\.requestAnimationFrame","var r \= \/\^\[12\]\\\.\/;")

$jqm3_1_0 = "migrateWarnFunc\( jQuery, `"nodeName`", jQuery\.nodeName,"
$jqm3_1_0c = @("var r\=\{\};function u\(e\)\{var t\=n\.console;r\[e\]\|\|\(r\[e\]\=\!0,s\.migrateWarnings\.push\(e\)","i,a\=s\.fn\.init,c\=s\.isNumeric,d\=s")

$jqm3_2_0 = @("var class2type \= \{\};","var camelCase \= function\( string \) \{")
$jqm3_2_0c = @("var f\=\{\};s\.each","\(this,arguments\)\}\}\)\);function j\(e\)")

$jqm3_3_0 = @("var origThis \= this;","if \( typeof value \=\=\= `"number`" && \!isAutoPx\( camelCase\( name \) \) \) \{")
$jqm3_3_0c = @("function\(e,t\)\{var r\=this","typeof e&&s\.each\(e,function\(e,t\)")

$jqm3_3_1 = @("if \( name && typeof name \=\=\= `"object`" && \!Array\.isArray\( name \) \) \{","var oldAjax \= jQuery\.ajax;")
$jqm3_3_1c = @("e&&`"object`"\=\=typeof e&&\!Array\.isArray\(e\)&&",",s\.ajax\)\{var y\=s\.ajax;s\.ajax\=function\(\)\{var e\=y\.")

$jqm3_3_2 = "migrateWarn\( `"JSON\-to\-JSONP auto\-promotion is deprecated`""
$jqm3_3_2c = @("u\(`"JSON\-to\-JSONP auto\-promotion is deprecated`"\)\}\)\);","var g\=s\.fn\.removeAttr,h\=s\.fn\.toggleClass,v")

$jqm3_4_0 = "jQuery\.cssNumber \= new Proxy\( \{"
$jqm3_4_0c = @("\(s\.cssNumber\=new Proxy\(","return void 0\=\=\=t&&r&&\(i\(")


$jqm3_4_1 = @("if \( jQuery\.expr\.match\.bool\.test\( attr \) \) \{","var origFnCss, internalCssNumber,")
$jqm3_4_1c = @("\{s\.expr\.match\.bool\.test\(t\)&&r\.each","var Q,A,R\=\!1,C\=\/\^\[a\-z\]\/,N")

$jqm3_5_x = @("\}, `"legacy\-self\-closed\-tags`",","if \( rbooleans\.test\( attr \) \) \{")
$jqm3_5_xc = @("\},`"legacy\-self\-closed\-tags`",","function\(e,t\)\{Q\.test\(t\)")

$files = Get-ChildItem -Path $folderPath -File -Recurse -Filter *.js
# Loop through files
foreach ($file in $files) {
    # Load the file
    $content = Get-Content -Path $file.FullName

    # Start the comparison Check
    if ($content -match $jqm1_0_0[0] -AND $content -match $jqm1_0_0[1] -AND $content -match $jqm1_0_0[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.0.0"
	 }
		ElseIf ($content -match $jqm1_1_0[0] -AND $content -match $jqm1_1_0[1] -AND $content -match $jqm1_1_0[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.0"
    }
		ElseIf ($content -match $jqm1_1_1[0] -AND $content -match $jqm1_1_1[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.1"
    }
		ElseIf ($content -match $jqm1_2_0[0] -AND $content -match $jqm1_2_0[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.2.0"
     }
		ElseIf ($content -match $jqm1_2_1[0] -AND $content -match $jqm1_2_1[1] -AND $content -match $jqm1_2_1[2]) {

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
		ElseIf ($content -match $jqm1_0_0c[0] -AND $content -match $jqm1_0_0c[1] -AND $content -match $jqm1_0_0c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.0.0 Minified"
	}
		ElseIf ($content -match $jqm1_1_0c[0] -AND  $content -match $jqm1_1_0c[1] -AND  $content -match $jqm1_1_0c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.0 Minified"
    }
		ElseIf ($content -match $jqm1_1_1c[0] -AND $content -match $jqm1_1_1c[1] -AND $content -match $jqm1_1_1c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.1.1 Minified"
    }
		ElseIf ($content -match $jqm1_2_0c[0] -AND $content -match $jqm1_2_0c[1] -AND $content -match $jqm1_2_0c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.2.0 Minified"
     }
		ElseIf ($content -match $jqm1_2_1c[0] -AND $content -match $jqm1_2_1c[1] -AND $content -match $jqm1_2_1c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.2.1 Minified"
     }
		ElseIf ($content -match $jqm1_3_0c[0] -AND $content -match  $jqm1_3_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.3.0 Minified"
     }
		ElseIf ($content -match $jqm1_4_0c[0] -AND $content -match  $jqm1_4_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.4.0 Minified"
     }
		ElseIf ($content -match $jqm1_4_1c[0] -AND $content -match $jqm1_4_1c[1] -AND $content -match $jqm1_4_1c[2]) {

        Write-Host $file.FullName `n"jQuery Migrate 1.4.1 Minified"
	  }
		ElseIf ($content -match $jqm3_0_0c[0] -AND $content -match $jqm3_0_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.0.0 Minified"
     }
		ElseIf ($content -match $jqm3_0_1c[0] -AND $content -match $jqm3_0_1c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.0.1 Minified"
     }
		ElseIf ($content -match $jqm3_1_0c[0] -AND $content -match $jqm3_1_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.1.0 Minified"
    }
		ElseIf ($content -match $jqm3_2_0c[0] -AND $content -match $jqm3_2_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.2.0 Minified"
    }
		ElseIf ($content -match $jqm3_3_0c[0] -AND $content -match $jqm3_3_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.0 Minified"
    }
		ElseIf ($content -match $jqm3_3_1c[0] -AND $content -match $jqm3_3_1c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.1 Minified"
    }
		ElseIf ($content -match $jqm3_3_2c[0] -AND $content -match $jqm3_3_2c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.3.2 Minified"
    }
		ElseIf ($content -match $jqm3_4_0c[0] -AND $content -match $jqm3_4_0c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.4.0 Minified"
    }
		ElseIf ($content -match $jqm3_4_1c[0] -AND $content -match $jqm3_4_1c[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.4.1 Minified"
    }
		ElseIf ($content -match $jqm3_5_xc[0] -AND $content -match $jqm3_5_xc[1]) {

        Write-Host $file.FullName `n"jQuery Migrate 3.5.0 OR 3.5.2 Minified"
    }
}
