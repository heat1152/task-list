package models;

import java.util.ArrayList;
import java.util.List;

public class Validator {

    public static List<String> validate(Task t){
        List<String> errors = new ArrayList<String>();

        String content_error = _validateContent(t.getContent());
        if(!content_error.equals("")){
            errors.add(content_error);

        }
        return errors;
    }

    private static String _validateContent(String content){
        if(content == null||content.equals("")){
            return "入力内容がありません";
        }
        return "";
    }

}
