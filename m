Return-Path: <blinux-list+bncBCVPTHE7K4IJLIVRVYDBUBEHXERGG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mail.lfdr.de (Postfix) with ESMTPS id DB202854271
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 06:35:18 +0100 (CET)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-46d3d0a0e16sf888951137.3
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 21:35:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707888917; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9gwu5HUmISzZxsbWc1Ccd3Jdep4GRcSZekHIYldS/795blRU3jFBeEDxBwiVP0Cp2
         oJ0CT/qJJbMUZFfwHrnLWSC4PGcK43HGPCPNmQIq5l63iih2ZLA++sbzrfJsAblBe8CD
         9lp8i9odbaWuSDCmTcZErNR9GGedn98IErYYBJ8qotO/g48G75k5perkQp0t0T0Ed9li
         TJXtAN0RqavPgh+yMcgdG9gqCmGRR9EJO1WJoWsZgcsuNuPFwISB+jSzQkv8Lxox8V/V
         jF78tN5ToWBvZc1rs6cTp0MEnLp6SVlTuely+HTqu4xipy4fkqtoTHIeIHQP2dWdBq39
         4M3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=ZB/DZb2gC1W4PccB+KauWqDlcuxatlC59mMU7hcybOk=;
        fh=vdYC3Qc6yHrpO46hK+G5DPZJ1B1wDYBLnnrfHu1unyU=;
        b=BXFt4jWPVyeXiZ/fZB5EK4QMu4rPAaFMUhsC/Up6hfaJzQEWhHFH9UYlTipg7xqNqK
         DBn+g9BvBhY0tUhpbXyfnwwIO6oYjR1XDPfKuAJluEVp3oGGJ/8Uk9SabgECWLeNlE+F
         MbTPuJ3iLMZapRikiJxaQdpHfnlDEm6Mz4XaoDEukm8M2YbbrwZL9RT/8mqdoUX+N+Sa
         FldoF1eTp3TKOYP4GmhAhHIFSAW6NzIP1ID4s4o23cDtctMxIYLsHoDx2jaHkcxl5eet
         +/HZWkI5A+BDTrcxu9OkFOqhjWerjGBfPGauYgf2hScIplSOKzb12p9MUEI0FkEsOGL1
         KuoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707888917; x=1708493717;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZB/DZb2gC1W4PccB+KauWqDlcuxatlC59mMU7hcybOk=;
        b=DOz63EJOZ18d4oxCvQQrl5Vq+hOl7ouwlIYTyrTZ8LO4Aa3OEDFf1o6Oc4ZHf2i0Ff
         oUj+OEv7fjiPmsFOR0Or+Zb5h2Iu+UaahD6QrvMKW+jJ0Ukh+2QE4Y6aSPlF2hr7Ox59
         YduOZA2fAvj0VJiljUNhyzu0zewnx6f9sA8rRGOddU80fugm8TW5abSNZTkrSKp5IZN0
         WvSQnWnOQW8MT/ibzQ+2NgrMeL1DAv1SO6ixiH/Ih9n+ho6pQjQd/tE8JT4VT0FmwyhE
         yxE8+U5GzGff8Emtfj4ZRgUWg9rfNsuXlBjb46v9UozM+31m/HXcXpHL9mspkO8fersn
         rjTw==
X-Forwarded-Encrypted: i=2; AJvYcCVq0ixY1uxSqVay69E1HryjyY2A0kbpaLL7coZgATMMObU8CT8cIocaspWJUrgK1OUOSPq+gnZguKpuK+XN0LVAUUfqTgpqF8X0
X-Gm-Message-State: AOJu0Yz7rENucb+IdnbWTDoN6u70Tl3fgbNbu4CnseLjkn5uiB6fSOQ5
	sGB/jrIWs4ERBqBTRRsPLXY7z88bxeyez1h9lqZCGgTazMoYM8lZTOLWolGD03A=
X-Google-Smtp-Source: AGHT+IFQqP7CZsOKDuwRx66aYBgFKwPEKFetmBvvBcKypv5SmsQz2iQEh1zBycSM/vBcyByHDYLXrQ==
X-Received: by 2002:a67:eb02:0:b0:46e:d77f:65cc with SMTP id a2-20020a67eb02000000b0046ed77f65ccmr1776447vso.28.1707888917540;
        Tue, 13 Feb 2024 21:35:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d11:0:b0:42c:7be5:34bd with SMTP id g17-20020ac87d11000000b0042c7be534bdls3218494qtb.1.-pod-prod-02-us;
 Tue, 13 Feb 2024 21:35:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUPv/DQNfFRSlxE27At4CHwVbgnsJdj7/xp0Ajdhrey7Zw/1Qy6my7KqwHwhJkEQUEjtoJQ90AuxvijiYUcZuMmsMOV0Z2FhQBHVsEg
