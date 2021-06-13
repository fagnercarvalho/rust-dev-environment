fn main() {
    println!("Hello world again again!");
    println!("Oi amorzinho");
    let test = add2(1, 6);
    println!("{}", test);
    println!("Test!");
    add3();
    add2(2, 3);
    println!("{}", add2(3, 4));
    add2(2, 3);
    let a = "";
    //TODO: test
    println!("{} is empty: {}", a, a.is_empty());
    let b = 'a';
    println!("{} is digit: {}", b, b.is_digit(10));
    let c = '1';
    println!("{} is digit: {}", c, c.is_digit(10));
}

fn add2(x: i32, y: i32) -> i32 {
    return x + y;
}

fn add3() {
    println!("test!");
}
