<template>
  <div>
    <el-form>
      <el-form-item label="指标编号：">
        <el-input
          v-model="queryCondition.indexCode"
          placeholder="指标编号"
        ></el-input>
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
      <el-table-column prop="workMatters" label="工作事项"></el-table-column>
      <el-table-column
        prop="indexDescription"
        label="指标说明"
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

    <el-dialog
      v-if="dialogIndex.dialogIndexVisible"
      :visible.sync="dialogIndex.dialogIndexVisible"
      @close="dialogClose"
    >
      <Index
        :p_indexCode="dialogIndex.indexCode"
        :p_status="dialogIndex.status"
      />
    </el-dialog>
  </div>
</template>

<script>
import {
  queryIndexByCode,
  queryAllIndex,
  deleteIndexByCode,
} from "@api/indexLibrary";

import Index from "@/components/Index/Index.vue";

export default {
  components: {
    Index,
  },
  data() {
    return {
      indexLibrary: [],
      queryCondition: {
        indexCode: "",
      },
      dialogIndex: {
        indexCode: "",
        status: "",
        dialogIndexVisible: false,
      },
      loading: false,
    };
  },
  methods: {
    query() {
      this.loading = true;
      if (this.queryCondition.indexCode == "") {
        queryAllIndex()
          .then((Response) => {
            this.indexLibrary = [];
            this.indexLibrary = Response.data;
            this.loading = false;
          })
          .catch((error) => {
            this.$message("查询失败！失败原因为：" + error);
            this.loading = false;
          });
      } else {
        queryIndexByCode(this.queryCondition.indexCode)
          .then((Response) => {
            this.indexLibrary = [];
            if (Response.data !='') {
              this.indexLibrary.push(Response.data);
            }
            this.loading = false;
          })
          .catch((error) => {
            this.$message("查询失败！失败原因为：" + error);
            this.loading = false;
          });
      }
    },
    reset() {
      this.queryCondition.indexCode = "";
    },
    addIndex() {
      this.$message("addIndex");
      this.dialogIndex.indexCode = "";
      this.dialogIndex.status = "ADD";
      this.dialogIndex.dialogIndexVisible = true;
    },
    readIndexDetail(index) {
      this.$message("readIndexDetail");
      this.dialogIndex.indexCode = index.indexCode;
      this.dialogIndex.status = "READ";
      this.dialogIndex.dialogIndexVisible = true;
    },
    editIndex(index) {
      this.$message("editIndex");
      this.dialogIndex.indexCode = index.indexCode;
      this.dialogIndex.status = "EDIT";
      this.dialogIndex.dialogIndexVisible = true;
    },
    deleteIndex(index) {
      this.$message("deleteIndex");
      this.$confirm("此操作将永久删除该指标，是否继续？", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          deleteIndexByCode(index.indexCode)
            .then((Response) => {
              if (Response.data == 1) {
                this.$message("删除成功！");
                this.query();
              } else {
                this.$message("删除失败！");
              }
            })
            .catch((error) => {
              this.$message("删除失败！失败原因为：" + error);
            });
        })
        .catch(() => {
          this.$message("已取消删除！");
        });
    },
    dialogClose() {
      if (this.dialogIndex.status != "READ") {
        this.query();
      }
    },
  },
};
</script>