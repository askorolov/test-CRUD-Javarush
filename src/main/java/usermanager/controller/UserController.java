package usermanager.controller;


import org.springframework.web.bind.annotation.*;
import usermanager.model.User;
import usermanager.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;




@Controller
public class UserController {
    @Autowired
    private IUserService userService;


    @RequestMapping(value = "users/{page}", method = RequestMethod.GET)
    public String showAllUsers( @PathVariable("page") int page, Model model){
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", userService.listUsers(page-1));
        return "users";
    }

    @RequestMapping(value = "findUserById/", method = RequestMethod.POST)
    public String findUserById(@RequestParam("id") int id, Model model){
        model.addAttribute("user", userService.getUserById(id));
        return "findUserById";
    }

    @RequestMapping(value = "findUserByName/", method = RequestMethod.POST)
    public String findUserByName(@RequestParam("name") String name, Model model){
       if(this.userService.getUsersByName(name)!=null)
        model.addAttribute("usersByName",userService.getUsersByName(name));
        return "findUserByName";

    }
    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
        userService.removeUser(id);
        return "redirect:/users/1";
    }

    @RequestMapping("edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getUserById(id));
        model.addAttribute("listUsers", userService.listUsers(1));
        return "users";
    }
    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user){

            this.userService.addUser(user);


        return "redirect:/users/1";
    }
}
