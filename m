Return-Path: <blinux-list+bncBCM2V5WE3MDBBROIR6YAMGQEZ5N74LY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id BA29388DA12
	for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 10:17:58 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6968eb2becasf28985516d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 02:17:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711531077; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rkgm90wnyneR2bLj5MthUYi9C5eOu4/uCH88YvZN98e6WjA0PlYc4GeBARUNR+gDPv
         UtFZd7hppkd6xivbMtUPsv0ctYDUd/6cI5Od7iHGvJ7X0MC6/U0wwOdmKwpoxT/Rwj0A
         Ega5Wqdm6hZ3Uqj5IUVf1i+kiDhmHF1XzYgxO0oaXYwuIkikoujhLON61xT8gkvmNqEu
         2kpo7lJzmV3ZRFWeVcPuxaCGnnadP3IZHsHOu5GVJoXExwXU33Co/uY/cxpqOAJs7DFJ
         bghXLpXBeoNH0Ok2ANSVQl/kmP8sKXescWwStWdpbAe0FyGZJMrP0d5xP/IEsjdsmXpb
         uixQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :cc:from:to:date:delivered-to;
        bh=TrjRNcuLcCgRupXs+0l4S6tNuuRWg7wnRUOWoGyGZPk=;
        fh=VonnBW0X27uKe2BNrORTM7vypYuYxkjeibUMGYX9cwQ=;
        b=a04GYHp0RlgUOCaXNmHtX34xC+PrzMc7lMkuk7ycxNOrMd4F0Ow4jGotN6nHNZOCeQ
         cFtxPM82t7aWHCsYj8ZL19oQNYZkg/b4ztyJPiqdF2gdCRWQKwmFttQgFwlWenVX63Ab
         yy57a6Kwp0mYdLVnu8pybn8mzNvyQBMr+U1hbCb+QGl5DaPiWSh9uMGvpXmvlByNMw7f
         3A6FZdeEcXrodVVafyIgOBXpfwQYjzFiBWto6isKGXDESpLSfW/5OlJlRg7WJ9tnZ9J7
         WR47bHKjWES9TyVKRK48/+cZSDc/89D1ijyWevM9IfonJi7IMroa8B18tFe/6pFboI0X
         cDdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711531077; x=1712135877;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:cc:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TrjRNcuLcCgRupXs+0l4S6tNuuRWg7wnRUOWoGyGZPk=;
        b=SKKHtPOHtLm9LXesUsF+TM83T9jMCNW4yMqYQd+rajiTXclaK3ZJuDaloEbaCNDYEL
         OVa2fiBJB1PrrBL/+3yHdF8zn1CS2LxFkKSFlYQMuE9ml3uPIOQUHkvnveWxPjAYG28+
         dL8hsJzfeyZD9WxXLVv3ZdvpAdeEWesCapVnb+7V8yRwr08ZC++UTd8wOqCi/UxAeDY6
         DvKU2hpWEASt4jRNeowzbUg1xnf07hIol6pHJ4vOhkJvg1U3A+sJfSKvo6xdDeTM5wOn
         o0+O/Cp8BAFNoTgPwkxe4fZaElu/O+xEteNLYnkB7CXD4i3tQser8nOYsfHUJtXAZlMu
         raVQ==
X-Forwarded-Encrypted: i=2; AJvYcCUGuO4XIfJdouJjtu2fssWXleQ2qO5SnvrP/IXBQkE0VNenNodEJu0YSORnOdt/dn2G7h4e7dMcgFDw8Qhi+cML6l8/WNBa9eJa
X-Gm-Message-State: AOJu0YwWEFWozzjWU2uEpOgEILsVvAPrczcUbGsAj7laWJqcJ3mELjuU
	7fmgTonsyvEoeQ2E7UN0dgzPuq0Hq8B7SS85rp5ZNSgdRil6xRndQYwqQeOE68w=
X-Google-Smtp-Source: AGHT+IE9OhSmbp03YFjeI+wqBxgus54slITxO2C7tcsmBr/KhiZKt9bcqFGF2dbbSS2TVxRbCnXRUQ==
X-Received: by 2002:ad4:5f49:0:b0:696:89e1:93f0 with SMTP id p9-20020ad45f49000000b0069689e193f0mr642411qvg.38.1711531077519;
        Wed, 27 Mar 2024 02:17:57 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2684:b0:690:c6df:5de9 with SMTP id
 gm4-20020a056214268400b00690c6df5de9ls4099461qvb.0.-pod-prod-08-us; Wed, 27
 Mar 2024 02:17:56 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMbDP2XpCuOJKArZhKjq6Jsxa0eFIIiH5xglFFdXQ2tDRT4nueBPyFXwVz1kFj0nYx92J750wPiMrgFgd/GqtkPiBBzVxrLoyNYSMX
