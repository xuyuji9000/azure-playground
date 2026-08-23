# Bicep Test 示例

要创建并运行一个简单的 Bicep 测试，需要启用 `testFramework` 和 `assertions` 实验性功能，在模块中定义断言，并在测试文件中创建测试块。

## 1. 启用实验性功能

`bicepconfig.json` 文件用于启用所需的功能：

```json
{
  "experimentalFeaturesEnabled": {
    "testFramework": true,
    "assertions": true
  }
}
```

## 2. 带有断言（Assertions）的模块

`main.bicep` 文件中包含我们要测试的逻辑。注意底部的 `assert` 语句，它用于验证逻辑是否符合预期：

```bicep
param name string

var greeting = 'Hello ${name}'
output greetingOut string = greeting

// 断言语句验证问候语格式是否严格一致
assert isHelloWorld = greeting == 'Hello World'
```

## 3. 测试文件

`test.bicep` 文件引用了模块并传入了测试用例：

```bicep
test passingTest 'main.bicep' = {
  params: {
    name: 'World'
  }
}

test failingTest 'main.bicep' = {
  params: {
    name: 'Alice'
  }
}
```

## 4. 运行测试

使用 `bicep test` 命令来评估测试场景：

```bash
bicep test test.bicep
```

**预期输出：**

```
[✓] Evaluation passingTest Passed!
[✗] Evaluation failingTest Failed at 1 / 1 assertions!
	[✗] Assertion isHelloWorld failed!
Evaluation Summary: Failure!
Total: 2 - Success: 1 - Skipped: 0 - Failed: 1
```
