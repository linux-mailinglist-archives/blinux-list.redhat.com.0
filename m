Return-Path: <blinux-list+bncBCVPTHE7K4ILDVHTVIDBUBAHSPR4C@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD757F34FC
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 18:34:42 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66d155fc53esf45378966d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 09:34:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700588082; x=1701192882;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MR8Q+RamVmZY1vXWKk20r5lxidSl1CaBy4DujR/cPHw=;
        b=bs7tN8xmNOdtQL6Uhvwa8AvjyggpDiipZIbV4zbwm7cEsHiZ6RYfvLuKWlZgXlAIxs
         u7AsjXrxlus05Xz/YWRaxvJmSL5NIK7hwpgvMJ2Kt3QfocJI2X9/0ss6mrud7yPEMWP0
         5oFqOIB5seURHsO1UtvNVXCD6EeHwVnI7Oft4c1fvlXcW4nVt2H68G9Ch0mEgY7UNKbZ
         Vd8bgJ0vjPtH3KbS2VkdVwPvOOl03B/6I2lfTfIpHDQrmi0drQ6ppSW70ORrEnYpXTC5
         oWYnxb3q941nD/IBIYGZ53raRNxXdh/Cqe6PB+L6zZMTdmkLyKD+yFJ6GvGqEEYjZroZ
         +RtA==
X-Gm-Message-State: AOJu0Yxqgm/sEujoRagjV/K+SSY0zVa5hMBUjVAzj9Epck8Nd1nHGTQ5
	AxHEdCsfN4iiLVmjc9hO6mc1fw==
X-Google-Smtp-Source: AGHT+IG+nrgINAU+YmvV6yynb9iIDqOV4fTp359jf/3oV+V8YH6ytVkc2yF7J3rUp0bLvWwDTzhgHA==
X-Received: by 2002:a05:6214:401c:b0:66d:3474:a93a with SMTP id kd28-20020a056214401c00b0066d3474a93amr14875035qvb.30.1700588081947;
        Tue, 21 Nov 2023 09:34:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:a93:b0:65a:f624:1956 with SMTP id
 ev19-20020a0562140a9300b0065af6241956ls539039qvb.2.-pod-prod-09-us; Tue, 21
 Nov 2023 09:34:41 -0800 (PST)
X-Received: by 2002:a05:6214:2aa5:b0:677:f461:31ca with SMTP id js5-20020a0562142aa500b00677f46131camr14288511qvb.44.1700588081230;
        Tue, 21 Nov 2023 09:34:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700588081; cv=none;
        d=google.com; s=arc-20160816;
        b=hdMP5q2aRcTgZR7ZsLyOaNZU5tfV4zJfaAW3FMl6rBkoasmPPpQGGiKtwmwinZPzsS
         WVX5rH5GVFW9RFTP/1TwB/yU+G/K33JO4IP1hqHZ4oCW4lRQOexgS5YkbzloPSdW2oY7
         I1da1YUoTM6ur4SwNDjtPF8DCHVqgEpwWwxAkvzXcp+DrPa1nfdZNNiD9ZstGjfaTuby
         MeP7Vmlf5b7WyxA3yCRRicZMOiMw8LbdG/Vxqx3AynBdld6s7zlmuGyc6fgqVO2R7bU0
         zrVjohe40asHKc8NZV+hQW7EhOFqSRYAw1fuuG767i/zw5fhlwXWpVwPsnoYmHYmCUm7
         reag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=MR8Q+RamVmZY1vXWKk20r5lxidSl1CaBy4DujR/cPHw=;
        fh=Yb/fQpl84BEXH03hjotBnK5nrlAdTBygY+Ct56T3T5A=;
        b=g2zFcZwr3EBmtfgCSKxVI8bzj+ew9I04vAHOWR8PbA1ONJtQ9j4uo4tyVV8DuJWNoA
         6rxWBbP/DbATYiY8iUd5q0qxcd4zypDSNdLNGblAGx+iPkfXFi3yQMMrFvcoPdYJUaHh
         saeBI6X66EibHJ6DcGj90bq1Kb32xpv3g5mdG0X98IwqbfmQRoZ6NAQoGj61zAiTF+0p
         6E/UdDs9l6fCSqOu4meDX56hJOz1l8O+VuhgISE+xgKYAzJyuJVKyuG/lA9spiHwoBex
         TNPDUyMU4hDGyDbSd+lKB7qiG6WgS6a/SXuqo73OT3oY0RO3aYsX75BRybpR1jZJAlOW
         ADMw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id jo13-20020a056214500d00b00677f7c960f3si9729415qvb.327.2023.11.21.09.34.41
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 09:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-_043jjIiO1u_4hyJW35KJQ-1; Tue, 21 Nov 2023 12:34:39 -0500
X-MC-Unique: _043jjIiO1u_4hyJW35KJQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 892A2811E8E
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 17:34:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 85EB91C060B0; Tue, 21 Nov 2023 17:34:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D7D11C060AE
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 17:34:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5DAE6185A782
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 17:34:39 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-692-vgfk1MOvMyWHWHQKAvUXyw-1; Tue,
 21 Nov 2023 12:34:37 -0500
