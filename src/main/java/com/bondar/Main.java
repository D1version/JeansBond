package com.bondar;

import java.io.IOException;

/**
 * Created by ���� on 20.04.2016.
 */
public class Main {
    public static void main(String[] args) {
        String userName = "jeansbond";
        String password = "ASDqwe123";
        String DBname = "jeansbond";
        int processComplete = 0;
        String executeCmd = "mysqldump -u "+userName+" -p"+password+" "+DBname+" -r D:\\backup.sql";
        try {
            Process runtimeProcess = Runtime.getRuntime().exec(executeCmd);
            processComplete = runtimeProcess.waitFor();
        } catch (InterruptedException e) {
            processComplete = 1;
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
