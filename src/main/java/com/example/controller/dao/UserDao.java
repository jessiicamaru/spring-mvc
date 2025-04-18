package com.example.controller.dao;


import com.example.controller.entities.User;
import com.example.controller.utils.DBUtils;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    // ✅ Thêm người dùng vào CSDL
    public void insertUser(User user) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        try (Connection conn = DBUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            stmt.executeUpdate();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }



    // ✅ Xóa người dùng theo ID
    public void deleteUserById(int id) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM users WHERE id = ?";
        try (Connection conn = DBUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // ✅ Cập nhật thông tin người dùng
    public void updateUser(User user) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?";
        try (Connection conn = DBUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setInt(4, user.getId());

            stmt.executeUpdate();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // ✅ Lấy người dùng theo ID
    public User getUserById(int id) throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM users WHERE id = ?";
        try (Connection conn = DBUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new User(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password")
                );
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    // ✅ Lấy danh sách tất cả người dùng
    public List<User> getAllUsers() throws SQLException, ClassNotFoundException {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT * FROM users";

        try (Connection conn = DBUtils.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                userList.add(new User(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("email"),
                        rs.getString("password")
                ));
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return userList;
    }

    public void LoginCheck() {

    }
}
