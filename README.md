# Ruboty::BrainDictionary

An Ruboty Handler + Actions to learn your key-value into brain.

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

## :arrow_down: Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-brain_dictionary'
```

And then execute:

    $ bundle

## :cl: Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[learn](#learn)|/learn\s\{1\}?(?&lt;key&gt;.+)?\s\{1\}(?&lt;value&gt;.+)?\z/|learn key-value|
|[remember](#remember)|/remember\s\{0,1\}?(?&lt;key&gt;.+)?\z/|remember your ruboty brain_dictionary that match your keys.|
|[dict](#dict)|/dict\s\{1\}?(?&lt;key&gt;.+)?\z/|show your value from brain.|
|[forget](#forget)|/forget\s\{0,1\}?(?&lt;key&gt;.+)?\z/|forget your ruboty brain_dictionary that match your key.|

## :scroll: Usage
### learn
* learn key-value

~~~
>ruboty learn tu ka
>ruboty remember tu
tu,ka
~~~

### remember
* remember your ruboty brain_dictionary that match with your keys.

~~~
>ruboty learn hoge hoge-value
>ruboty learn hige hige-value
>ruboty learn hage hage-value
>ruboty learn hoo bar

# remember all
>ruboty remember
hage,hage-value
hige,hige-value
hoge,hoge-value
hoo,bar

# remember match keys
>ruboty remember ge
hage,hage-value
hige,hige-value
hoge,hoge-value

# remember match key
>ruboty remember hoo
hoo,bar
~~~

### dict

~~~
>ruboty learn hoge hoge-value
>ruboty learn hige hige-value
>ruboty learn hage hage-value
>ruboty learn hoo bar
>dict hoge
hoge-value
>dict hoo
hoo-value
>dict hogea
>
~~~

### forget
* forget your ruboty brain_dictionary that match with your key.

~~~
>ruboty learn hoge hoge-value
>ruboty learn hige hige-value
>ruboty learn hage hage-value
>ruboty learn hoo bar

# remember all
>ruboty remember
hage,hage-value
hige,hige-value
hoge,hoge-value
hoo,bar

# forget hoo & confirm
>ruboty forget hoo
success delete key 'hoo'

>ruboty remember
hage,hage-value
hige,hige-value
hoge,hoge-value

# forget hoo ( not exist )
>ruboty forget hoo
no key 'hoo'
~~~

## :earth_asia: ENV

|Name|Description|
|:--|:--|
|--|--|

## :couple: Dependency

|Name|Description|
|:--|:--|
|--|--|

## :two_men_holding_hands: Contributing :two_women_holding_hands:

1. Fork it ( https://github.com/tbpgr/ruboty-brain_dictionary/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
