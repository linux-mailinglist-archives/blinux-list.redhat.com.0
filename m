Return-Path: <blinux-list+bncBCM2V5WE3MDBBEOCSGYAMGQEWZWUMBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8A288EDBF
	for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 19:10:27 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-69689938f75sf1542066d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 11:10:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711563026; cv=pass;
        d=google.com; s=arc-20160816;
        b=xwzMFiRxng6oJ3Qd/T8DjdG0LZ3ahu0bFetlH0GLxH5vIHfqHDhVs1oje6McLyqU4N
         2O9CfGUpFo64szSCw8E1hDNBDDBlKaJFFcjRi3JAu0/cOQdSTCNztNrXh3ICId7LLrVw
         wg9VSdXEu7K8cPQVn/lj2dsX2MVc9W4fTNBR3+SSLKht93owGLLGXbO9+iM5hb0UBH9j
         zuyEtgA1l+QvIryanRXIFH1M+R/Xr2tIj/EVU9SkF+IoEL2U8hPcVXGcPznHD4BCi5qn
         U08CXBswv9TGCcMS0QEOdiG4dgefhvMb9sPocYVIKHw/H5cKSJiEuQDhYFr6M1iL6TFr
         R3VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=vrmzNOxAzuHbjkLMk6oC5R+HNRaQloS7Wa3X/WLwlys=;
        fh=l8XgfCgTpTezzTeQMkW5nmPlDneXYdvUGF+MemDdCg8=;
        b=qD7raNU5ZxpUpogtNKzUYbAUE0wYLqHzFpQPI+YMhkB35JeiqjDkiEH8PCJvS6HtBc
         6kfvOHb6T0yO+4HVOPeQvNDRP+yRxYyuboZx37JT1C4Vr0w0Kv6ORaJG0cWCFNHru9ah
         KN+avrzM9/CBVdurGxak9RkQ6uU3bUMzm5FTLl3OT//Y7GMNhYTSpRSzuBK6ZUY8Y3Ve
         9p1aptu2cfiotSmixzQSCcYK7BNokw0KRZ9vehzphnAdVrPyiyM1K9UAL6jCD4+syb9T
         rH6AsbVF8MZGPzewLaKvl+M/hmk7mCcXFOEu92zlBVTfkbIY+7mbhoGShZSnvCsc/E4s
         W4eQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.16 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711563026; x=1712167826;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vrmzNOxAzuHbjkLMk6oC5R+HNRaQloS7Wa3X/WLwlys=;
        b=COgms0UFK6L86j4yy4vjDRroyalfpS+/Rk+zb6PSXRGu3bvCHknBmgQBzvY7MhZ89R
         3adP7h7P/viul/oZv/dLB+kpx5E/51LAh//hnqbAKel1yLSrKCwjX1kmKDMEmCd5u7UU
         LUoLke+3XQZUli9ESV7g1hQy33JewdnjpjMeMMNVUkAsQU+gKJk54YeJK+zUcsrLsPyn
         h+v19TiVm9ZLQGrX6x1qgocv4TxeczQYyMxBpxqOcB0WlntYSaccAXgjP4UpQW/Zv+zx
         v/5nlOp2lWxzPIla/XAcnngZJ7R0rcQQxMrLx5d9y4p5CdAu7G/+7BDqeZlYpPMvD8bU
         P9XA==
X-Forwarded-Encrypted: i=2; AJvYcCWjVUf4E/IC8SrLQgfJxt1UNuSgKDnnrZqEAcrQi4QiT6PYbDGJQ9DzuSkqjKG1VkMhF/hEV41UuagZw7KkF6GoyBStPIz1vLrT
X-Gm-Message-State: AOJu0Yz1m+LW71QZv02wOgE78/iQHHyYliRW4RzayRwS70WG5TG1xOuc
	0YkVuZFUpsHoGRUanplfRhW53F6z9reu0I7pjsqQuF2oTKFbqAuP52kqjP5YaN8=
X-Google-Smtp-Source: AGHT+IFEZqDKFFTXfJ/Un+7kx7tNXNLlB+ZBv9sZb7/s5i/cTY6xqn3yCynUzUnUfB4hhUQ1LUSijw==
X-Received: by 2002:a05:6214:57cc:b0:696:3b0b:d780 with SMTP id lw12-20020a05621457cc00b006963b0bd780mr334738qvb.17.1711563026200;
        Wed, 27 Mar 2024 11:10:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1949:b0:696:9190:cd48 with SMTP id
 q9-20020a056214194900b006969190cd48ls233014qvk.1.-pod-prod-07-us; Wed, 27 Mar
 2024 11:10:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUVFol5geaDOrKZRkL26enPRrtIR7PDJ9I0VECcXTyyRfrvR4jDhiKILt+rCcYnQxrAQsjR7q8FS6e9WUGnMrR5jrqWSn5nPBxnThWr
