<?php
function getTableNameRpCode()
{
	$tbl_Name = 'tbl_users';
	$rpCode = isset($_GET['rp']) ? $_GET['rp'] : 0;
	if ((int) $rpCode == 9123)
		$tbl_Name = 'tbl_teacher';
	return  $tbl_Name;
}
function getIsObjectToArray($d)
{
	if (is_object($d)) {
		$d = get_object_vars($d);
	}
	if (is_array($d)) {
		return array_map(__FUNCTION__, $d); // recursive
	} else {
		return $d;
	}
}
function _getObjectToArray($_object)
{
	while ($row = $_object->fetch_object()) {
		$object = [];
		foreach ($row as $key => $value) {
			$object[$key] = $value;
		}
		$result_object[] = $object;
	}
	// return the array
	return $result_object;
}

/**
 * getreturnResponse
 * @param  bool $status
 * @param string $message
 * @param array|null $data
 * @param array|null $error
 * @return array
 */
function getreturnResponse($status, $message, $data = null, $error = null)
{
	$response = array();
	$response['status'] = $status;
	$response['message'] = $message;
	$response['data'] = $data;
	$response['error'] = $error;
	return $response;
}

/**
 * Wraps array_rand call with additional checks
 *
 * TLDR; not so radom as you'd wish.
 *
 * NOTICE: the closer you get to the input arrays length, for the n parameter, the  output gets less random.
 * e.g.: array_random($a, count($a)) == $a will yield true
 * This, most certainly, has to do with the method used for making the array random (see other comments).
 *
 * @throws OutOfBoundsException – if n less than one or exceeds size of input array
 *
 * @param array $array – array to randomize
 * @param int $n – how many elements to return
 * @return array
 */
function array_random(array $array, int $n = 1): array
{
	if ($n < 1 || $n > count($array)) {
		throw new OutOfBoundsException();
	}

	return ($n !== 1)
		? array_values(array_intersect_key($array, array_flip(array_rand($array, $n))))
		: array($array[array_rand($array)]);
}
