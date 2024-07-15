Return-Path: <blinux-list+bncBCVPTHE7K4IMRMGWWQDBUBHUJPWNU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id F1008931CB9
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 23:44:41 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b5eb3a67d0sf63479596d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 14:44:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721079881; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAid6Q4/ojwk+9lwKO10aazxqUqaAi0Y8wcDYj9/AI7A/c/FlNS+AsaFEy1CN6CEql
         Qu3RSJXBptNpj6qZdJOc6in3+wN2hs1UXSCCzN2e2fbls7Yc9wMb6+Gn/fFFEa8208ak
         MjdZCSYARPyvmRGC5A5WbbKMuMpHtI8joWlVLRNLgny2kgDwA5heGK1TI3qhC0hJ9N5Q
         hLeI/ulh7+iB09IOAKgkesOB8sdLGci3tf7hMPS277pfD4GNK3zyt+QEWKf4sG3fbfcU
         KSUCeFhq726gze5gDYFV2ZgYFUne4aOQq5BTdd0OW3GYt9iHYrccEMDp/fJ5DOgk3pG6
         8rRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=iMdARsuNoL5MTeCs/JJWbUozsp2kgUTThjv7EGQ/jMU=;
        fh=qyUidJfV/42LR9LP81dl5x3sKxvSsh1iU6tBZ3N20NE=;
        b=L7nASeDugdPTIwbgDJClkTG3ZjmHMaYO5fC9Qk0huXTV+c4Sk+PyE0WnOzE1tkaQts
         WzEt0P1Olfk1zUSXUKRX1d+JAnhSjRkyVd96PF6E3Hwkt0Xt+55pRTwmGStFaNfjEaB0
         ls4AEv5fsBgN+KIzD2qyqNEzSb1A0QmN0x5mnjbtz6bi/SJtT6yCdSJ8Y3I0pPAigaQp
         LbHISva2GyobFe7jVcgd23laZEJExG4Lc+6/DZZltQQIPAsfG1vkG6b8Pw8l0ZELa5ZF
         sIP4K7IAZoJ2unQWkmv8gvEwhmo5kupNh7xyjor1YbxhYV0xwjMP6NZYZ1x7fncDi9hJ
         K3kw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721079881; x=1721684681;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMdARsuNoL5MTeCs/JJWbUozsp2kgUTThjv7EGQ/jMU=;
        b=DOj5NpKFeAa1MIvGQSVtSIs/jLB11l3zNw4teEoUd4SKkluA7sh5dw/fsO/ubW0/Ke
         e1oWBPb/JGMs7ImNpS5DdyhBAOWDRwSnkav3/3Ou+dhGhB8X/oz4BPzPcT4KBVcCMZxx
         PCY7xpMUEFaLfRjq3qjBcwsS40oLeMb9gQ5Ekyv4l1zowAoAgmoIxJ0eU5SEIMMmauZJ
         JJvZWi66tNNUM1h8uYbuX0kheRG2G7r1xQXuFa31e6KeCKpFkDCWVR+u1v076N38/emD
         h2rLE+N78lTfyEn2QZIoGqQ7Xdwjsk2tVDH6vdf1y+sjFsBGzmFcIjE+IilROEk0soEv
         SD9A==
X-Forwarded-Encrypted: i=2; AJvYcCV/bS4UMIZXDagB5hIxB2I4tIKFnMfcBlkvIMpBetM3F2tnU6Lw5+XTpWK913HLeyIKVK/YmpphmS/DjMUuIiGLPlvunaHyuA3I
X-Gm-Message-State: AOJu0YzEkNPv3e3LIgAh8wP8vYFE3nOoytMxkWCZC3DMtte9VFlpnM1J
	lrfwMIsGr2SlI0F2vwbIuSUk8Jm34NU0+eVExXTUQoZUuhs4rfVBC8HnhLhvctM=