X-Received: by 2002:a05:6214:4013:b0:691:23f3:2cba with SMTP id kd19-20020a056214401300b0069123f32cbamr643882qvb.30.1711531076386;
        Wed, 27 Mar 2024 02:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711531076; cv=none;
        d=google.com; s=arc-20160816;
        b=WTNqRqDQ3VcnLXYeL6v5xskS82zbZW/Z36icJEZcVJ0A/CThDaQdD8Q3bucwXIJ+Wm
         NBs4wVh1acWmOBBdVV91phfNCViTuwTutf3ev9G34J8UI3BvNTkqsZOAhYZHP7MWb7Cx
         b9/eE1OgllO7VZXtb/PyrrCZX+a5bwDu/qprIOnT1rqhgIkZ5YFGxrDb5e+M1hVsN1KV
         vN8lK+ZFvHYsEvqobzJL6JI36EARbhJHRlwmu9zaJlK4ck5+vHUHeyJtflNtm75NQ5Wj
         SN4lXiUEioZBqwCCqKj02sBkr6Wc+v8o1i3diEzIptKClCfGZDplm2aeDjjCfuEui5Xb
         6cXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:cc:from:to:date:delivered-to;
        bh=ZqwURKbeMU6168cjVlSpX6EVrWBW97v4RhdnHwcDFtc=;
        fh=0jVjjzV1UTqCD0OKnxpuUJlac9thORf26sciuTwZYBU=;
        b=galADGVLPutJ9EPMu/cALptMvPy/mHxwTvr8PCqwm5kAyz2ZKhUqUCjWG7neN4coIg
         0zKd29PKzwgZHM3jh8koPrnlVkyux+uZ1AoNiKKjCwctoBpkXaGPP02ZjLibvI4j4g7t
         TVRN3L+i3QYSxHtVCbxkDY2Rq6T9cROC8nfDMYKo6GCqJ1vtJR+D1hwQXnaVOyFrI1rz
         3GOrMYcGBT0czkZNVvDuiRX1sAVZvO7VoEWVn5o7kjA/o9s7L22NKgVvRRorDI0YDWnV
         sqsyCjs13XHLNxkOhps6gkc+BlgvmMFFNCiokCxRYwdPxAWmxOuMAFR4g+fb3l+REPFy
         g5Kg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id x24-20020a05620a099800b0078a36e7bd63si9281193qkx.491.2024.03.27.02.17.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) client-ip=185.70.41.103;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-55-JnWan5a5N9uEesXCwC4vAw-1; Wed,
 27 Mar 2024 05:17:54 -0400
X-MC-Unique: JnWan5a5N9uEesXCwC4vAw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F5E53CBD542
	for <blinux-list@gapps.redhat.com>; Wed, 27 Mar 2024 09:17:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7C2112166B32; Wed, 27 Mar 2024 09:17:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 420102166B31
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 09:17:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4A28811E81
	for <blinux-list@redhat.com>; Wed, 27 Mar 2024 09:17:53 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-i1miXe1FMHece8sFrHTIvA-1; Wed, 27 Mar 2024 05:17:51 -0400
X-MC-Unique: i1miXe1FMHece8sFrHTIvA-1
Date: Wed, 27 Mar 2024 09:16:44 +0000
To: Karen Lewellen <klewellen@shellworld.net>, Jace Kattalakkis <khalfang1366@gmail.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Cc: blinux-list@redhat.com
Subject: Re: Tedit no longer updated, was is there a command line Reddit tool?
Message-ID: <e9770952-8c37-4aff-8cb2-1eb738cf56e6@protonmail.com>
In-Reply-To: <Pine.LNX.4.64.2403261818180.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net> <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com> <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <Pine.LNX.4.64.2403261818180.1398748@users.shellworld.net>
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
 domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted
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

technically, teddit as a project is not actively developed by its=20
original developer (forks exist though), but that seems to be no problem=20
so far, those few errors I believe are not related to Teddit itself.

Best regards

Rastislav

D=C5=88a 26. 3. 2024 o 23:20 Karen Lewellen nap=C3=ADsal(a):
> Hi,
> When I followed the link to the tedit site I came across a message statin=
g
> that, due to Reddit's ApI policy, the project  is no longer being
> maintained.
> May explain your 403 and 429 errors?
>
>
>
> On Tue, 26 Mar 2024, Jace Kattalakkis wrote:
>
>> Every time I try using Teddit I get a 403 or 429 though, is there any ea=
sy
>> way around this, or?
>>
>>
>>
>> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>>   Hello,
>>>   for reading, I'm personally using the Teddit frontend, which should w=
ork
>>>   well in LYNX as well:
>>>   https://codeberg.org/teddit/teddit
>>>
>>>   My favourite instance is thisone (since it's usually free):
>>>   https://i.opnxng.com
>>>
>>>   Best regards
>>>
>>>   Rastislav
>>>
>>>   D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>>>>   Hi All,
>>>>   previously, reddit worked well,  at least for reading posts, in both
>>>>   lynx
>>>>   the cat and links the chain.
>>>>   Now, even elinks produces a blocked error message, my guess is that =
the
>>>>   reddit community is not aware of Linux and these tools for
>>>>   access.Wondered
>>>>   though if another tool already exists that might be a part of a shel=
l
>>>>   infrastructure?
>>>>   With appreciation,
>>>>   Karen
>>>>
>>>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to blinux-list+unsubscribe@redhat.com.
>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

