<template>
  <div>
    <el-form>
      <el-form-item label="年度">
        <el-date-picker
          v-model="queryCondition.ruleYear"
          type="year"
          placeholder="选择年"
        >
        </el-date-picker>
      </el-form-item>
    </el-form>
    <el-button @click="query">查询</el-button>
    <el-button @click="reset">重置</el-button>
    <el-button @click="addIndex">新增</el-button>
    <el-table
      v-loading="loading"
      :data="indexLibrary"
      height="400"
      :stripe="true"
      :border="true"
      style="width: 100%"
    >
      <el-table-column prop="indexCode" label="指标编号"></el-table-column>
      <el-table-column prop="indexName" label="指标名称"></el-table-column>
      <el-table-column
        prop="completionRateType"
        label="完成率类型"
      ></el-table-column>
      <el-table-column prop="upperLimit" label="上限值"></el-table-column>
      <el-table-column prop="lowerLimit" label="下限值"></el-table-column>
      <el-table-column
        prop="deductionRuleDes"
        label="扣罚规则"
      ></el-table-column>
      <el-table-column fixed="right" label="操作" width="120">
        <template slot-scope="scope">
          <el-button
            @click="readIndexDetail(scope.row)"
            type="text"
            size="small"
            >查看</el-button
          >
          <el-button @click="editIndex(scope.row)" type="text" size="small"
            >编辑</el-button
          >
          <el-button @click="deleteIndex(scope.row)" type="text" size="small"
            >删除</el-button
          >
        </template>
      </el-table-column>
    </el-table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      queryCondition: {
        ruleYear: "2020",
      },
    };
  },
   mounted: function () {
    var curDate=new Date();
    this.queryCondition.ruleYear=curDate;

  },
};
</script>