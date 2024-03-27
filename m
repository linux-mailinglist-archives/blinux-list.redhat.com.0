Return-Path: <blinux-list+bncBCM2V5WE3MDBBP6JR6YAMGQEF4IYZQA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E7088DA1E
	for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 10:20:01 +0100 (CET)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-60a0815e3f9sf97678057b3.2
        for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 02:20:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711531200; cv=pass;
        d=google.com; s=arc-20160816;
        b=gNtqz+xjLs771xgwGvOB7O7ShKk/r6Q+T3p0Xjh8mbxtBwCcLqt4eSaWqJQgrpJHe6
         csjXrO0IRGsfZCULLRD+t+4TlKmWnc2knBUbpOwj6tFcamB0hCXKhfytfXB4KlwVPXmn
         KBlUFuB8Ee3/nGrudRLfYVhH/WNhMB8DtYe6YzBRBIE2am0hSdYT05mNwtcjDOF0hgO+
         FrqpAvEUWEp2GFJOTOX/xPHzprwKrEhiWa7sqHNX9BwogRDhhZPDbDJYc/z2WzoPEJXV
         0QTYm6KzZVUsQDDZcvInRgVDjfF+/m/Ki5vqNH3sxLGIeai7TxFMhz9DMiF0WwmXmsq+
         RJPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=cL+t84bze4Aczl2cGhpGzYse72XQjyxxAG+/5fPuzQM=;
        fh=SuX699xtyzVB3E/YqyFxrZSC7RqlFBPGUwHuGiK7diQ=;
        b=ax0E1iGW7QrpcDtcEFFcw3m/04oCTzk+UtzjdOp2273wqKb7LIg9JybqXJtXFT/uhI
         6ujfNRKNqDeU8RVXpFz5VH9Z7VyS0UJ3eRLn1FvVl843Q4gZOkQoPYeUbUZun5Iiltdn
         79GeL4a0LdR/lkW2Y/cq22tu3VfQnbGg8us32TvdquipN9Bbk1GhfZxAelYPSLLdBIeC
         QiY0X4dqLb2BSOHhPhqIEoXFrCSpVi4UR5eYZns6MMw1gWhdfWutkrDxDnEvutH8odCi
         ClU/7AYFSk5VSAY5Oux9blQDm+v7/EUdtVxvksNmKfJTmTj7goVBvgF11X340S9f3lX1
         nBjA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711531200; x=1712136000;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cL+t84bze4Aczl2cGhpGzYse72XQjyxxAG+/5fPuzQM=;
        b=hn3p2BM12pOANFIwPUMJsafuJPb4SFp1UstM6UDlUWuPWye42gB1YOxPdx/arE5Ep9
         TyHhXDQV67CaXIOhECEC6J2pgGFbnDIa08FN5bbsO4i9qGUR6imycTExHZkmrkSA7EdE
         7R7W5wgqQW+lTvrRXQQ9buy8iMOSpmmtj1evFr2OQ3lDK45A6VXoh91Y5XYaPiHjK3Br
         xVXg/mMC5MiteowsUyHrGRU6qDgnbJOrQA/VDXig2fgywdmFNIbGDykVvknoXj0DOnFR
         5tAyyLy0UgSUC7AQYOELeGlsC5EXAqSXfmGo7mVPl9xyuqBeT8Ou/yjPTUOtrDcRzwWq
         PLew==
X-Forwarded-Encrypted: i=2; AJvYcCWnNMaEeilcDTxfWcUBIEqJpSSty0yJOt0vJkKp8VVhbMz2j85yQKoWAUpPhuJTMkzI3UxZD3lMIVhvCjmINfSkjr84U0lXL62w
X-Gm-Message-State: AOJu0Yz8tm8AJAcEQsKR4XemQbr+cfv5X4rYU53zgW7bOHyaHMJshnzt
	PNEO8Y94399L5yO5Gi32znjEcLasvtmjlXgXH3HuGkxK3gEhWYflAm+/uF5T9fQ=
