Return-Path: <blinux-list+bncBCM2V5WE3MDBBWGWROYAMGQEPTU7WJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 838DE88C731
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 16:35:54 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-69622e04585sf86818736d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 08:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711467353; cv=pass;
        d=google.com; s=arc-20160816;
        b=rED5warl7NAAIDqipeLGi8Qhv7NR49829jup1k4FZ3viHLAKWKZh5oDAMbyLEU9tYy
         uzTAK7judH7PvSQwKeCjFMlCs7QGDqGnYpGaSg5wn1qmX8Ou1PKDWyAknYOOjoQucz0W
         FIPxmtiAZLRJqKFQFqnSOyFvCiRRkeYoZWb46mQjJ2BOlgFRpMUbA2dZ34RYgJmI3L4M
         pyn3vhqhCDIWkIoITBVhm5voqltVf9/8vO6dv+yIodbe3ZemQoN5xyz7sNmVabDktH8a
         xz2Z0J3Fx2O/i6C/CUF9QGDgH8ar8x1fCzaf2jtKf8Df4Y9XOS8cKGUXAy2dz5qzrJxi
         BALw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=U5ptOnNOR5jQc+J102BSfXC8RdQfn1Yh7/D+NKCtMZg=;
        fh=vIFhwa+uVgYRJUGcozLk6Yym1DY0u+LwYA8jnaxkuvo=;
        b=0nrH9G1lC9ps5NjeKVYBRHW0iP93ZTmGZUfPeOYkXB2WcxtATYBe8aslfBmojEmndW
         wgijBZGZSet1XRm44/aaNo45yoh4FDY/xM5qsVGAwrqA/DAETEXIuKX9TfZdqdtrWQsn
         u9seb33TYey1mbBFlPwbcnPcJnrF/s5eJ3scoSCfwq6zhz5F8fp0dMijkRHsERWcMwQ/
         fc7IkZSsbFqbq99YasqrBOH43fLNJ+CobhuzJ0LRcA2882wmp3r8BNKt4zM6Cn4SD3JZ
         ehJfGOsymJAsY3E6PY34Xax9mwU+iAjVQk6Nute0RrweKn7FirbbIM//gkjjkDyCmuME
         brfQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711467353; x=1712072153;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U5ptOnNOR5jQc+J102BSfXC8RdQfn1Yh7/D+NKCtMZg=;
        b=axESpHmgylfWJ8yQmc1b2I6KxIE/cL5I+K14PG3bnSXVWTH1Yl1qvLPUkr4rR6nOjH
         ounqsFSetUGlq+rJHoulYKSJxY1Ub+hc9QhlJjzcS+ZDjqHuiOuvtqqizHR95RMEShV0
         BxTqOZDyK4mbYunUaE5+XvwSJrYGGPfEkxSYwpbjdWV6MN4e5+MSwhL5XRb7WUttWiYV
         OoDcsvojPnVdoI1oWab809MVYDJXvF5CmFlY+4oyQoCnqIL9RqMb/wct4WPs11z1Yxwo
         eQ7ZdQwvYg/2gMvgtbPnePJqiCFjZMtv58zyvFVYEt7l4OeerCQkrAKNXfNSeUFquBmQ
         o84g==
X-Forwarded-Encrypted: i=2; AJvYcCVGFgqfmQQr6BX6UCVl16g8fFj0vAlgqBvyaS4A00FeB36rN0POWw8JZ2Ifb2LyK9px/suaYaVQs2t1DsX87GLWcB+4RiO35dAO
X-Gm-Message-State: AOJu0YwtVnkUrOt2BF/aGwd2bYl5l+VckBPut3ZKXPLXuDHpbl4GZTCe
	W91rdkaD9q1Kzw8HynY1ejlikQZz6tl0gNRTY6Vejj+3ucr9BbXmhIJPpj177zc=
X-Google-Smtp-Source: AGHT+IHSiDh00qa4S9RNG6ogA/F9zQgpT+9mD+PPdFWX3TLpcXOXsNeRPe54mbYtOMyXtX9Eqi7rXQ==
X-Received: by 2002:a05:6214:490:b0:696:8e65:b6a2 with SMTP id pt16-20020a056214049000b006968e65b6a2mr6581947qvb.4.1711467353185;
        Tue, 26 Mar 2024 08:35:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ceb:0:b0:690:c950:c414 with SMTP id iv11-20020ad45ceb000000b00690c950c414ls8221086qvb.2.-pod-prod-09-us;
 Tue, 26 Mar 2024 08:35:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWuvxdGkM6EWh0SUSUrkBqp0sPNDCcw6pLDvW0oyxTjlUx9lEleUweUw2FNy9wBtzuZd0fqWBhJwedIM+cYTi74MGFYpREABU8JjT1a
