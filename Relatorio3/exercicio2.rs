fn preenche_arr(arr: &mut [i32; 10], x: i32) {
    for i in 0..arr.len() {
        arr[i] = i as i32 * x;
    }
}

pub fn main() {
    let mut arr = [0; 10];
    
    let valor = 5;
    
    preenche_arr(&mut arr, valor);
    
    println!("Array preenchido:");
    for i in 0..arr.len() {
        println!("arr[{}] = {}", i, arr[i]);
    }
}