X-Google-Smtp-Source: AGHT+IGoroY5xZL4vnpj1A/DDd7Jur4Ysa4W6sRy86gL9tHSn8t0kNjUZYyZQukdtfduF9aHEw2y/w==
X-Received: by 2002:ad4:5ccc:0:b0:6b5:e4da:2d47 with SMTP id 6a1803df08f44-6b77f5f36e8mr5995006d6.49.1721079880557;
        Mon, 15 Jul 2024 14:44:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5fc7:0:b0:6b0:8881:bc19 with SMTP id 6a1803df08f44-6b74b42746dls100137656d6.1.-pod-prod-08-us;
 Mon, 15 Jul 2024 14:44:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXoQxxpl/0ptaFs8q4R2kSdOOG6VETyxh6gqYnEhFyOolNGHKnHJeuC5rikw4K8re3LSz6iZcPFmHc7t9ur29ey+oG7mTIQ744hVPPO
X-Received: by 2002:a05:6214:d41:b0:6b0:92f2:3b60 with SMTP id 6a1803df08f44-6b77f5d9223mr7258806d6.37.1721079879765;
        Mon, 15 Jul 2024 14:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721079879; cv=none;
        d=google.com; s=arc-20160816;
        b=vqmXMfA2yeUBFZ2lhXEBCsX/whRvijzJmX0/fAfa4co/h3YofP8FThascn27Qu+qGO
         1naIALtqUo32UDhlzu/1TgCVdLwcDmiMFbCcU9N7LwB2zfN45bWUobZj5sbgocvzoTv9
         EUQLT+rko3NuuqweogVpHDWNx5gK/nz1rrpfmqD1xUgRIevi+DCcyjtYRvAt9iYbH4ec
         Vg/vByGkCfi/MEApjuKYdcpsLLX3NZlXDGLoXsEV1d45QvEjZaEW4OzSi5c9Ox0Ndbit
         GT1u6LtVgoGXWsgQ/JUuMJ/dST8mKXSTHYoLH49e/L9oQb4phl/wEzxGSDUs9tf8U4mo
         mweA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=iMdARsuNoL5MTeCs/JJWbUozsp2kgUTThjv7EGQ/jMU=;
        fh=GgTNl/yNDwX0LiKLb2iBPcWj91DeCACq7f1sN7ma5+E=;
        b=G85pBYle6iPgEf9Ygk3Uv99v6YzMLXHbkAcnhI/BhhwuAov0+qQ0KNxzGPL0y2d7FV
         TWSOJNCQyErJeNmnyeblFrblB16dcYb58esvTNMlzxcfJfo6eH8Mx89//KpqIi1fciTn
         ZQSRn+xkDXMQkOS5dgO60HbhxP/ge75nxWq4EqaU032Ezl8J3Q0TMQzVrbWRSODuLd8M
         bpYotINWdzyRnadIzFWEqmCUhZ3tYXvD/hYzRA+POKyzg/804X9SJzb1qC9Z69k5kHkG
         tlQzOTGuKyy0wPiQwnrI4S9ViKr/S7ncHEuBMjFVgvtERvzx7Lf4H1mNavbOqMpT70FX
         9TFA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a04debsi60975146d6.278.2024.07.15.14.44.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:44:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-215-1EjGnnIlNmCCStAv-C2RfA-1; Mon,
 15 Jul 2024 17:44:37 -0400
X-MC-Unique: 1EjGnnIlNmCCStAv-C2RfA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 194091955D47
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 21:44:37 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 08E6B1955D42; Mon, 15 Jul 2024 21:44:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 06574195605A
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:44:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6EE4F1955D52
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:44:36 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-286-0T99ZIU-O3GhLB8CaIL-Mg-1; Mon,
 15 Jul 2024 17:44:33 -0400
X-MC-Unique: 0T99ZIU-O3GhLB8CaIL-Mg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 522FC40508;
	Mon, 15 Jul 2024 17:44:32 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 1DBD31001B4; Mon, 15 Jul 2024 17:44:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1C4F61001B0;
	Mon, 15 Jul 2024 17:44:32 -0400 (EDT)
Date: Mon, 15 Jul 2024 17:44:32 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Mike Gorse <mike@straddlethebox.org>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <ede1724d-22b2-224c-dfe2-921eced38496@straddlethebox.org>
Message-ID: <Pine.LNX.4.64.2407151743560.3550845@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
 <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
 <ede1724d-22b2-224c-dfe2-921eced38496@straddlethebox.org>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
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

