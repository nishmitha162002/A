# Create an empty data frame
inventory_data <- data.frame(
  Item = character(),
  Quantity = numeric(),
  stringsAsFactors = FALSE
)

# Add an item to the inventory
add_item <- function(item, quantity) {
  inventory_data <<- rbind(inventory_data, data.frame(
    Item = item,
    Quantity = quantity,
    stringsAsFactors = FALSE
  ))
  cat("Item added to inventory.\n")
}

# Update the quantity of an item
update_quantity <- function(item, new_quantity) {
  if (item %in% inventory_data$Item) {
    inventory_data$Quantity[inventory_data$Item == item] <<- new_quantity
    cat("Quantity updated.\n")
  } else {
    cat("Item not found in inventory.\n")
  }
}

# Display the inventory
display_inventory <- function() {
  cat("Inventory Items and Quantities:\n")
  print(inventory_data)
}

# User interface
repeat {
  choice <- readline("\n1. Add Item\n2. Update Quantity\n3. Display Inventory\n4. Exit\n")
  choice <- as.integer(choice)
  
  if (is.na(choice) || choice < 1 || choice > 4) {
    cat("Invalid choice. Please enter a number between 1 and 4.\n")
    next
  }
  
  if (choice == 1) {
    item <- readline("Enter item name: ")
    quantity <- as.numeric(readline("Enter quantity: "))
    if (is.na(quantity) || quantity < 0) {
      cat("Invalid quantity. Please enter a positive numeric value.\n")
    } else {
      add_item(item, quantity)
    }
  } else if (choice == 2) {
    item <- readline("Enter item name: ")
    new_quantity <- as.numeric(readline("Enter new quantity: "))
    if (is.na(new_quantity) || new_quantity < 0) {
      cat("Invalid quantity. Please enter a positive numeric value.\n")
    } else {
      update_quantity(item, new_quantity)
    }
  } else if (choice == 3) {
    display_inventory()
  } else if (choice == 4) {
    cat("Goodbye!\n")
    break
  }
}

