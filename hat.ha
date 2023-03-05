use fmt;
use io;
use os;
use strings;

export fn main() void = {
	let file = os::open(os::args[1])!;
	let lines = io::drain(file)!;
	let lines = strings::fromutf8(lines)!;
	let lines = strings::split(lines, "\n");
	show(lines);
};

fn show(lines: []str) void = {
	for (let i = 0z; i < len(lines); i += 1) {
		fmt::printfln("{}", lines[i])!;	
	};
};