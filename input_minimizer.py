def minimizer(p_list_ref, iqt, min_obj, lower, c):
	# p_list = order_params(p_list_ref, min_obj)
	p_list = p_list_ref
	for i in range(len(p_list)):
		upper = p_list[i]
		p_list[i] = min_search(lower, upper, iqt, c)
	return p_list

def order_params(p_list, min_obj):
	if min_obj == "time":
		return sorted(p_list)
	return p_list

def min_search(lower, upper, iqt, c):
	input_list = list(range(lower, upper))
	if iqt == "size":
		return min([element for element in input_list if element > upper*c])
	return lower

##print(minimizer(p_list_ref=[50, 20], iqt="coverage", min_obj="time", lower=1, c=0.9))