X-Received: by 2002:a05:6214:d64:b0:696:7565:b058 with SMTP id 4-20020a0562140d6400b006967565b058mr546754qvs.0.1711563025181;
        Wed, 27 Mar 2024 11:10:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711563025; cv=none;
        d=google.com; s=arc-20160816;
        b=H7C9osH+BNbGtZ4LsAhVsOnQ3/3nGOqbNiWSQeEg8mvBN14XUlVhxvN6E8TPwCar4/
         DzqbpwlYvNQUgnVSb/pdTFHIFJHn+NJc7gFWKCSRdCy2bNLwrtc+WhrhfliDH8rEO59o
         qiTDFA9pYddG5x8QKFrbBl8BMrW70Eo9MMoKpzxprpTXWvePSzlRnVZbVvj5k4JIgy+r
         xlRgnL1/MZYbE97wneWLTtcUFLRrkG5MNQE7nR64gtDFJzeiFga92EXSnSaLi8Jgn0pD
         k/svz5Nbs2vnvHIHtIdt0rLOlF9ichTuX+a9MOqE/d4QSyaf23qfEBLNtn4C/eLreOyz
         QbiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=4WvstnfdXPcjLVe0g0cM3JMsjlgGtaBdSulavYqe3+s=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=m8c0RcK10iOtVQkJBK4ZLuAaY40+ErtlyxgRG5VKvK29/8a6TzUCcKrIWleT28Cgwx
         0pYVKeco/FvBacLR3xsqZu5gcVdnxa6xHw44FZO73HTTobX3ebJe9D8GZMekpBgDO27C
         hNrABur2Mh1mKZ0D11UiOuDgaz+t0Z7siOXaMG0N76fLaUDL6VkSMjB8yG8Ew5wOATKU
         TZ6hd/zkd9syYpvCoNWZN+TCNYMZan+SpkJ+RspcUR+DO2C2qfCiIrXb4SDcuBX5Mjch
         kp0n6OzPsC9j8c4DrkPuvv0dsZOKNk7HQj0xyltE5nmhEsbvm/ti5OGAfXSylETiS27B
         O/7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.16 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id gs4-20020a056214226400b00690b9abcd95si12798392qvb.364.2024.03.27.11.10.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 11:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.16 as permitted sender) client-ip=185.70.43.16;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-z4mZr14TOwuTQOLgxoH4KA-1; Wed,
 27 Mar 2024 14:10:21 -0400
