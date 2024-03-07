#[macro_use]
extern crate rocket;

#[get("/")]
fn index() -> String {
    "Hello world!".to_string()
}

#[launch]
fn rocket() -> _ {
    let config = rocket::Config {
        // [::]:8080
        address: std::net::Ipv6Addr::UNSPECIFIED.into(),
        port: 8080,
        ..Default::default()
    };
    rocket::build().configure(config).mount("/", routes![index])
}
