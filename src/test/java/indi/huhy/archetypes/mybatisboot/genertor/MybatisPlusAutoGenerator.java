package indi.huhy.archetypes.mybatisboot.genertor;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

public class MybatisPlusAutoGenerator {

    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8&useSSL=false";
        FastAutoGenerator.create(url, "huhy", "1q2w3e4r")
                .globalConfig(builder -> {
                    builder.author("huhy")
                            .fileOverride()
                            .outputDir("C:\\t-archetypes\\mybatisboot\\src\\main\\java");
                })
                .packageConfig(builder -> {
                    builder.parent("indi.huhy.archetypes.mybatisboot");
                })
                .strategyConfig(builder -> {
                    builder.addInclude("config")
                            .addTablePrefix("t_", "c_");
                })
                .templateEngine(new FreemarkerTemplateEngine())
                .execute();
    }
}
