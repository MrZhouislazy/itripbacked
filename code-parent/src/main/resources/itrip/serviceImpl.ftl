package cn.${package}.service.impl;
import cn.${package}.mapper.${table.className}Mapper;
import cn.${package}.model.${table.className};
import cn.${package}.service.${table.className}Service;
import cn.itrip.utils.common.EmptyUtils;
import cn.itrip.utils.common.Page;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import cn.itrip.utils.common.Constants;
@Service("${lowerClassName}Service")
public class ${table.className}ServiceImpl implements ${table.className}Service {

    @Resource
    private ${table.className}Mapper ${lowerClassName}Mapper;

    @Override
    public ${table.className} get${table.className}ById(Long id)throws Exception{
        return ${lowerClassName}Mapper.get${table.className}ById(id);
    }

    @Override
    public List<${table.className}>	get${table.className}ListByMap(Map<String,Object> param)throws Exception{
        return ${lowerClassName}Mapper.get${table.className}ListByMap(param);
    }

    @Override
    public Integer get${table.className}CountByMap(Map<String,Object> param)throws Exception{
        return ${lowerClassName}Mapper.get${table.className}CountByMap(param);
    }

    @Override
    public Integer itriptxAdd${table.className}(${table.className} ${lowerClassName})throws Exception{
            ${lowerClassName}.setCreationDate(new Date());
            return ${lowerClassName}Mapper.insert${table.className}(${lowerClassName});
    }

    @Override
    public Integer itriptxModify${table.className}(${table.className} ${lowerClassName})throws Exception{
        ${lowerClassName}.setModifyDate(new Date());
        return ${lowerClassName}Mapper.update${table.className}(${lowerClassName});
    }

    @Override
    public Integer itriptxDelete${table.className}ById(Long id)throws Exception{
        return ${lowerClassName}Mapper.delete${table.className}ById(id);
    }

    @Override
    public Page<${table.className}> query${table.className}PageByMap(Map<String,Object> param,Integer pageNo,Integer pageSize)throws Exception{
        Integer total = ${lowerClassName}Mapper.get${table.className}CountByMap(param);
        pageNo = EmptyUtils.isEmpty(pageNo) ? Constants.DEFAULT_PAGE_NO : pageNo;
        pageSize = EmptyUtils.isEmpty(pageSize) ? Constants.DEFAULT_PAGE_SIZE : pageSize;
        Page page = new Page(pageNo, pageSize, total);
        param.put("beginPos", page.getBeginPos());
        param.put("pageSize", page.getPageSize());
        List<${table.className}> ${lowerClassName}List = ${lowerClassName}Mapper.get${table.className}ListByMap(param);
        page.setRows(${lowerClassName}List);
        return page;
    }

}