X-Received: by 2002:a0c:c343:0:b0:696:8f3a:ecaa with SMTP id j3-20020a0cc343000000b006968f3aecaamr4516800qvi.53.1711467351924;
        Tue, 26 Mar 2024 08:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711467351; cv=none;
        d=google.com; s=arc-20160816;
        b=mHimtDdrKagEkTAuVQQAgzfaXTnCbAoyk/yjbSEfjlu9bNkMueYxGYyWwEcSnakvVr
         wYsRH8UJoIhba73PfsulERJpOoPNN06FIRN+/ERYTvUHUhgBaDACR1UWjok4BbtpCqvh
         /TGibvEWB9/BJOQZ6IBBswtxXSQRFQi5bEVR5TBJ9ndHwVlZslGlW/hzsouPYStO7jDZ
         PdJj1FZOndHICri8tWtll847GxTNldSJJWeF2LRqb5ywmVgT/67YtjjiDVLflCRbrR8l
         TGhyBKwnWxNMvOac2qNOC+sIJyU7Eok3dUVPp2iILf9ka81+/i0zPFPRtvdaYIp9hj2Q
         n4BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=UoPPcAIgdHzA1vax7Ykycc2Ud0rliIOxPE4jX5IR9OM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HYdUa9op4kSGMI0idJh2whSeRY+mWOPRoUaPcX8wCrz0DHB6C2Egxm1GONqC6zXAxi
         ln/DrN7+wgYiAQcG+jfw/JnsIM3y7gl/0fji9KjtYHj80CBX+U8RVoV8k+pUKxAu2il/
         S1B9QL0SrHdeC1rJx1cNraTpLz4lvS+HHOZEBhPX1V5jUXepANYhEvb4k3bxqHBzJnM6
         pV7ZKVYGUAKU1hsJhM6jk5YeetpMYVOEd2zA0TtQ6ePKpmnpYok+7LsubIk8PVh40SOz
         maLgQUqu/lHhAQlGVGDxCFbA2xHSmkmrEib0bP6HfLBhSqNFHqXyYq8BEjVLMeoul17l
         6hPw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id z12-20020a056214040c00b006903099b236si10047359qvx.504.2024.03.26.08.35.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 08:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-90-wePbUujBO4i98N9ErA49Fw-1; Tue, 26 Mar 2024 11:35:50 -0400
X-MC-Unique: wePbUujBO4i98N9ErA49Fw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFD5D8007BB
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 15:35:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id BD0432166B31; Tue, 26 Mar 2024 15:35:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8467D2166B32
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 15:35:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1943E382C464
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 15:35:49 +0000 (UTC)
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-416-h9Wyh7oLNQ29qaPILE23ww-1; Tue, 26 Mar 2024 11:35:46 -0400
X-MC-Unique: h9Wyh7oLNQ29qaPILE23ww-1
Date: Tue, 26 Mar 2024 15:35:30 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
Message-ID: <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com>
In-Reply-To: <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hello,
so, the situation is like this. After Reddit API changes, now, the API=20
still exists, but is throttled, I believe 10 requests per minute without=20
API key and 100 with API key, or somewhere around those numbers, see the=20
Reddit API sites for exact numbers.
This is why mainstream Teddit instances that did not use an API key were=20
throwing 429 quite often. Not always, but often.
And that's also the reason I like i.opnxng.com, it's an inconspicuous=20
domain that almost nobody has been using, so getting 429 there has=20
always been pretty rare.
However, it's not the only problem. Reddit also from time to time=20
decides to arbitrarily block a Teddit instance after it had been used=20
for a while, that's when you get the 403 errors. But this is actually a=20
temporary thing that's IP dependent, so if you change either the=20
address/instance or just wait few days, it will start working again.
If you setup your own localhost instance, which is super-easy to do if=20
you have docker, then you can just use some kind of proxy or whatever=20
and it's rather easy to workaround.
Eventually, Teddit also has an active Reddit API key. When it's used,=20
the instance won't get blocked. Originally, this key had been used by=20
the main teddit.net website, and was discouraged from being used for=20
production purposes by other people, who were supposed to generate their=20
own keys instead.
However, I'm not quite sure if this is still possible to do, it used to=20
be a mostly automated process, now you need to apply for an API key and=20
get approved for it like an app developer according to the docs, what=20
doesn't really make sense as fighting third-party apps was the reason of=20
halting the API in the first place.
I make use of the API key occassionally, when opnxng gets blocked and=20
I'm lazy to setup a proxy. The main Teddit website is down for quite a=20
some time by now, so it's unlikely that anyone uses it anyway.
However, I always get back to opnxng as soon as it's available again in=20
order to avoid overusing the key and getting it cancelled, that would be=20
a pity.

So, yes, the situation with teddit, libreddit (l.opnxng.com btw) and=20
other Reddit frontends is a bit complicated, but they still work, so I'm=20
not complaining. :)

Best regards

Rastislav

D=C5=88a 26. 3. 2024 o 8:43 Jace Kattalakkis nap=C3=ADsal(a):
> Every time I try using Teddit I get a 403 or 429 though, is there any
> easy way around this, or?
>
>
>
> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>> Hello,
>> for reading, I'm personally using the Teddit frontend, which should work
>> well in LYNX as well:
>> https://codeberg.org/teddit/teddit
>>
>> My favourite instance is thisone (since it's usually free):
>> https://i.opnxng.com
>>
>> Best regards
>>
>> Rastislav
>>
>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>>> Hi All,
>>> previously, reddit worked well,  at least for reading posts, in both ly=
nx
>>> the cat and links the chain.
>>> Now, even elinks produces a blocked error message, my guess is that the
>>> reddit community is not aware of Linux and these tools for access.Wonde=
red
>>> though if another tool already exists that might be a part of a shell
>>> infrastructure?
>>> With appreciation,
>>> Karen
>>>
>>>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