X-MC-Unique: vgfk1MOvMyWHWHQKAvUXyw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 5EE0144FC9;
	Tue, 21 Nov 2023 12:34:37 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 1D66F1001AD; Tue, 21 Nov 2023 12:34:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1CEF81000B6;
	Tue, 21 Nov 2023 12:34:37 -0500 (EST)
Date: Tue, 21 Nov 2023 12:34:37 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <8b00d7e8-f6ae-7252-7ff9-e896f65a575e@panix.com>
Message-ID: <Pine.LNX.4.64.2311211233310.3575974@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
 <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
 <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
 <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
 <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net>
 <981c24e6-d364-83de-17f0-c6ca7c588623@panix.com>
 <Pine.LNX.4.64.2311211149300.3575549@users.shellworld.net>
 <8b00d7e8-f6ae-7252-7ff9-e896f65a575e@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Understood, others then?
And would you have them, your project manager friend, get in touch with me?
Kare



On Tue, 21 Nov 2023, Jude DaShiell wrote:

> I'm not going to speculate.  I have never been a project manager so am not
> qualified to speculate.  One person I know was a project manager and he
> could do it but he isn't on this list.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Tue, 21 Nov 2023, Karen Lewellen wrote:
>
>> okay then, lets speculate.
>> How much would it cost?
>> Kare
>>
>>
>>
>> On Tue, 21 Nov 2023, Jude DaShiell wrote:
>>
>>> People with the money haven't put it out for a browser like that and won't
>>> put the money out for a browser like that.  That's why it hasn't and won't
>>> happen.  Putting a browser together like that would need a development
>>> team and not only for the interface there's security considerations
>>> requirements and patching that will have to happen into the future for any
>>> such project.  That needs dollars or some other currency to attract and
>>> pay development team and give them enough money that this new project
>>> remains their only project for long enough to get the project to first
>>> release.
>>>
>>>
>>> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
>>> defense of liberty: soap, ballot, jury, and ammo. Please use in that
>>> order." Ed Howdershelt 1940.
>>>
>>> On Tue, 21 Nov 2023, Karen Lewellen wrote:
>>>
>>>> Chime,
>>>> And that is something I do not personally understand.
>>>> freedos and djppp, both editions of DOS still under development are not
>>>> kept
>>>> there by individuals using adaptive technology.
>>>> Instead, they are there because many people want choice.
>>>> Elinks when compiled with the options, provides a blending of the graphical
>>>> and the text. paypal is treating it as my default device for one of my
>>>> accounts, no more captcha.
>>>> Links can create the best of both worlds as well.
>>>> So why is there not a port of Thunderbird or another email tool that blends
>>>> the best too?
>>>> Creates enough of a progressive enhancement factor i. e. basic html, then
>>>> builds upon that for interfacing? That helps mobile users who are not all
>>>> able
>>>> to get apple or are unhappy with android items.
>>>> Kare
>>>>
>>>>
>>>>
>>>> On Tue, 21 Nov 2023, Chime Hart wrote:
>>>>
>>>>> Well Karen-and-All, I think there are no non-graphical ThunderBird
>>>>> applications, so I wouldn't think that would be an option for those of us
>>>>> in
>>>>> a straight commandline shell.
>>>>> Chime
>>>>>
>>>>>
>>>>
>>>>
>>>
>>
>>
>

