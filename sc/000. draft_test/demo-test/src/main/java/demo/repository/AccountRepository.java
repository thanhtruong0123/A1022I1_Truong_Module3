package demo.repository;

import demo.bean.Account;
import demo.bean.User;

import java.util.List;

public interface AccountRepository {
    void addAccount(Account account);
    void deleteAccount(int id);
    void editAccount(int id);
    User showAccount(int id);
    List<Account> showListAccount();
}
