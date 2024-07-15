Return-Path: <blinux-list+bncBDX2X74ZZAFBBPNL222AMGQE5EJMKZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEEE931CA1
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 23:33:51 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-79f04b04fa7sf654183285a.0
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 14:33:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721079230; cv=pass;
        d=google.com; s=arc-20160816;
        b=roh02tDtRjhswFhzn+j384tsaRiuLjbvaO/1aTqZXzSIG+8M4DyR3hq+Umm9A0mKeA
         bW7I/ES4OeechbiEXGs0O97w/Z1bGGv1vCjMqrJdc4DBmY4BSz21+NMniuMl4MStcqRt
         4kLA4R++Ldg71AB0bWLaZgRyj51Elr3XSgV72v/8gn8Dxg2S94FKRfU6DNq6MiaMqL7U
         VgsuzgzdgRkCFJiUBriUVMIn6MI8pOees22u8OZGhXYjQarrAwdXkSz5YniRcksd9I9H
         8MIcy8//J9LUPwxzvCsZGQ1t5K/UH7yo4vclNNwUVULzr0fMCMfv2744rgZyyCc6qPUZ
         Fp7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=Ri3vbGh1wM42niajl3CapEvIXMC46pE6D1Sz58nixKE=;
        fh=PZ0PU1r2vq1QPrkTMTuRKpLRJtaRNa3jhRdaqNtYyb8=;
        b=lnI30ocPqKK510Sus6Dzi3YeQnu+7fX9ujf3m+2u14BAUn5VWSnWtoKbTTdlBHhwnq
         0gv54M4IVjSSB7zOWId2Kf+4rQgwqNmQ1rmXFVNfl3KN/6xbEv0cVHIzB3zIiZ1fTi1l
         Q1nQlY5gYJdt/XdvTmBHTG+6gKDC6pkcC+Dz+i/Yjis/alec4EDTwhcoPe4qAEGspsQt
         fC3LZo5mpqBOIBBXBAJcdfXvXI/r9v/KqCAWjNtt8kpOtxIvRemS1N++1QWdL3l9P+KD
         mRj4BhkNVn3TW95i7tV7bdlopcIparjuxQ1ZI6dXokF7iTQy6h+gtphy5x8zR2UOMcM0
         dcUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) smtp.mailfrom=mike@straddlethebox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721079230; x=1721684030;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ri3vbGh1wM42niajl3CapEvIXMC46pE6D1Sz58nixKE=;
        b=pYNaF3UWkWH7DrLKbULUcl8OLeUTbPIpdGtzxTXeJiZmFkhqup6/UGDk0HUESD5rIn
         W2tQRRvUR6EzGsXN9BfwFJFto0WeNSGbWOj63KPteSX4MdYALZ+QunZ9Yo39NQp5mJgD
         X1jZEQ7wnCCF0NIuqOlwtTd0x2zOEfZZu2ACbWyk8XInp1mS5GtqLa7Jx9wV/wN6CKIL
         mnu0B1vs/hzGfZfJD5Yq7kjNjUAZe1Mu/h7FKFfG0oju/7eM8Hf9fRMD3v7HmPYJjSLj
         oAYn5KC9bLUYbEczGl768nS1OlE3HWFcTA8uADZdGB42GEek9BWFnzdCL90B2YlvOZCl
         b3LA==
X-Forwarded-Encrypted: i=2; AJvYcCUkooO8bKGVcrW6jZwWN/JdTtrEEwnU/93w4uJTu+fwQgr+xQnKPWiMvSjFyOLqj79EvdbWIrpQ8TkoCP1YAb0SwqOpzEvgTFCa
X-Gm-Message-State: AOJu0Yz/ZMEzMIGcgK9CCBi/Wsgd/UAiVqV98j/wrYWR3d77HxNwTqJG
	GtskjqaA7CQ2l1SauaeL0He/9HKEksXnQRJonpdNUwXO16uyIemXW041tYbdE5M=
