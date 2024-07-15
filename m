Return-Path: <blinux-list+bncBCVPTHE7K4IK3ZWWWQDBUBGPOODTQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CF0931DB3
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 01:39:26 +0200 (CEST)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-4f33e7d1348sf1145099e0c.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 16:39:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721086765; cv=pass;
        d=google.com; s=arc-20160816;
        b=ySQZtGMCi5u97kQwcWIYtSOT0R7goqWxFsVUAWs9f9DFAYzjyV8nO3kGm1kDThYjI0
         lWqnSKzpMQQMP6Hkf8tSVcVlSzrVvXmvBTYLt55bdJIvf+nUKnt8MkUa5FsbUm/wHynm
         U/kIGA7CNzUo8nQCUhfxpYvP/AaHFsFs8j7+sWZ5AI+pFuEPD1IlzcanD3rP4nKCNR8N
         hYItPnWlxyZ2uEfAhFTbCWCaJBQgXduhKrQlgr2CKnYJKYGMNETdwnCAjiiZc0s/GWVv
         R0DvFcEFOOMwxYk2GFG0aG7RSrt7OfUe7ffH0c1mmk8xaQSf23Kjgmk+Q9RTzboRHzBI
         lcfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=nZax94p3lOsVf16WeSn/zvmSfUs6qimJzehO4cB4VB4=;
        fh=ZhE/fExqYNPNA4t6OsSPlXmA6qkrBogbCB8drGYa64I=;
        b=P91PoDyBrbZd7GMJ2621RaD2ww2Ffa6Z61AUxyFcsJP1cvWo4P4LefK1+Hses31uv4
         ckIXyM+b0Tk2rfvIEgHAqtkLBdqf5ADG7iISxeem6yjDBEFraxGQCJ34JpggL5uKkJk1
         vJgfnCfdUAush0N7kVQxgtUJBvTBNIQA8oL8nOVC9t3Ca10xoWlpO9GHGUzsikl9pYsr
         KiQS/GTiZ3y0VJ3jRrU4eS1oaL67c4uhoCGUSlyJZPuHIjTtl+8Jgrq3IqQNbQ8Kc9Ax
         Inj6GqwydCBik2XdzkSFCYBum5N5FRcztKrMaG9jkwaqqmoekUCDNJieoyi5g6xq5Muq
         OaZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721086765; x=1721691565;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nZax94p3lOsVf16WeSn/zvmSfUs6qimJzehO4cB4VB4=;
        b=o5LR+fv8KOLfl0P6cLh+rWt7dHaA2SyYhsvKNX9GgZGE+cQ6bTfSZMfyo31WtnakYU
         xA+ooJ66USgTuvjYds4l7u/U8UwXSaqCfg+4RFUJ4J5Dt8l9NCJE4bAnhCB7mNrUo3dn
         vqdXvYax23T0UAkkhX1qJAxh5RQmEmiFNpQjB78k8xbwrLHon+RGbo6nVSPEwhf4YT5L
         hKt0BWd+RtIEg1s5B7KZ33NUKmvxKjajCBWQObbDxJeF+cTQRDfv0TKPftY2TzktJ5L1
         XkocajS/726Xm96dAXu7f10XZawjbhzrXvpong8SIuUNuVZb3bhEvAWsvwF1Ym8fxRxf
         KO+A==
X-Forwarded-Encrypted: i=2; AJvYcCUO8z8at0a2+D8U89EvcZtOn/uT7rJaiPAbEt9xZalEF4u5cB+G15xo4rp7OmY2muCvRvOv9u9bNYf09IUuSYTPun+U33Pc+kV2
X-Gm-Message-State: AOJu0YwWkHduKJMJzfpGZONABl69YV/GQ5HYn9Ogl11W6bFp56cc+lep
	Adlo1Nx04nRTo/cwFMdJ6NDCDUvRdpWYazHPrmEevDDVkV5dSuNu/fbmRCVUv/0=
