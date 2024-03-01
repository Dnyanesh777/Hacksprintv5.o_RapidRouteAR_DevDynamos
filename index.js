import express from "express";
import bodyParser from "body-parser";

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

app.get("/", (req, res) => {
    res.render("index.ejs", {posts: posts});
});


// Create Post Page
app.get("/create", (req, res) => {
    res.render("create.ejs");
});


// Save Post
app.post("/upload", (req, res) => {
    let title = req.body["title"];
    let content = req.body["blogText"];
    
    addPost(title, content);
    res.redirect("/");
});

app.listen(port,()=>{
    console.log(`Listening on Port ${port}`);
});
