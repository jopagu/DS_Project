


fn main(){
    println!("{}", my_sqrt(123.123));

}

fn my_fabs(x : f64) -> f64{
    if x < 0.0{
        -x
    }else{
        x
    }
}

fn my_sqrt(val:f64) -> f64{
    let mut x = val/10.0;
    let min_tol = 0.00001;
    let mut flag = false;

    if val == 0.0{
        0.0
    }else{
        for _i in 1..20{
            if !flag{
                let  dx = (val - x.powi(2)) / (2.0 * x);
                x += dx;
                let diff = val - x.powi(2);
                flag = my_fabs(diff) <= min_tol;

            }
        }
        x
    }
    
}