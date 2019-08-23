Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 4658A9B791
	for <lists+blinux-list@lfdr.de>; Fri, 23 Aug 2019 22:11:41 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CAA737DD11;
	Fri, 23 Aug 2019 20:11:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 835B45D6B2;
	Fri, 23 Aug 2019 20:11:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED4D92551C;
	Fri, 23 Aug 2019 20:11:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NKBaVf014649 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 16:11:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A354184F3; Fri, 23 Aug 2019 20:11:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx26.extmail.prod.ext.phx2.redhat.com
	[10.5.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E54960C44
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:11:34 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7C0F6898106
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:11:33 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id v15so9945420wml.0
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 13:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=TkPs+wfT2KSVZm/D8K17qVoUmUGo6W8lyGb0S+xrhwk=;
	b=EgpIZYo4BFmrvFkkAXwmedxiJwQhwIc97fQw12VdoBi9UqntQRwEXRj43sMreo4YzQ
	AtEs9GEBN1qsHHFQ6TzMvX5zCYS1emQRf4aXyqIfL6C4NjoW8QBQorcF6to2BsHDdDJi
	zxwLZgZf6bHJekU+nzsolA9F49etJbn6hegpQ1vwJFIq/GgAL48LmD3wfoMaJ8Ce6kBE
	ljh8/DXutiKKxsWjU0oXURlYQat495JtBbvUMq2linO96Dm9/jHy9yEY8bmZbOD0Zffl
	byJPb10TCbl76qBXtNHog4+n4WHfwsRLy6FmB8VM2APeYAdWYdwhASF9af9Boiz3ajTp
	mlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TkPs+wfT2KSVZm/D8K17qVoUmUGo6W8lyGb0S+xrhwk=;
	b=WNTxEGvnytzCda11DHlA4Y6mWMi8Uvidz7PVg9Orzpw24jTBBM3KBDe4F5t+TSgilb
	4im/kDmatH/ANDW5uwHCr5myb0mhE42u0/DQv6P9EMwT/9Qnzo1zHeBqIrc6nkFdU5SG
	YPB8/57doNxWzci+aEzmB7+C9Wb2RzT168nkfGThtNHGhIgvHLiGAS1ZcLK5mLgstmec
	kOOY241dpgmsg1U3Kdf3gZPvQcF8J/I10RVvHGc+92NKS9Rn/6Mq1GfZiTYG4xO2pZi9
	5UCdvDF/bEhSyEwIkxCyuZG4K4ixe2dJldYaciRXUqGZfAC4u9FORkBAUYpmOCFGqiCw
	f5Pg==
X-Gm-Message-State: APjAAAVuvWUSDU3oEYdnzZbzG8/ECUdm/6Ptb7IDj44RTynGaBDdFGLH
	WshHaIit4Ikcnu/sZJyqRAkjrGlM
X-Google-Smtp-Source: APXvYqwNXTToPRLM7TJKJN/FYyo1gL6S3aJkeCJuZXqOO00ftc0ZO05YnilC+EKGYAwjOOX7lBb4AA==
X-Received: by 2002:a1c:ef18:: with SMTP id n24mr7273916wmh.29.1566591091994; 
	Fri, 23 Aug 2019 13:11:31 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:cdf6:72ee:1897:727a?
	([2a04:b2c2:807:200:cdf6:72ee:1897:727a])
	by smtp.gmail.com with ESMTPSA id
	a18sm5492982wrt.18.2019.08.23.13.11.31 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 13:11:31 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
Message-ID: <f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
Date: Fri, 23 Aug 2019 21:11:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.67]);
	Fri, 23 Aug 2019 20:11:33 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]);
	Fri, 23 Aug 2019 20:11:33 +0000 (UTC) for IP:'209.85.128.52'
	DOMAIN:'mail-wm1-f52.google.com' HELO:'mail-wm1-f52.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.52 mail-wm1-f52.google.com 209.85.128.52
	mail-wm1-f52.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.67
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Fri, 23 Aug 2019 20:11:40 +0000 (UTC)

I thought for some reason Vbox (the one from the 18.04 repos) supportd 
Slackware? I'm not sure though, when I put in Slackware so Vbox can auto 
find it, it defaulted to Win7. Not...quite what I want. So...yeah, 
anyone got Slint to work on a VM? I have a perfectly good Ubuntu 
physical machine, wanted to test Slint out and see if it's any good in a VM

On 23/08/2019 21:08, Linux for blind general discussion wrote:
> I tried this under Windows and VMWare player, had the same issue.
>
>
> No longer an option, soled the Mac with the bootcamp, so have to learn 
> virtualization the linux way, since it is all I have now.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using thunderbird on Ubuntu 19.04.
>
> I teach macOS as well as iOS, not because I want to, but because it's 
> easy.
>
> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>> Okay, I'm trying to set Slint up in Virtualbox but....using the 
>> latest ISO, nothing happens. What settings do I need to config for 
>> the VM to work successfully?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