X-Google-Smtp-Source: AGHT+IHXkjXnxtvBW9W91jsrapUz0XcqpLccUYcyl9LESJS2+8jHxIh9NGxW7kFLh9+iRbwNVthf9w==
X-Received: by 2002:ad4:5cab:0:b0:6b5:83bb:11b5 with SMTP id 6a1803df08f44-6b77f36d8b0mr6074836d6.9.1721079230028;
        Mon, 15 Jul 2024 14:33:50 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ec6:0:b0:6b4:ff5f:6a65 with SMTP id 6a1803df08f44-6b74b440993ls106904416d6.2.-pod-prod-05-us;
 Mon, 15 Jul 2024 14:33:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXQE0fauVhTPkoobxYt5+BwKNE+y05XYeqmLeQEFBMJ4AZywqWrpIeB4Om3H5Oiiw3EJHAFsEz8i/ZqMbS328XxGaiFrI6AhlDaSeat
X-Received: by 2002:a05:6214:ca6:b0:6b0:86ab:feaf with SMTP id 6a1803df08f44-6b77f52f42amr4338026d6.48.1721079229063;
        Mon, 15 Jul 2024 14:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721079229; cv=none;
        d=google.com; s=arc-20160816;
        b=p5Wfp5i80cvPBkpkPJExcqEmOAjvjVpuRA8IhRI2thbY90i0KgmAc9BF4CVBPlwJdq
         ctkPa4CKeQYXoaA1qlE3EXg6vRyF0vM0ep0EUQL0XQxNPi0Bv+DmQmkWm5CMPaCCkpEy
         cXhjHtPYu/7FahPbSfSb8WJKxiQysabk6kNtXsFO87uzD3vJLD368KGA9ry5gS6dLjGY
         Cs3Q5S0vLOhI77bTXzI9JgZAvp6Kx8SDF7PZvn1WYPZ/fmlIvUjDzkUWhc4IiaGl+1fD
         t442280KJiMSZFFcPl6xUs8dvvlpPZiZvsWiPf84zcRln+oAT+pgyc3VPFiQs6qml/dF
         TL9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=UGWf/Gvg9RwGFR/cKMtlmUGtIQdg3cW1bwVo4PvvWLg=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=ipauJhnZWqxUTrY5ZKuRnfVVNB86cJwlFAMKglkYhUbGhEdwIwHuWohryIBPiwPmhX
         xc24yPvc031fPCwLiiD2IK1hy4tRyIGE1pMJAgpPpIrngQo/zZRG/4JYnj2zLqTmLZlx
         1oboD48t41d89YPmhZ6GI+T9k8NQOawyy2VfsFrob8ICguOEHGwLADaRNMkikaAknidY
         3HILCrSWjcL/c9PwojYEl6w50V6N+qr9nS8anlba2XoMm6JMEOKmjnvTffdUpNXyEO8h
         skaotpBH++303LOles3/BBNQcPwpYW4PqDpH88wV75WxhD9Mh3f8opR41ZqvHqTni1V6
         +ocw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) smtp.mailfrom=mike@straddlethebox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a5efeesi60421726d6.525.2024.07.15.14.33.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike@straddlethebox.org designates 104.237.138.165 as permitted sender) client-ip=104.237.138.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-488-yoB9_IesMNGkGRtWqMRJpw-1; Mon,
 15 Jul 2024 17:33:47 -0400
X-MC-Unique: yoB9_IesMNGkGRtWqMRJpw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99A3B1955D48
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 21:33:46 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8AC011955F65; Mon, 15 Jul 2024 21:33:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8853919560B2
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:33:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0B15A1955D4B
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:33:46 +0000 (UTC)
Received: from straddlethebox.org (straddlethebox.org [104.237.138.165]) by
 relay.mimecast.com with ESMTP id us-mta-522-jKjua3l-NfWmlN33aHVGsA-1; Mon,
 15 Jul 2024 17:33:43 -0400
X-MC-Unique: jKjua3l-NfWmlN33aHVGsA-1
Received: by straddlethebox.org (Postfix, from userid 1000)
	id 476581FA6B; Mon, 15 Jul 2024 16:33:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by straddlethebox.org (Postfix) with ESMTP id 448501FA67;
	Mon, 15 Jul 2024 16:33:21 -0500 (CDT)
