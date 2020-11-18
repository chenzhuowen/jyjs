<template>
  <div>
    <el-form
      :model="index"
      ref="indexForm"
      label-position="right"
      label-width="80px"
    >
      <el-form-item
        prop="indexCode"
        :rules="[{ required: true, message: '指标编号不能为空' }]"
        label="指标编号"
      >
        <el-input
          :readonly="isReadOnly || status == 'EDIT'"
          v-model="index.indexCode"
          placeholder="指标编号"
        ></el-input>
      </el-form-item>
      <el-form-item
        prop="indexName"
        :rules="[{ required: true, message: '指标名称不能为空' }]"
        label="指标名称"
      >
        <el-input
          :readonly="isReadOnly"
          v-model="index.indexName"
          placeholder="指标名称"
        ></el-input>
      </el-form-item>
      <el-form-item
        prop="workMatters"
        :rules="[{ required: true, message: '工作事项不能为空' }]"
        label="工作事项"
      >
        <el-input
          :readonly="isReadOnly"
          v-model="index.workMatters"
          placeholder="工作事项"
        ></el-input>
      </el-form-item>
      <el-form-item
        prop="indexDescription"
        :rules="[{ required: true, message: '指标说明不能为空' }]"
        label="指标说明"
      >
        <el-input
          v-model="index.indexDescription"
          :readonly="isReadOnly"
          placeholder="指标说明"
        ></el-input>
      </el-form-item>
      <el-form-item v-if="!isReadOnly">
        <el-button @click="save">保存</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import { queryIndexByCode, addIndex, updateIndex } from "@api/indexLibrary";

export default {
  props: {
    p_status: String,
    p_indexCode: String,
  },
  data() {
    return {
      status,
      index: {
        indexCode: "",
        indexName: "",
        workMatters: "",
        indexDescription: "",
      },
    };
  },
  mounted: function () {
    console.log(this.p_indexCode);
    console.log(this.p_status);
    this.status = this.p_status;
    if (this.p_indexCode != "") {
      this.query(this.p_indexCode);
    }
  },
  methods: {
    query(indexCode) {
      queryIndexByCode(indexCode)
        .then((Response) => {
          console.log(Response);
          this.index = Response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    save() {
      this.$refs["indexForm"].validate((valid) => {
        if (valid) {
          if (this.status == "ADD") {
            addIndex(this.index)
              .then((Response) => {
                if (Response.data == 1) {
                  this.status = "EDIT";
                  this.query(this.index.indexCode);
                  this.$message("保存成功!");
                } else {
                  this.$message("保存失败!");
                }
              })
              .catch((error) => {
                this.$message("保存失败！失败原因：" + error);
              });
          } else if (this.status == "EDIT") {
            updateIndex(this.index)
              .then((Response) => {
                if (Response.data == 1) {
                  this.$message("更新成功！");
                } else {
                  this.$message("更新失败!");
                }
              })
              .catch((error) => {
                this.$message("更新失败！失败原因：" + error);
              });
          }
        }
      });
    },
  },
  computed: {
    isReadOnly: function () {
      if (this.status == "READ") {
        return true;
      } else {
        return false;
      }
    },
  },
};
</script>