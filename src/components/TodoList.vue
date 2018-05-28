<template>
    <section>
        <transition-group name="list" tag="ul"> <!-- Animation 적용 시 쓰는 tag-->
            <li v-for="(todoItem, index) in items" v-bind:key="todoItem" class="shadow">
                <i class="checkBtn fa fa-check" aria-hidden="true"></i>
                 {{ todoItem }} 
                <span class="removeBtn" type="button" @click="removeTodo(todoItem, index)">
                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                </span>
            </li>
        </transition-group>
    </section>
</template>

<script>
export default {
    props: ['items'],
    methods: {
        removeTodo(todoItem, index) {
            this.$emit("itemRemoved", todoItem, index)
        }
    }
}
</script>

<style scoped>

.list-item {
    display: inline-block;
    margin-right: 10px;
}
.list-move {
    transition: transform 0.5s;
}
.list-enter-active, .list-leave-active {
    transition: all 0.5s;
}
.list-enter, .list-leave-to {
    opacity: 0;
    transform: translateY(30px);
}

ul {
    list-style-type: none;
    padding-left: 0px;
    margin-top: 0;
    text-align: left;
}
li {
    display: flex; /* 왼쪽부터 오른쪽으로 자식 노드를 정렬해주는 듯... */
    min-height: 50px;
    height: 50px;
    line-height: 50px;
    margin: 0.5rem 0;
    padding: 0 0.9rem;
    background: white;
    border-radius: 5px;
    font-family: Nanum Gothic;
}
.checkBtn {
    line-height: 45px;
    color: #62acde;
    margin-right: 5px;
}
.removeBtn {
    margin-left: auto;
    color: #de4343;
}
</style>