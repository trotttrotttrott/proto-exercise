Cuba.define do
  on get do
    on "hello" do
      res.headers["Content-Type"] = "application/json; charset=utf-8"
      res.write({ message: "Hello from ruby-application" }.to_json)
    end
    on root do
      res.redirect "/hello"
    end
  end
end
