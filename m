Return-Path: <blinux-list+bncBCVPTHE7K4IIBKGWWQDBUBGIMI4YO@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DE1931C87
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 23:26:26 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b75e880a12sf45313016d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 14:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721078785; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMWAhqso+nPzzj9U9mBu/hd42RKfICGs08SdCSo28QVVMKFOUM/dGAma5nwtgMMpGI
         1DjUg+dXmi7Ew3b9ToMvHqXX0rt7POBvWq3ZvpnGTx0wdbmnz29e/eeU26/2PP6kHcLG
         FYO/TtVlgGdHaV29oNuNXMshuHi+UdEC/vbfmhaB8QiIcqoSa828s9XksQtnt95a65oY
         RR33wNsCmC+7tMkRqGN1fVN/h3kE7IddenLLiDLyLYtk2d9yhPPuzdi49DM5wDomPOR7
         K3xBlbTygveJ+g2R29A7AzsVsHB9tgX0ERhcRsSJjy+yMY5m0Xdtn6KpgdwJ1H4AjcNq
         RQjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=t17EWzrALcgCFzk6BrFDYnBtfIzNM39uNmxdzxnp96c=;
        fh=p/32Wwzx519XkIDWTmyxJiHYHDJcweqGxFjM4pUzUiY=;
        b=0iO6X7VukgoOQVPwdStJK+SwMBs03MIzLd8vnI3FfIWdGH5H1UeXccTELxj+npOkHR
         8Tw82LdrptYw0+9A8YY281LPIf1XKNGfAyV+ihVgimfNfhEeHOPoerKcHIbGQErg6aDm
         T1OP3yKQSlf45NlTykkYgSf939qmo6BaPCrs0/Bkbu/DwZo9DyEW0LOc91kAIVb6TmIC
         jgw1Xh+Q4Z3VJo3F8buCg0NexAvGlhSb4qGiWQT9JIANAj2v7ETueCoL2C2r5O6m1kWK
         YxtA6eHENYk0MmYWGPHE6qmyirdPPfMpfOtV5/phS0z2ZRSHvcjdF9CDq8V0nXuQIh9A
         ttdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721078785; x=1721683585;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t17EWzrALcgCFzk6BrFDYnBtfIzNM39uNmxdzxnp96c=;
        b=HNpR8pkw+rKn0xh68Y5A9i9DKkVUxC7LVnfMHHRBddjmB8QfpjZa9H5bHOdEFpU/yC
         CbHcN949le13eP5ydghulS8irxHntXbi9rNveFBd8TlV3Hm25ptgryxE/oDI0FJZb/6E
         DR2gw8yEz3bDAhYPt5vyB65QDn6gHpFUhvlVjK7alS8A7rd3XTiTCXxbJLhYtLddMrqH
         ZUlb206vkwCL7+via36Eswp1PYqZua0mm9kqujf32SqDbqkVmEfU5ul5krUhgtJ1TBVY
         l3vbTcuWgkkOFERvOcR/PV26nOS3LW7OE27Pw5lixbQUsy3JxbJ6ZUjA1yORtjXV4FvP
         x+9g==
X-Forwarded-Encrypted: i=2; AJvYcCX9zHD7tC7eUx+BDYXI96ILo7TuCJPS2oSbmmeNDFDeGkmZwdZvvwooe+G1bkHNzmUmEQe9razvWVx6uWkIJRR3p/zWQ3lYvrA9
X-Gm-Message-State: AOJu0Yxdjq4B/vFXUgzE1fQG2JJ7b+Jgv9D/Pdp41hVpe0wsSTCkEbO9
	IQORoU1vohD/Hskd+bd/IpDFt7Cw6jlkP7DlQZSwHbr25MXaqHvtA9yIg2RJ2Jo=
X-Google-Smtp-Source: AGHT+IHGwMHEvRPlLfixYaZPdJIUFevE+T3KWIkU9FyJ9BdVfIBGPbxYSZhn/ItlmOVmsXkfmoh2cg==
X-Received: by 2002:a05:6214:2483:b0:6b5:655b:99be with SMTP id 6a1803df08f44-6b77f5b4789mr4169426d6.43.1721078785188;
        Mon, 15 Jul 2024 14:26:25 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ece:0:b0:6ad:782a:b4c9 with SMTP id 6a1803df08f44-6b74b427478ls117278786d6.1.-pod-prod-01-us;
 Mon, 15 Jul 2024 14:26:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU/kgkg80hX27W8+K5f09zouHq+OC2ZouVhyhfJvv/BgSoY3/1QVisluh5j64YnP/kH3QC/aPk14+iUwP/V08nUUNi7DpuvOQxq3KRO
