const mongoose = require('mongoose');
require('dotenv').config();

const connectDB = async () => {
  try {
    const uri = process.env.MONGODB_URI;
    if (!uri) {
      throw new Error('MONGODB_URI is not defined in .env');
    }

    await mongoose.connect(uri); // không cần options cũ nữa
    console.log('MongoDB connected');
  } catch (error) {
    console.error('Failed to connect to MongoDB', error);
    process.exit(1); // tùy, có thể bỏ nếu không muốn thoát app
  }
};

module.exports = connectDB;