Thanks for that..naturally rpm is not installed smiles.



On Mon, 15 Jul 2024, Mike Gorse wrote:

> You can use > to redirect standard output. Something like
> rpm -qa >packages.txt
>
> On Mon, 15 Jul 2024, Karen Lewellen wrote:
>
>>  will try this as well.
>>  Is there a way to copy output into a file?
>> 
>> 
>>
>>  On Mon, 15 Jul 2024, Mike Gorse wrote:
>> 
>> >   If the server is running an RPM-based distribution, then rpm -qa, but 
>> >   it
>> >   will likely print out a list of thousands of packages (if I run that
>> >   command, then I'm usually looking for something specific and pipe the
>> >   output through grep).
>> > 
>> > 
>> >   On Mon, 15 Jul 2024, Karen Lewellen wrote:
>> > 
>> > >    Thanks  for these details.
>> > >    For the sake of further exploration, is there a Linux command that 
>> > >    will
>> > >    share all the packages currently in use on a server?
>> > >    I have entirely too many things I do professionally with my email,
>> > >    including filtering  items into folders to use anything like 
>> > >    fastmail.
>> > >    I do currently ssh into other shells as I said, but must visit
>> > >    shellworld
>> > >    first to do this much.
>> > >    Still, if creating shellworld 2 might be possible even on a 
>> > >    dedicated
>> > >    machine, it might be worth exploring.
>> > >    I have 54 gig of data in my main shellworld account alone, 6 gig for 
>> > >    my
>> > >    personal website..cannot imagine another shared hosting service 
>> > >    giving
>> > >    me
>> > >    that kind of room, but might be wrong.
>> > >    Kare
>> > > 
>> > > 
>> > > 
>> > >    On Mon, 15 Jul 2024, Chime Hart wrote:
>> > > 
>> > > >     Well Karen-and-All, Many of you are quite familliar with my road. 
>> > > >     I came
>> > > >     kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but 
>> > > >     with
>> > > >     horrible DeC PC drivers in Speakup. Eventually in 2006 got rid of 
>> > > >     windows
>> > > >     all2gether. All along since 1995 I had Unix shell-accounts, 
>> > > >     Netcom, REXX,
>> > > >     PrimeNet, and Shellworld, where I hosted my web-site as well. In 
>> > > >     May of
>> > > >     2020 we almost lost Shellworld forever, so after at least 3 days 
>> > > >     of no
>> > > >     e-mail, with a big help of a dear friend, I switched my domain to
>> > > >     Fastmail. Unfortunately their interface does not work in a 
>> > > >     console setup
>> > > >     nor without javascript. After awhile they blocked traditional ftp 
>> > > >     access.
>> > > >     I found ncftp as an easiest client, but now must use web-dav 
>> > > >     which has
>> > > >     many fewer options. As far as your exact question, as you see I 
>> > > >     am not
>> > > >     hosting my web-site nor e-mail locally, however, we use exim4 to 
>> > > >     grab mail
>> > > >     from FastMail to my local machine. In addition, I have a laptop 
>> > > >     also
>> > > >     running Debian SID with a quite new Zabbly kernel. The laptop has
>> > > >     graphical so I can login to hotels when we travel. Eventually 
>> > > >     would like
>> > > >     to put graphical on my main machine so I can go to Zoom meetings. 
>> > > >     Wish
>> > > >     there were either a menu-driven or commandline Zoom client. Along 
>> > > >     the way,
>> > > >     while I've been in Linux nearly 21years, I almost still feel like 
>> > > >     a
>> > > >     beginner, but still sometimes when I atten a Linux LUG, I can 
>> > > >     still help
>> > > >     some1 else. Also, certainly folks there are still somewhat 
>> > > >     baffled how I
>> > > >     use a computer while totally blind.
>> > > >     I also have a MAC which I know little about, but took a class. I 
>> > > >     have a
>> > > >     Chromebook, but the Chromevox screen-reaeer is much less easty to 
>> > > >     use than
>> > > >     something like Speakup. I hope those details will provide some
>> > > >     prospective.
>> > > >     Chime
>> > > > 
>> > > > 
>> > > 
>> > > 
>> > 
>> > 
>> 
>> 
>> 
>

