package com.example.activiti.activiti.service.impl;

import com.example.activiti.activiti.entity.Users;
import com.example.activiti.activiti.mapper.UsersMapper;
import com.example.activiti.activiti.service.IUsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author wfm
 * @since 2020-07-08
 */
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements IUsersService {

}
