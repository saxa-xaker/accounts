package ru.rcaltd.account.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import ru.rcaltd.account.model.User;
import ru.rcaltd.account.repository.RoleRepository;
import ru.rcaltd.account.repository.UserRepository;

import java.util.HashSet;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(new HashSet<>(roleRepository.findAll()));
        userRepository.save(user);
    }


    public void read() {
        User user = new User();
        user.getUsername();
        user.getPassword();

    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
