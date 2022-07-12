import { Knex } from "knex";
import { TableNames } from "../src/constants/tableNames";


export async function up(knex: Knex): Promise<void> {
  knex.schema.createTable(TableNames.user, (table) => {
    table.increments().notNullable();
    table.string('email', 255).notNullable().unique();
  })
  
}


export async function down(knex: Knex): Promise<void> {
}

