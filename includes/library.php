<?php

	class Parser {
		private static $_translations = array();
		
		public static function getTranslation($str) {
			self::parse();
			$response = '';
			if(!is_array($str) && !is_object($str)) {
				$response = $str;
				if(isset(self::$_translations[$str])) {
					$response = self::$_translations[$str];
				}
			}
//			e($str, '$str');
//			e($response, '$response');
			return $response;
		}

		public static function parse() {
			$response = false;
			if(key(self::$_translations) === NULL) {
				$lang = validatedSubDomainToLang();
				switch($lang) {
					case 'rus':
						break;
					case 'eng':
						$fileNamePath = JPATH_BASE . '/administrator/components/com_vironittouchstonecomponent/content/languages/' . $lang . '';
						if (file_exists($fileNamePath)) {
							$content = file_get_contents($fileNamePath);
							$strings = explode("\n", $content);
							if(is_array($strings)) {
								foreach ($strings as $k => $oneWordStr) {
									$_ = explode('=', $oneWordStr);
									if(is_array($_)) {
										if(isset($_[0]) && isset($_[1])) {
											if(!is_array($_[0]) && !is_object($_[0])
												&&
												!is_array($_[1]) && !is_object($_[1])
											) {
												self::$_translations[$_[0]] = $_[1];
											}
										}
									}
								}
							}
						}
//						e(self::$_translations, 'self::$_translations');
						break;
					default:
						break;
				}
			}
//			h((self::$_translations));
			return $response;
		}
	}

    function validatedSubDomainToLang($validatedSubDomain = NULL) {
		if($validatedSubDomain === NULL) {
			$validatedSubDomain = getValidatedSubDomain();
		}
		$response = 'rus';
		if(is_string($validatedSubDomain)) {
			switch ($validatedSubDomain) {
				case 'ru':
					$response = 'rus';
					break;
				case 'loc':
				case 'com':
					$response = 'eng';
					break;
				default:
					break;
			}
		}
//		e($response, 'validatedSubDomainToLang');
		return $response;
	}

    function validatedSubDomainToLangPostfix($validatedSubDomain = NULL) {
		if($validatedSubDomain === NULL) {
			$validatedSubDomain = getValidatedSubDomain();
		}
		$response = '';
//		e($validatedSubDomain, '$validatedSubDomain');
		if(is_string($validatedSubDomain)) {
			switch ($validatedSubDomain) {
				case 'ru':
					$response = '';
					break;
				case 'loc':
				case 'com':
					$response = '_eng';
					break;
				default:
					break;
			}
		}
//		e($response, 'validatedSubDomainToLangPostfix');
		return $response;
	}


    function getValidatedSubDomain() {
//		static $validatedSubDomain = '';
		$validatedSubDomain = '';
		if($validatedSubDomain === '') {
			if(isset($_SERVER['SERVER_NAME'])) {
				$_  = explode('.', $_SERVER['SERVER_NAME']);
				if(is_array($_)) {
					$validatedSubDomain = end($_);
					reset($_);
				}
			}
		}
//		e($validatedSubDomain, '$validatedSubDomain');
		return $validatedSubDomain;
	}


    function _t($str) {
		$response = NULL;
		if(is_string($str)) {
			$response = '<span style="color: green">%' . $str . '%</span>';
			$response = '' . $str . '';
			$response = Parser::getTranslation($str);
		}
		return $response;
    };

	function getGluedStr( array $arr = array(), $type = 'int', $glueSym = ',', $encoding = 'UTF-8' )
	{
//		self::e($arr, '$arr');
		$str = NULL;
		if( key($arr) !== NULL && is_string($type) && is_string($glueSym)) {
			foreach( $arr as $element ) {
//			self::e($type, '$type');
//			self::h(gettype($element), 'gettype($element)');

			$access = NULL;
			switch ($type) {
				case 'int':
					$access = is_int($element);
					break;
				default:
					break;
			}
				if($access) {
					if ( $str === NULL ) {
						$str = '';
					}
					$str .= $element . ',';
				}
			}
		}
		if ( is_string($str) && mb_strlen($str, $encoding)) {
			$str = cutLast($str, $encoding);
		}
//		self::h($str, '$str');
//		self::hh();
		return $str;
	}


	
