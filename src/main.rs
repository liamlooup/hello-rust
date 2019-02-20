fn main() {
    println!("Hello, world!");
    let server = tiny_http::Server::http("0.0.0.0:5099").unwrap();

    loop {
        let request = match server.recv() {
            Ok(rq) => rq,
            Err(e) => { println!("error: {}", e); break }
        };

        let response = tiny_http::Response::empty(200);
        let _ = request.respond(response);
    }
}
