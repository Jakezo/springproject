package com.FGroup.ShoppingMall.command.product;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface ProductCommand {

	public void execute(SqlSession sqlSession, Model model);

}