X-Google-Smtp-Source: AGHT+IFr66yhz6xfSWzdkeZxXWVHd+h3fgKcnOHy51SK2c91AcdDWzvt+5Zcj8al4MlgNEW4uW5oOA==
X-Received: by 2002:a05:6102:3352:b0:48f:95cd:e601 with SMTP id ada2fe7eead31-4914c578b23mr619955137.25.1721086765483;
        Mon, 15 Jul 2024 16:39:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1911:b0:6b0:8c6c:833b with SMTP id
 6a1803df08f44-6b74b31ec4els67502966d6.0.-pod-prod-08-us; Mon, 15 Jul 2024
 16:39:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkkxytCFGO1Nxinmx7yKSdZo+ePO0RbVA3EwjfyCj8qdUM4KtygtbtGrIuqwCYR3W1jwiDEL8HZws326rnJxKl1iNtOevyIpmhr0hL
X-Received: by 2002:a05:6102:2c8a:b0:48d:a5ff:2f5f with SMTP id ada2fe7eead31-4914c4e9b4fmr572225137.12.1721086764658;
        Mon, 15 Jul 2024 16:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721086764; cv=none;
        d=google.com; s=arc-20160816;
        b=oNH4Pg4eDoT4QhuZlFqDe0+5CVvUVJTt0566MewVRoYM09rbZgZjoD1/gUrBfOJqH3
         pnW7pGbVQ6UoEYTcsVOSYPf4uK9CPWksjq1dT12l1kHmO6q4V7Zs4WHnnncrTcDptSM1
         TRJ2SfT1+haqaigSNVIRXDjXLsSWHaXfJKdmGQFr51w9+K0ID/oXr2A1gl5AU384kMGw
         V0P5AWKR5LNQa9GGwwG7LPU8XTMWkfHiFGKLwOvkhoGfc8DFWT4L/DLoqNaAILof+ZiT
         3apfK7JpClq7YXJQJSUQ+Jbd/yHpQNUZ0yzlmBlKm3gLM7EqvYNP3jrJ9DJZiH10G8NR
         tPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=nZax94p3lOsVf16WeSn/zvmSfUs6qimJzehO4cB4VB4=;
        fh=5BGpd9k4y8F62sA2rfcSjN7zgK8lTBpG/Wr3HsCq4Ec=;
        b=ucw0r0pmnE039VC5tTVQgIOVQz50008mGjzQJ2XgL+VOj6EZARvqyc3jiNUnjl71uv
         IWKoo4rcuBZttTaeZKMujX2gpAYbEGd/AFdkIotgnb5qxeQSJmwVVBvEItE3edWZ7QXM
         i+aIZzf5lkxmUOjVSXojAjYQ2cp/74x95onwAuQniBQiZT36lWUDUGr2MmO5BMMrzKty
         OWTuagg7bmDKSOo006zq6R+xkc1cLB89JT40eOn5ePXRl97tpm71Uc1DR/kqD1nhhLKp
         BxIoF0dlqV88K+4spCnoVfXbXrSear0xj8Qxq0/mGglmFP4/eTxI+S+ivJ3U0c1Zt24/
         4d7g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44f5b824b04si64703791cf.672.2024.07.15.16.39.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 16:39:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-503-rhPXYwzpMda0F0b2XPv9nA-1; Mon,
 15 Jul 2024 19:39:23 -0400
X-MC-Unique: rhPXYwzpMda0F0b2XPv9nA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9261A1955D4C
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 23:39:22 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 838021955D44; Mon, 15 Jul 2024 23:39:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8100C1955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 23:39:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1006819560B1
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 23:39:22 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-414-_NZJsAlxMCWGycECS7_smg-1; Mon,
 15 Jul 2024 19:39:19 -0400
X-MC-Unique: _NZJsAlxMCWGycECS7_smg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3039344FC6;
	Mon, 15 Jul 2024 19:39:19 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id E84231001B4; Mon, 15 Jul 2024 19:39:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E7B421001B0;
	Mon, 15 Jul 2024 19:39:18 -0400 (EDT)