function getValidatedDateParam($date, $returnArray = false)
{
	$validatedDate = false;
	if ($date) {
		$massiveDate = explode('-', $date);
		if (
				isset($massiveDate[0]) &&
				isset($massiveDate[1]) &&
				isset($massiveDate[2])
		) {
			if (intval($massiveDate[0]) > 0 && intval($massiveDate[0]) < 9999) {
				if (intval($massiveDate[1]) > 0 && intval($massiveDate[1]) < 13) {
					if (intval($massiveDate[2]) > 0 && intval($massiveDate[2]) < 32) {
						if ($massiveDate[0] < 10) {
							$massiveDate[0] = '000' . (int)$massiveDate[0];
						}
						if ($massiveDate[0] >= 10 && $massiveDate[0] < 100) {
							$massiveDate[0] = '00' . (int)$massiveDate[0];
						}
						if ($massiveDate[0] >= 100 && $massiveDate[0] < 999) {
							$massiveDate[0] = '0' . (int)$massiveDate[0];
						}

						if ($massiveDate[1] < 10) {
							$massiveDate[1] = '0' . (int)$massiveDate[1];
						}
						if ($massiveDate[2] < 10) {
							$massiveDate[2] = '0' . (int)$massiveDate[2];
						}
						if($returnArray) {
							$validatedDate = array('0' => $massiveDate[0], '1' => $massiveDate[1], '2' => $massiveDate[2]);
						} else {
							$validatedDate = $massiveDate[0] . '-' . $massiveDate[1] . '-' . $massiveDate[2];
						}
					}
				}
			}
		}
	}
	return $validatedDate;
}

/**
 * Convert object or array to String
 * @param type $obj - object or array to convert
 * @param array $bordersForKeys
 * @param array $bordersForValues
 * @return String - converted to String array or object
 */
function toString($obj, array $bordersForKeys = NULL, array $bordersForValues = NULL) {
	if ($bordersForKeys === NULL) {
		$bordersForKeys = array('[', ']');
	}
	if ($bordersForValues === NULL) {
		$bordersForValues = array('[', ']');
	}
	$result = NULL;
	if (is_object($obj) || is_array($obj)) {
		foreach ($obj as $key => $value) {
			$result .= $bordersForKeys[0] . $key . $bordersForKeys[1] . ' => ';

			if (is_object($value) || is_array($value)) {
				$result .= "\n";
				$result .= toString($value, $bordersForKeys, $bordersForValues);
			} else {
				$result .= $bordersForValues[0] . $value . $bordersForValues[1];
			}
			$result .= "\n";
		}
	} else {
		$result = $obj;
	}
	return $result;
}

/**	2013.04.08_16-11
 * Get value from array, object of class by setting keys
 * @param array $arr - array from which we want to get value
 * @param array $keys - keys, simply the path to value inside array
 *						For Example: ['a']['b']['b'] - These are keys
 * return $value - Founded value or false if error
 */
function getValueFromArray( $arr, array $keys, $returnOnlyString = false) {
	$value = false;
	if(is_array($arr) || is_object($arr) ) {
		if(is_array($keys) || is_object($keys) ) {
			foreach($keys as $i => $key) {
				if(!(	is_string($key) ||  
						is_integer($key) ||  
						is_float($key) || 
						is_null($key)
				)) {
					unset($keys[$i]);
				}
			}
		}
		$prevElement = $arr;
		$allKeys = true;
		foreach($keys as $i => $key) {

			$prevIsArray = (is_array($prevElement) && isset($prevElement[$key]));
			$prevIsObject = ((is_object($prevElement)) && isset($prevElement->$key));

			if( $prevIsArray ) {
				$prevElement = $prevElement[$key];
			} elseif( $prevIsObject ) { 
				$prevElement = $prevElement->$key;
			} else {
				$allKeys = false;
				break;
			}
		}
		if($allKeys) {
			$value = $prevElement;
		}
	}
	//	If we want get value only if value can be interpreted as a string
	if($returnOnlyString) {
		if(is_array($value) || is_object($value) ) {
			$value = false;
		}
	}
	return $value;
}

function ee() {
	e('Hooray');
}

function hh($str = '') {
	if (empty($str)) {
		h('Hooray');
	} else {
		h($str);
	}
}

// v.2013-02-07 16:43
function e($str, $name = '', $showType = true) {
	$name = strval($name);
	echo '<pre>';
	echo '<tt>';
	echo '----------';

	if ($name != '') {
		echo $name;
	} else {
		echo '...';
	}
	$type = gettype($str);
	if ($showType) {
		echo '[' . $type . ']';
	}
	echo '<br />';
		switch ($type) {
			case 'boolean':
				if ($str) {
					echo 'true';
				} else {
					echo 'false';
				}
				break;
			default:
				print_r($str);
				break;
		}
	echo '<br />';

	echo '----------';
	echo '</tt>';
	echo '</pre>';
}

/**
 * cutLast - Cut last symbol in string
 * @param type $str - string 
 * @param type $encoding - string with encoding of string
 * @return string - string with cut last symbol
 * @throws Exception - If there are not correct parameters
 */
function cutLast($str, $encoding = 'UTF-8')
{
	if(is_string($str) && is_string($encoding)) {
		$result = $str;
		$len = mb_strlen($str, $encoding );
		if( $len > 0 ) {
			$result = mb_substr($str, 0, $len - 1, $encoding);
		}
	} else {
		throw new Exception('Incorrect params');
	}
	return $result;
}