X-MC-Unique: z4mZr14TOwuTQOLgxoH4KA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AEAE383CD6D
	for <blinux-list@gapps.redhat.com>; Wed, 27 Mar 2024 18:10:21 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 77F8CC51463; Wed, 27 Mar 2024 18:10:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DC9FC51464
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 18:10:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF77D18F34A1
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 18:10:20 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
 [185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-463-gwSYXW3PNcOlj3zk0uziAA-1; Wed, 27 Mar 2024 14:10:18 -0400
X-MC-Unique: gwSYXW3PNcOlj3zk0uziAA-1
Date: Wed, 27 Mar 2024 18:10:12 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
Message-ID: <dd0e814a-def5-4cf2-acab-62ce113b13f7@protonmail.com>
In-Reply-To: <e1b8de54-3465-7bf9-ca78-d9774e3e8d61@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com> <Pine.LNX.4.64.2403261904270.1398748@users.shellworld.net> <41f9c7c8-a2c1-4d44-821e-1f85e5a67e47@protonmail.com> <e1b8de54-3465-7bf9-ca78-d9774e3e8d61@panix.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.16 as permitted
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

I have no idea about Jaws accessibility, I've tested with Orca. I'm not=20
a very frequent Reddit poster (even though I read it a lot), but when I=20
actually get to post something and interact, the experience is really=20
good these days.

Best regards

Rastislav

D=C5=88a 27. 3. 2024 o 12:10 Jude DaShiell nap=C3=ADsal(a):
> It's jaws accessible and no more which means it is not any browser
> accessible.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Wed, 27 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
>> Actually, Reddit has done some quite impressive work on making their
>> website accessible. It used to be almost unusable, now the experience is
>> quite pleasant, even headings on posts worked for me once, but they no
>> longer do, I'm not sure why. But JS is a requirement.
>>
>> Best regards
>>
>> Rastislav
>>
>> D=C5=88a 27. 3. 2024 o 0:05 Karen Lewellen nap=C3=ADsal(a):
>>> Has any effort been made to educate the reddit team about this tool?
>>>
>>>
>>>
>>> On Tue, 26 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>>
>>>> Hello,
>>>> so, the situation is like this. After Reddit API changes, now, the API
>>>> still exists, but is throttled, I believe 10 requests per minute witho=
ut
>>>> API key and 100 with API key, or somewhere around those numbers, see t=
he
>>>> Reddit API sites for exact numbers.
>>>> This is why mainstream Teddit instances that did not use an API key we=
re
>>>> throwing 429 quite often. Not always, but often.
>>>> And that's also the reason I like i.opnxng.com, it's an inconspicuous
>>>> domain that almost nobody has been using, so getting 429 there has
>>>> always been pretty rare.
>>>> However, it's not the only problem. Reddit also from time to time
>>>> decides to arbitrarily block a Teddit instance after it had been used
>>>> for a while, that's when you get the 403 errors. But this is actually =
a
>>>> temporary thing that's IP dependent, so if you change either the
>>>> address/instance or just wait few days, it will start working again.
>>>> If you setup your own localhost instance, which is super-easy to do if
>>>> you have docker, then you can just use some kind of proxy or whatever
>>>> and it's rather easy to workaround.
>>>> Eventually, Teddit also has an active Reddit API key. When it's used,
>>>> the instance won't get blocked. Originally, this key had been used by
>>>> the main teddit.net website, and was discouraged from being used for
>>>> production purposes by other people, who were supposed to generate the=
ir
>>>> own keys instead.
>>>> However, I'm not quite sure if this is still possible to do, it used t=
o
>>>> be a mostly automated process, now you need to apply for an API key an=
d
>>>> get approved for it like an app developer according to the docs, what
>>>> doesn't really make sense as fighting third-party apps was the reason =
of
>>>> halting the API in the first place.
>>>> I make use of the API key occassionally, when opnxng gets blocked and
>>>> I'm lazy to setup a proxy. The main Teddit website is down for quite a
>>>> some time by now, so it's unlikely that anyone uses it anyway.
>>>> However, I always get back to opnxng as soon as it's available again i=
n
>>>> order to avoid overusing the key and getting it cancelled, that would =
be
>>>> a pity.
>>>>
>>>> So, yes, the situation with teddit, libreddit (l.opnxng.com btw) and
>>>> other Reddit frontends is a bit complicated, but they still work, so I=
'm
>>>> not complaining. :)
>>>>
>>>> Best regards
>>>>
>>>> Rastislav
>>>>
>>>> D=C5=88a 26. 3. 2024 o 8:43 Jace Kattalakkis nap=C3=ADsal(a):
>>>>> Every time I try using Teddit I get a 403 or 429 though, is there any
>>>>> easy way around this, or?
>>>>>
>>>>>
>>>>>
>>>>> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrot=
e:
>>>>>> Hello,
>>>>>> for reading, I'm personally using the Teddit frontend, which should =
work
>>>>>> well in LYNX as well:
>>>>>> https://codeberg.org/teddit/teddit
>>>>>>
>>>>>> My favourite instance is thisone (since it's usually free):
>>>>>> https://i.opnxng.com
>>>>>>
>>>>>> Best regards
>>>>>>
>>>>>> Rastislav
>>>>>>
>>>>>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>>>>>>> Hi All,
>>>>>>> previously, reddit worked well,  at least for reading posts, in bot=
h lynx
>>>>>>> the cat and links the chain.
>>>>>>> Now, even elinks produces a blocked error message, my guess is that=
 the
>>>>>>> reddit community is not aware of Linux and these tools for access.W=
ondered
>>>>>>> though if another tool already exists that might be a part of a she=
ll
>>>>>>> infrastructure?
>>>>>>> With appreciation,
>>>>>>> Karen
>>>>>>>
>>>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google Gr=
oups "blinux-list@redhat.com" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, sen=
d an email to blinux-list+unsubscribe@redhat.com.
>>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Gro=
ups "blinux-list@redhat.com" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send=
 an email to blinux-list+unsubscribe@redhat.com.
>>>>
>>>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

