# A PRNG intended to emulate the on-cartridge PRNG for Gen 5 with a 64-bit initial seed.
class_name PRNG

var initial_seed: Array
var current_seed: Array

func _init(p_seed):
	if p_seed == null:
		p_seed = PRNG.generate_seed()
	self.initial_seed = p_seed.duplicate()
	self.current_seed = p_seed.duplicate()

func clone():
	return PRNG.new(self.current_seed)

# Retrieves the next random number in the sequence.
# This function has three different results, depending on arguments:
# - random() returns a real number in [0, 1), just like Math.random()
# - random(n) returns an integer in [0, n)
# - random(m, n) returns an integer in [m, n)
# m and n are converted to integers via Math.floor. If the result is NaN, they are ignored.
func next(from, to):
	self.current_seed = self.next_frame(self.current_seed)
	var result = (self.current_seed[0] << 16) + self.current_seed[1]
	if from != null:
		from = floor(from)
	if to != null:
		to = floor(to)
	
	if from == null:
		result = result / 0x100000000
	elif to == null:
		result = floor(result * from / 0x100000000)
	else:
		result = floor(result * (to - from) / 0x100000000) + from;
	
	return result

# Flip a coin (two-sided die), returning true or false.
#
# This function returns true with probability `P`, where `P = numerator
# / denominator`. This function returns false with probability `1 - P`.
#
# The numerator must be a non-negative integer (`>= 0`).
#
# The denominator must be a positive integer (`> 0`).
func random_chance(numerator: int, denominator: int):
	return self.next(denominator, null) < numerator

# Return a random item from the given array.
#
# This function chooses items in the array with equal probability.
#
# If there are duplicate items in the array, each duplicate is
# considered separately. For example, sample(['x', 'x', 'y']) returns
# 'x' 67% of the time and 'y' 33% of the time.
#
# The array must contain at least one item.
#
# The array must not be sparse.
func sample(items: Array):
	if items.size() == 0:
		ErrorHandler.throw_error("Cannot sample an empty array")

	var index = self.next(items.size(), null)
	var item = items[index];
	if item == null and not items.has(index):
		ErrorHandler.throw_error("Cannot sample a sparse array")
	
	return item

# A Fisher-Yates shuffle. This is how the game resolves speed ties.
func shuffle(items: Array, start = 0, end = items.size()):
	while start < end - 1:
		var next_index = self.next(start, end);
		if start != next_index:
			var temp = items[start]
			items[start] = items[next_index]
			items[next_index] = temp
		start += 1
   

func multiply_add(a: Array, b: Array, c: Array):
	var out: Array = [0, 0, 0, 0]
	var carry = 0

	for out_index in range(3, -1, -1):
		for b_index in range(out_index, 4):
			var aIndex = 3 - (b_index - out_index)
			carry += a[aIndex] * b[b_index]

		carry += c[out_index];

		out[out_index] = int(carry) & 0xFFFF;
		carry = int(carry) >> 16
		if carry < 0:
			carry = int(carry) & 0x0000FFFF

	return out


func next_frame(p_seed: Array, frames_to_advance: int = 1):
	const a: Array = [0x5D58, 0x8B65, 0x6C07, 0x8965]
	const c: Array = [0, 0, 0x26, 0x9EC3]
	for i in range(frames_to_advance):
		p_seed = self.multiply_add(p_seed, a, c);
	
	return p_seed

static func generate_seed():
	return [
		floor(randf() *0x10000),
		floor(randf() *0x10000),
		floor(randf() *0x10000),
		floor(randf() *0x10000),
	]