function cut($data, $length, $encoding = 'UTF-8') {
	$str = NULL;
	if (is_string($data)) {
		$size = mb_strlen($data, $encoding);
		if ($size > $length) {
			$str = mb_substr($data, 0, $length - 3, $encoding) . '...';
		} else {
			$str = $data;
		}
	}
	return $str;
}

function h($str, $name = '') {
	e($str, $name);
	exit;
}

function _ln($str, $newStr = true, $logFileName = '') {
	if ($logFileName === '') {
		toLog($str, 'logs.txt', $newStr, true, 0, array('[', ']'));
	} else {
		toLog($str, $logFileName, $newStr, true, 0, array('[', ']'));
	}
}

function _l($str, $newStr = true, $logFileName = '')
{
	$logfilePathName = APPLICATION_PATH . '/public/logs.txt';	// For local
	$logfilePathName = APPLICATION_PATH . '/logs/logs.txt';		// For beta.simplpay

	if($logFileName === '') {
		toLog($str, $logfilePathName, $newStr);
	} else {
		toLog($str, $logFileName, $newStr);
	}
}

function _le($str, $name = '') {
	if(is_string($name)) {
		if($name !== '') {
			_l( $name . ' ');
		}
		_l('[');
		_l('[type: ' . gettype($str) . ']');
		_l($str);
		_l(']');
	} else {
		_l($str);
	}
}

/** v.0.91 2013-04-04 17-01
 * toLog() - write to log file string / array / object
 * @param stdClass $str - string / array / object to write in log file
 * @param type $fileName - name of file where we will write the information
 * @param type $newStr - show if it neccesary to insert symbol '\n'
 *						 after each string (When we are writing Array or Object)
 * @param type $logKeys - show if it neccesary to write keys 
 *						  for each of the object of array / object
 * @param type $numTabs - number of '\t' (tabs) which we will write in file
 *						  to display info more comfortably for user
 * @param type $borders - Array of two elements which will be used to frame
 * @return boolean / int - number of bytes which are written inside file
 */
function toLog($str, $fileName, $newStr = true, $logKeys = true, $numTabs = 0, $borders = array('', ''))
{
	$f = false;
	$result = false;
	if(!is_string($borders)) {
		if(is_array($borders)
			&& !empty($borders)
			&& isset($borders[0])
			&& isset($borders[1])
			&& is_string($borders[0])
			&& is_string($borders[1])
		) {
			
		} else {
			$borders[0] = '';
			$borders[1] = '';
		}
	} else {
		$tmp = $borders;
		$borders = array($tmp, $tmp);
	}
	if(is_array($str) || is_object($str) || $str instanceof stdClass) {
		foreach($str as $key => $elem) {
			if($logKeys) {
				if(is_string($elem) || is_int($elem) || is_float($elem) || is_null($elem) || is_bool($elem)) {
					toLog($borders[0] . $key . $borders[1] . ' => ', $fileName, false, $logKeys, $numTabs, '');
				} else {
					toLog($borders[0] . $key . $borders[1] . ' => ', $fileName, $newStr, $logKeys, $numTabs, '');
				}
			}
			if(is_string($elem) || is_int($elem) || is_float($elem) || is_null($elem) || is_bool($elem)) {
				toLog($elem, $fileName, $newStr, $logKeys, 0, $borders);
			} else {
				toLog($elem, $fileName, $newStr, $logKeys, $numTabs + 1, $borders);
			}
		}
	} elseif(is_string($str) || is_int($str) || is_float($str) || is_null($str) || is_bool($str)) {
		if($newStr) {
			$n = "\n";
		} else {
			$n = "";
		}
		$isError = false;
		if(is_file($fileName)) {
			try {
				$writeable = is_writeable($fileName);
				if($writeable) {
					$f = fopen($fileName, 'a+');
				} else {
					$isError = true;
				}
			} catch(Exception $e){
				$isError = true;
			}
		} else {
			try {
				$writeableDirectory = is_writeable(dirname($fileName));
				if($writeableDirectory) {
					$f = fopen($fileName, 'w+');
				} else {
					$isError = true;
				}
			} catch(Exception $e){
				$isError = true;
			}
		}
		if(is_resource($f) && $isError === false) {
//			chmod($fileName, 0777);
			// For case wheb numTabs === 0
			$result = true;
			for($i = 0; $i < $numTabs; $i++) {
				$result = fputs($f, "\t");
				if($result === false) {
					break;
				}
			}
			if($result !== false) {
				$r = fputs($f, $borders[0] . $str . $borders[1] . $n);
				if($r !== false) {
					$result += $r;
				} else {
					$result = false;
				}
			}
			fclose($f);
		} else {
		}
	}
	return $result;
}

/**
 * Transform object to array
 * @param stdClass $object - Object for transform
 * @return Array 
 */
function toArray($object)
{
	if((is_array($object) || is_object($object))) {
	foreach ($object as &$i) {
		if ((is_array($i) || is_object($i)) /*&& array_values($i) !== $i*/) {
			$i = toArray($i);
		}
	}
	}
	return (Array)$object;
}