X-Received: by 2002:a05:6214:627:b0:6b5:df48:bc6e with SMTP id 6a1803df08f44-6b77f5b5e7fmr4062956d6.39.1721078784125;
        Mon, 15 Jul 2024 14:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721078784; cv=none;
        d=google.com; s=arc-20160816;
        b=hUaJ+I/S1PA5XVPm14j/0lUTHgiNL7lBhdvbOzhEcOLzwFBeVfCmaDP3vUXZ4Jfh5y
         Mlmk1a/TFdAukzN1Dt/djCi/3qiTEM1Q07JPvrQnpxDfjSRdNv4jgwUbOKMKXTklaZvV
         rijeM3BMVGSoVX9zLv1L2mAt5XtODnp7KjyZeqZiliuDk0DEG8i3AMYfPVgPvv1eSOn/
         9JNaPQcEUKwSejbFUXUToe3xBD7JLyvgFiznPOK+gbUCiS4Qc4DfuCmwJtX7d+c9wiYd
         DJowXxLpD/2F1t3WFt1HgHV8Ls+8Baz9doVrbNByY+CVkyL7uj0+pyaypA2w1fUyyMSK
         zi9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=t17EWzrALcgCFzk6BrFDYnBtfIzNM39uNmxdzxnp96c=;
        fh=GgTNl/yNDwX0LiKLb2iBPcWj91DeCACq7f1sN7ma5+E=;
        b=nM30gHW4WixHhnnoArq/nFFleOZXXDy3YXY1q7v+o/UjpXC9TAC1BrZV3+VCLBWsCw
         P6HyEV0mFzGOZw46Z+jY8ZBORm9ELgQPYqdR0BLO98PUWBmTBMObHIl/tyn9zgcPQlop
         GurX90QZYbiFtB92MZh8FAXnr7Ry1yjyIdMxW+y8yRoEGhxR+R6ajHHt2qvhFEps0No5
         qihvGeYESKoPQEa25/4PjVneIu4U+6jNBPWTNCG2UDoZdEV8V2MK0nWRD8h7j1TY93H2
         8/UnDhr94Oe5y75X/i2vNUV4iFT8CgGUnQKiLAArIB7nbB4Py4oUpdmiQBzKvH2O4OA7
         zssw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b761a033b7si60871436d6.244.2024.07.15.14.26.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 14:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-575-AzwCqDfxMeKLaHV3v4Bc-Q-1; Mon,
 15 Jul 2024 17:26:22 -0400
X-MC-Unique: AzwCqDfxMeKLaHV3v4Bc-Q-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BBE9019560AD
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 21:26:21 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AD37D1955E70; Mon, 15 Jul 2024 21:26:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AAD691955E8C
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:26:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2D4751955D4C
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 21:26:21 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-657-_oDBkYUwPJqlPQhLJfbjLg-1; Mon,
 15 Jul 2024 17:26:18 -0400
X-MC-Unique: _oDBkYUwPJqlPQhLJfbjLg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 03E3240508;
	Mon, 15 Jul 2024 17:26:18 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B92CF1001B4; Mon, 15 Jul 2024 17:26:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B6FBC1001B0;
	Mon, 15 Jul 2024 17:26:17 -0400 (EDT)
Date: Mon, 15 Jul 2024 17:26:17 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Mike Gorse <mike@straddlethebox.org>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
Message-ID: <Pine.LNX.4.64.2407151725360.3550597@users.shellworld.net>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
 <f3eee8ac-4e0b-fcd6-52dd-9aca74743226@straddlethebox.org>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

will try this as well.
Is there a way to copy output into a file?



On Mon, 15 Jul 2024, Mike Gorse wrote:

> If the server is running an RPM-based distribution, then rpm -qa, but it will 
> likely print out a list of thousands of packages (if I run that command, then 
> I'm usually looking for something specific and pipe the output through grep).
>
>
> On Mon, 15 Jul 2024, Karen Lewellen wrote:
>
>>  Thanks  for these details.
>>  For the sake of further exploration, is there a Linux command that will
>>  share all the packages currently in use on a server?
>>  I have entirely too many things I do professionally with my email,
>>  including filtering  items into folders to use anything like fastmail.
>>  I do currently ssh into other shells as I said, but must visit shellworld
>>  first to do this much.
>>  Still, if creating shellworld 2 might be possible even on a dedicated
>>  machine, it might be worth exploring.
>>  I have 54 gig of data in my main shellworld account alone, 6 gig for my
>>  personal website..cannot imagine another shared hosting service giving me
>>  that kind of room, but might be wrong.
>>  Kare
>> 
>> 
>>
>>  On Mon, 15 Jul 2024, Chime Hart wrote:
>> 
>> >   Well Karen-and-All, Many of you are quite familliar with my road. I 
>> >   came
>> >   kicking-and-screaming from DOS2windows, slowly in 2003 Linux, but with
>> >   horrible DeC PC drivers in Speakup. Eventually in 2006 got rid of 
>> >   windows
>> >   all2gether. All along since 1995 I had Unix shell-accounts, Netcom, 
>> >   REXX,
>> >   PrimeNet, and Shellworld, where I hosted my web-site as well. In May of
>> >   2020 we almost lost Shellworld forever, so after at least 3 days of no
>> >   e-mail, with a big help of a dear friend, I switched my domain to
>> >   Fastmail. Unfortunately their interface does not work in a console 
>> >   setup
>> >   nor without javascript. After awhile they blocked traditional ftp 
>> >   access.
>> >   I found ncftp as an easiest client, but now must use web-dav which has
>> >   many fewer options. As far as your exact question, as you see I am not
>> >   hosting my web-site nor e-mail locally, however, we use exim4 to grab 
>> >   mail
>> >   from FastMail to my local machine. In addition, I have a laptop also
>> >   running Debian SID with a quite new Zabbly kernel. The laptop has
>> >   graphical so I can login to hotels when we travel. Eventually would 
>> >   like
>> >   to put graphical on my main machine so I can go to Zoom meetings. Wish
>> >   there were either a menu-driven or commandline Zoom client. Along the 
>> >   way,
>> >   while I've been in Linux nearly 21years, I almost still feel like a
>> >   beginner, but still sometimes when I atten a Linux LUG, I can still 
>> >   help
>> >   some1 else. Also, certainly folks there are still somewhat baffled how 
>> >   I
>> >   use a computer while totally blind.
>> >   I also have a MAC which I know little about, but took a class. I have a
>> >   Chromebook, but the Chromevox screen-reaeer is much less easty to use 
>> >   than
>> >   something like Speakup. I hope those details will provide some
>> >   prospective.
>> >   Chime
>> > 
>> > 
>> 
>> 
>
>