X-Received: by 2002:a05:620a:9cd:b0:787:25c7:1be6 with SMTP id y13-20020a05620a09cd00b0078725c71be6mr1746867qky.30.1707888916672;
        Tue, 13 Feb 2024 21:35:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707888916; cv=none;
        d=google.com; s=arc-20160816;
        b=DCgJA1/GPa/MHXjfNvMCbjo7NaN+im0J8jbyCm5UHE4SBxP4/ne3KvuZ+7VHW62zQ2
         VJdj5F0vutjvKzev2XbMOHhaxDwTfuap77i/baXbbAzJKHT4GNlZ2APZ4uP5Kp9LNLhH
         O4ReQQhAukXrsEPtBpoXx5gaGcENcBT/evyV9GLGG9AF77b7Pkpj8Z6wu7Pnio9cAvQU
         QSd5H819rPRq5HZK9qxaRPsLxnvR0rEuQe6V+DgyaQ1PKmydiuH3mQnqIexHUgQhRm+Y
         Ds2Vpq2gc95YrjZ9ZkmjH5psYmgcUzS4ji3dWlOZLON89YVgzj0AsLmngSnJmjTCuUIi
         DdkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=ZB/DZb2gC1W4PccB+KauWqDlcuxatlC59mMU7hcybOk=;
        fh=gKACCtJz7kJsdZmtBvf8E4F5QDmBTxhjGJWM/pKwmEk=;
        b=cL9M9hpdk6INuN163tVY+1OX6Kdwlv4YKmw263NCk4GLeVM3VpcbXy8+y/OFEitRFx
         s3ghqQiXd+S28pRhHCnwqHLz0VxhBkZbw+QwvoJet6Jt+1a1n9Sb60gW1HDwice/3JS0
         3IXD5hSO3aakKCX2FIjPfIXJVkzKqO/wlDlFebPhFAwVuWPfOahf9Ax1bp0ieW9pBn9r
         IsRUyY//KdngF4bP34PJOYNrKP/75qcaeQLfSxuUak2iQLLelmlK91DFqyKAQF7uWXKR
         qC8nolPnC26xGM4o20giEWCDLDkBNr/ZRJIqV3+rIzNbaUbP3uiXSFn4dbb+JMEixPUI
         KgMw==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCX6x572uXSW/NTcvcUklATuxU0X9fPk7ZOrKjKI+QwvWZxtGlBAvknG/qyb5TTkICYytCPu46WBpeMppDjLUyqotZmI64tptj6EBQel
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id i3-20020a05620a248300b0078726059318si1884298qkn.202.2024.02.13.21.35.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 21:35:16 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696-749NSDLWOc2s6p3x0JIU4Q-1; Wed, 14 Feb 2024 00:35:15 -0500
X-MC-Unique: 749NSDLWOc2s6p3x0JIU4Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08E99101A52A
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 05:35:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0580F40C95AD; Wed, 14 Feb 2024 05:35:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C1B1A40C9444
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 05:35:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6FCA0828CE3
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 05:35:14 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-124-8lvO7KsSOWCDHeK6Yuklpg-1; Wed,
 14 Feb 2024 00:35:11 -0500
X-MC-Unique: 8lvO7KsSOWCDHeK6Yuklpg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C773040508;
	Wed, 14 Feb 2024 00:35:10 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 8F323100163; Wed, 14 Feb 2024 00:35:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 8EDEA1000A5;
	Wed, 14 Feb 2024 00:35:10 -0500 (EST)
Date: Wed, 14 Feb 2024 00:35:10 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
Message-ID: <Pine.LNX.4.64.2402140028230.706690@users.shellworld.net>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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

Jude,
I have a question.
i did run your command
ssh-keygen -r hostname.
Listed several keys associated.
However the new attempt did not let me save the new host, I have seen this 
message.
Instead I get the error
hostname key has changed and you have requested strict checking.
I am paraphrasing.
Is there a way to run the ssh-keygen or ssh command without the strict 
checking request so the new one can be saved?
Indeed things are in the known_host file as Chime suggested.
Worst case, I suppose? I can  open known_hosts in nano, which defaults to 
the  bottom, and put the key there..but dreamhost will have to provide 
that.
Thanks,
Karen



On Tue, 13 Feb 2024, Jude DaShiell wrote:

> First delete the outdated key since it won't work any longer, then login
> again and a new key will be added for you by the external server.
> ssh-keygen -r hostname
> should get that first task done.
> When you log in without a key you'll be asked if you want to trust the
> system and your answer is yes.
> That adds the new key and you're on your way.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Tue, 13 Feb 2024, Karen Lewellen wrote:
>
>> Hi all,
>> Will aim to keep this simple.
>> is there an option with ssh from the command line that allows you to update
>> new keys for the known host list?
>> I ssh into my dreamhost office workspace from shellworld, as in
>> ssh email@email.thingy.
>> I provide the password, reaching the dreamhost shell structure for the domains
>> they host  on behalf of my employer.
>> dreamhost moved our services to a new server, changing our ip address, not an
>> issue, but also changing the fingertip keys <hope that is the correct term,
>> previously saved  for my access from shellworld..who seems to use a strict
>> matching process of some kind.
>> My hope? is that there is an option that tells ssh to update the identifiers
>> used for known hosts?
>>
>> Thanks,
>> Kare
>>
>>
>>
>

