package lux_dev.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // Spring Data JPA provides basic CRUD operations out-of-the-box
    // You can add custom query methods here if needed
    // For example:
    // List<User> findByEmail(String email);
}