Date: Mon, 15 Jul 2024 19:39:18 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <ZpWwuIvdyKoUqtoB@thechases.com>
Message-ID: <Pine.LNX.4.64.2407151938080.3552371@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ZpWWPBC3szmpqODv@thechases.com> <Pine.LNX.4.64.2407151750350.3550890@users.shellworld.net>
 <ZpWi5d1A4TkwT3n2@thechases.com> <Pine.LNX.4.64.2407151835130.3551659@users.shellworld.net>
 <ZpWwuIvdyKoUqtoB@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Actually,
Chime was richly helpful off list, I got the installed only items.
took me like 5 tries, but still lol.
Karen



On Mon, 15 Jul 2024, Tim Chase wrote:

> No worries.  You *can* just use
>
>  $ dpkg --get-selections > all_packages.txt
>
> for everything.  You'd just need to let the recipient know that
> anything that doesn't have "install" for the status was likely a
> package that was installed at one point but then uninstalled later.
> Feel free to do that and explore the resulting "all_packages.txt"
> file.  You'll find lines like
>
>  npm      deinstall
>  wget     install
>
> By piping it through "awk" before sending it to the file, it filters
> out the lines where that last column (the package status) is anything
> other than "install" and then prints only the package's name of the
> remaining lines (without the useless status info).
>
> The results will have lots of system-type packages in it, but it
> should at least let the recipient know what was installed on the
> system.
>
> However, if you send the whole file (or just the "install" lines),
> someone with a Debian-based system can use that as input to
> "dpkg --set-selections" to automatically mark them for install with:
>
>  $ dpkg --set-selections < all_packages.txt
>
> which can be handy.
>
> -tim
>
>
>
>
>
> On 2024-07-15 18:36, Karen Lewellen wrote:
>> Tim,
>> Sorry if I am being a moose feather, but I do not use Linux.
>> as I am sharing the data, i. e. want it saved in a file, do I need the
>> Install-print part of the command?
>>
>>
>>
>> On Mon, 15 Jul 2024, Tim Chase wrote:
>>
>>> $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
>>>
>>> The "dpkg --get-selections" lists all of the packages, then the
>>> "awk" portion filters it to those that are currently installed, and
>>> prints the package-name.  The results can be dumped to the screen,
>>> sent to a file (as above) or piped to "less" for review, whichever
>>> you prefer.
>>>
>>> -tim
>>>
>>> On 2024-07-15 17:53, Karen Lewellen wrote:
>>>> Hi Tim,
>>>> the goal would indeed be currently installed packages, seems to be Debian,
>>>> as dpkg seems to be here.
>>>> may I have the command for  installed packages again?
>>>> here it starts with dkg, and I want to be sure this is not a typo.
>>>>
>>>>
>>>>
>>>> On Mon, 15 Jul 2024, Tim Chase wrote:
>>>>
>>>>>>> If the server is running an RPM-based distribution, then rpm -qa, but it
>>>>>>> will likely print out a list of thousands of packages
>>>>>>
>>>>>> Is there a way to copy output into a file?
>>>>>
>>>>> The usual Unix way:
>>>>>
>>>>> $ rpm -qa > list_of_packages.txt
>>>>>
>>>>> and you can then review "list_of_packages.txt" as you see fit.
>>>>>
>>>>> If it's a Debian-based system, you can use "dpkg" to obtain similar
>>>>> info:
>>>>>
>>>>> $ dpkg --get-selections > list_of_packages.txt
>>>>>
>>>>> which will include all installed and installed-but-then-uninstalled
>>>>> packages.  If you only want the currently-installed packages, you
>>>>> can use
>>>>>
>>>>> $ dpkg --get-selections | awk '$NF == "install"{print $1}' > list_of_packages.txt
>>>>>
>>>>> -tim
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