X-Google-Smtp-Source: AGHT+IEtwSUGPVJlu6qOXhKT3QlBhrrKaQXAKKb0B7YuPlMug8+zS3BrAAPipt9Tgm+69BHOlr3Www==
X-Received: by 2002:a81:4902:0:b0:608:3960:ed46 with SMTP id w2-20020a814902000000b006083960ed46mr5635996ywa.37.1711531199771;
        Wed, 27 Mar 2024 02:19:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:51c8:0:b0:431:3419:79d3 with SMTP id d8-20020ac851c8000000b00431341979d3ls4928686qtn.0.-pod-prod-01-us;
 Wed, 27 Mar 2024 02:19:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWp8qiudpPio00zUJTqblFKvsH8bIxm/3WvlwrfK5BLszqtNXN/VMgzIdmxQS2RigMO3StWLX4JBVwPcJE2cRAOX4Hah6dHz9xAJLVB
X-Received: by 2002:a05:620a:222e:b0:78a:2a5f:853d with SMTP id n14-20020a05620a222e00b0078a2a5f853dmr4857831qkh.31.1711531198784;
        Wed, 27 Mar 2024 02:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711531198; cv=none;
        d=google.com; s=arc-20160816;
        b=vzN4cOQLkJE1bJxXh+uiaMKFKFsUCnvQGsxTpxQ4LB9BXO3zeP2wjKMq1rW2z0QTiS
         Do705NPWT6yWQiPQomShzUK0irsWetkwwx6JVuJqQTo52cectsffjf/3Ld3dAYKQIGMH
         6RqZ3kDvYz86xiZ8vIj/JmSnK7zjvqssMXhNLascVt/F0B84Pegv6/Xqq+Mw9D3wr/tq
         C8JLtCZozPASlheiW4ZNBTscFewnyUh0Jtl70MKzBQgvjjO3ZmRdpAgdrQ0O15r8XoZu
         K6EbRx1KWrpnAstBtMrFDEXAJR/c2ZK6NsBvyrBwRqztIwy2snoepIQYe3DDlek0BFGS
         sh5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=Fw5aepDkOycIUJQvQFKVMDjrjoLDp67NI/BBT9lKxB4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=eZbJ2SlLMGbCRIoLAJAoR+KJtYmKmPoAOjZkcSQ256ltgrV+gfr/YO/yWGeneIZ2VF
         iMk0yQ1QQaHixmewt1qsrm8FG6PqIzKNzulnVQMI3Bjtq6KzglbtYECm1IXQSpFQ4uTz
         e5eMnX9dbJJd7rq5orROsCz6BjpjTx2Guvu9BA0E+IuvQRgMpVZEhPAzELSvj0T+gL4u
         mRHwIWa+1XR4rYhkltL4VP2it5v5v4/Sr1R/XIJk1qqGepSXx5YSrGI3vgNVGPzj/TCD
         nwwtOfz25L6l8w1YIkqkNS9hn2KgSLC6nXOv5gLsrq0cxdA7OTZig7aK9G+g0rwasg9j
         9Y9w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id z30-20020a05620a261e00b0078a663d6c5bsi3142937qko.655.2024.03.27.02.19.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-203-Dmm7d0q_MhuGNHqQiBHU_A-1; Wed,
 27 Mar 2024 05:19:57 -0400
X-MC-Unique: Dmm7d0q_MhuGNHqQiBHU_A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A6141C07265
	for <blinux-list@gapps.redhat.com>; Wed, 27 Mar 2024 09:19:57 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3725440C6CB3; Wed, 27 Mar 2024 09:19:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F15AB40C6CB1
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 09:19:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96FC01C0515A
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 09:19:56 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-yT0etA0PN6CkwSj8aZndqQ-1; Wed, 27 Mar 2024 05:19:54 -0400
X-MC-Unique: yT0etA0PN6CkwSj8aZndqQ-1
Date: Wed, 27 Mar 2024 09:19:37 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
Message-ID: <41f9c7c8-a2c1-4d44-821e-1f85e5a67e47@protonmail.com>
In-Reply-To: <Pine.LNX.4.64.2403261904270.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com> <Pine.LNX.4.64.2403261904270.1398748@users.shellworld.net>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted
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