Date: Mon, 15 Jul 2024 16:33:21 -0500 (CDT)
From: "'Mike Gorse' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
Message-ID: <ede1724d-22b2-224c-dfe2-921eced38496@straddlethebox.org>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net> <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com> <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net> <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: straddlethebox.org
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: mike@straddlethebox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mike@straddlethebox.org designates 104.237.138.165 as permitted
 sender) smtp.mailfrom=mike@straddlethebox.org
X-Original-From: Mike Gorse <mike@straddlethebox.org>
Reply-To: Mike Gorse <mike@straddlethebox.org>
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

You can use > to redirect standard output. Something like
rpm -qa >packages.txt

On Mon, 15 Jul 2024, Karen Lewellen wrote:

> will try this as well.
> Is there a way to copy output into a file?
>
>
>
> On Mon, 15 Jul 2024, Mike Gorse wrote:
>
>>  If the server is running an RPM-based distribution, then rpm -qa, but it
>>  will likely print out a list of thousands of packages (if I run that
>>  command, then I'm usually looking for something specific and pipe the
>>  output through grep).
>> 
>>
>>  On Mon, 15 Jul 2024, Karen Lewellen wrote:
>>
>>>   Thanks  for these details.
>>>   For the sake of further exploration, is there a Linux command that will
>>>   share all the packages currently in use on a server?
>>>   I have entirely too many things I do professionally with my email,
>>>   including filtering  items into folders to use anything like fastmail.
>>>   I do currently ssh into other shells as I said, but must visit
>>>   shellworld
>>>   first to do this much.
>>>   Still, if creating shellworld 2 might be possible even on a dedicated
>>>   machine, it might be worth exploring.
>>>   I have 54 gig of data in my main shellworld account alone, 6 gig for my
>>>   personal website..cannot imagine another shared hosting service giving
>>>   me
>>>   that kind of room, but might be wrong.
>>>   Kare
>>>
>>> 
>>>
>>>   On Mon, 15 Jul 2024, Chime Hart wrote:
>>> 
>>> >    Well Karen-and-All, Many of you are quite familliar with my road. I 
>>> >    came
>>> >    kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but 
>>> >    with
>>> >    horrible DeC PC drivers in Speakup. Eventually in 2006 got rid of 
>>> >    windows
>>> >    all2gether. All along since 1995 I had Unix shell-accounts, Netcom, 
>>> >    REXX,
>>> >    PrimeNet, and Shellworld, where I hosted my web-site as well. In May 
>>> >    of
>>> >    2020 we almost lost Shellworld forever, so after at least 3 days of 
>>> >    no
>>> >    e-mail, with a big help of a dear friend, I switched my domain to
>>> >    Fastmail. Unfortunately their interface does not work in a console 
>>> >    setup
>>> >    nor without javascript. After awhile they blocked traditional ftp 
>>> >    access.
>>> >    I found ncftp as an easiest client, but now must use web-dav which 
>>> >    has
>>> >    many fewer options. As far as your exact question, as you see I am 
>>> >    not
>>> >    hosting my web-site nor e-mail locally, however, we use exim4 to grab 
>>> >    mail
>>> >    from FastMail to my local machine. In addition, I have a laptop also
>>> >    running Debian SID with a quite new Zabbly kernel. The laptop has
>>> >    graphical so I can login to hotels when we travel. Eventually would 
>>> >    like
>>> >    to put graphical on my main machine so I can go to Zoom meetings. 
>>> >    Wish
>>> >    there were either a menu-driven or commandline Zoom client. Along the 
>>> >    way,
>>> >    while I've been in Linux nearly 21years, I almost still feel like a
>>> >    beginner, but still sometimes when I atten a Linux LUG, I can still 
>>> >    help
>>> >    some1 else. Also, certainly folks there are still somewhat baffled 
>>> >    how I
>>> >    use a computer while totally blind.
>>> >    I also have a MAC which I know little about, but took a class. I have 
>>> >    a
>>> >    Chromebook, but the Chromevox screen-reaeer is much less easty to use 
>>> >    than
>>> >    something like Speakup. I hope those details will provide some
>>> >    prospective.
>>> >    Chime
>>> > 
>>> >
>>>
>>> 
>> 
>> 
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

