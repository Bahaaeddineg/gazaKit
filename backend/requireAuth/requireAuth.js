const jwt = require("jsonwebtoken");
const User = require("../Models/userModel");
const requireAuth = async (req, res, next) => {
  const { authorization } = req.headers;
  if (!authorization) {
    return res.status(401).json({ error: "Authorization is required" });
  }
  const token = authorization.split(" ")[1]; //Bearer eyJhbGciOIkpXVCJ9.eyJfaWQiOiI2NTIwNH0.7FpaFQIZj96w
  try {
    const { _id } = jwt.verify(token, process.env.SECRET);
    req.user = await User.findOne({ _id });
    next();
  } catch (error) {
    res.json({ error: error.message });
  }
};

module.exports = {
  requireAuth,
};