Actually, Reddit has done some quite impressive work on making their=20
website accessible. It used to be almost unusable, now the experience is=20
quite pleasant, even headings on posts worked for me once, but they no=20
longer do, I'm not sure why. But JS is a requirement.

Best regards

Rastislav

D=C5=88a 27. 3. 2024 o 0:05 Karen Lewellen nap=C3=ADsal(a):
> Has any effort been made to educate the reddit team about this tool?
>
>
>
> On Tue, 26 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>
>> Hello,
>> so, the situation is like this. After Reddit API changes, now, the API
>> still exists, but is throttled, I believe 10 requests per minute without
>> API key and 100 with API key, or somewhere around those numbers, see the
>> Reddit API sites for exact numbers.
>> This is why mainstream Teddit instances that did not use an API key were
>> throwing 429 quite often. Not always, but often.
>> And that's also the reason I like i.opnxng.com, it's an inconspicuous
>> domain that almost nobody has been using, so getting 429 there has
>> always been pretty rare.
>> However, it's not the only problem. Reddit also from time to time
>> decides to arbitrarily block a Teddit instance after it had been used
>> for a while, that's when you get the 403 errors. But this is actually a
>> temporary thing that's IP dependent, so if you change either the
>> address/instance or just wait few days, it will start working again.
>> If you setup your own localhost instance, which is super-easy to do if
>> you have docker, then you can just use some kind of proxy or whatever
>> and it's rather easy to workaround.
>> Eventually, Teddit also has an active Reddit API key. When it's used,
>> the instance won't get blocked. Originally, this key had been used by
>> the main teddit.net website, and was discouraged from being used for
>> production purposes by other people, who were supposed to generate their
>> own keys instead.
>> However, I'm not quite sure if this is still possible to do, it used to
>> be a mostly automated process, now you need to apply for an API key and
>> get approved for it like an app developer according to the docs, what
>> doesn't really make sense as fighting third-party apps was the reason of
>> halting the API in the first place.
>> I make use of the API key occassionally, when opnxng gets blocked and
>> I'm lazy to setup a proxy. The main Teddit website is down for quite a
>> some time by now, so it's unlikely that anyone uses it anyway.
>> However, I always get back to opnxng as soon as it's available again in
>> order to avoid overusing the key and getting it cancelled, that would be
>> a pity.
>>
>> So, yes, the situation with teddit, libreddit (l.opnxng.com btw) and
>> other Reddit frontends is a bit complicated, but they still work, so I'm
>> not complaining. :)
>>
>> Best regards
>>
>> Rastislav
>>
>> D=C5=88a 26. 3. 2024 o 8:43 Jace Kattalakkis nap=C3=ADsal(a):
>>> Every time I try using Teddit I get a 403 or 429 though, is there any
>>> easy way around this, or?
>>>
>>>
>>>
>>> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>>> Hello,
>>>> for reading, I'm personally using the Teddit frontend, which should wo=
rk
>>>> well in LYNX as well:
>>>> https://codeberg.org/teddit/teddit
>>>>
>>>> My favourite instance is thisone (since it's usually free):
>>>> https://i.opnxng.com
>>>>
>>>> Best regards
>>>>
>>>> Rastislav
>>>>
>>>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>>>>> Hi All,
>>>>> previously, reddit worked well,  at least for reading posts, in both =
lynx
>>>>> the cat and links the chain.
>>>>> Now, even elinks produces a blocked error message, my guess is that t=
he
>>>>> reddit community is not aware of Linux and these tools for access.Won=
dered
>>>>> though if another tool already exists that might be a part of a shell
>>>>> infrastructure?
>>>>> With appreciation,
>>>>> Karen
>>>>>
>>>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps "blinux-list@redhat.com" group.
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to blinux-list+unsubscribe@redhat.com.
>>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

