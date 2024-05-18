resource "aws_ecs_task_definition" "nodejs-app-task-definition" {
  family                    = "my-first-task"
  container_definitions     = <<DEFINITION
[
  {
    "taskDefinitionArn": "arn:aws:ecs:ap-south-1:229132727554:task-definition/nodejs-app-task-definition:1",
    "containerDefinitions": [
        {
            "name": "nodejs-app",
            "image": "229132727554.dkr.ecr.ap-south-1.amazonaws.com/nodejs-app:latest",
            "cpu": 0,
            "portMappings": [
                {
                    "name": "nodejs-app-5000",
                    "containerPort": 5000,
                    "hostPort": 5000,
                    "protocol": "tcp",
                    "appProtocol": "http"
                }
            ],
            "essential": true,
            "environment": [],
            "environmentFiles": [],
            "mountPoints": [],
            "volumesFrom": [],
            "ulimits": [],
            "logConfiguration": {
                "logDriver": "awslogs",
                "options": {
                    "awslogs-create-group": "true",
                    "awslogs-group": "/ecs/nodejs-app-task-definition",
                    "awslogs-region": "ap-south-1",
                    "awslogs-stream-prefix": "ecs"
                },
                "secretOptions": []
            },
            "systemControls": []
        }
    ],
    "family": "nodejs-app-task-definition",
    "taskRoleArn": "arn:aws:iam::229132727554:role/ecsTaskExecutionRole",
    "executionRoleArn": "arn:aws:iam::229132727554:role/ecsTaskExecutionRole",
    "networkMode": "awsvpc",
    "revision": 1,
    "volumes": [],
    "status": "ACTIVE",
    "requiresAttributes": [
        {
            "name": "com.amazonaws.ecs.capability.logging-driver.awslogs"
        },
        {
            "name": "ecs.capability.execution-role-awslogs"
        },
        {
            "name": "com.amazonaws.ecs.capability.ecr-auth"
        },
        {
            "name": "com.amazonaws.ecs.capability.docker-remote-api.1.19"
        },
        {
            "name": "com.amazonaws.ecs.capability.task-iam-role"
        },
        {
            "name": "ecs.capability.execution-role-ecr-pull"
        },
        {
            "name": "com.amazonaws.ecs.capability.docker-remote-api.1.18"
        },
        {
            "name": "ecs.capability.task-eni"
        },
        {
            "name": "com.amazonaws.ecs.capability.docker-remote-api.1.29"
        }
    ],
    "placementConstraints": [],
    "compatibilities": [
        "EC2",
        "FARGATE"
    ],
    "requiresCompatibilities": [
        "FARGATE"
    ],
    "cpu": "1024",
    "memory": "3072",
    "runtimePlatform": {
        "cpuArchitecture": "X86_64",
        "operatingSystemFamily": "LINUX"
    },
    "registeredAt": "2024-05-18T04:16:04.196Z",
    "registeredBy": "arn:aws:iam::229132727554:root",
    "tags": []
}
]
  DEFINITION
 
}