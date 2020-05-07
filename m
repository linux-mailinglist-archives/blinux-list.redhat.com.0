Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 289591C9B3E
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 21:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588880292;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=A2cb0chOESgoDhoJsnIrn6XJlBeqNKk0+WdHn3z/Jpc=;
	b=BzUsXCaDfWRgsrgPGqgtJ/rAl2m8FrHJwF7YowZktGCif8Ey/gqM1/7dR+75XZLSO8ww1T
	Hq+P44AbyzovZCq1RT6Q029Xsn8GPPTD+nUjDLx0OuOS5qQFsp4GV4nulXn6V7/nV3/Jyi
	aWonYBVcaPL4FyzX7sJ31kHMLABFw/k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-XCPRc3vJPeOQSxyUiUaHew-1; Thu, 07 May 2020 15:38:09 -0400
X-MC-Unique: XCPRc3vJPeOQSxyUiUaHew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7EF50835BAD;
	Thu,  7 May 2020 19:37:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3ED8D5FC2C;
	Thu,  7 May 2020 19:37:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C50F31809542;
	Thu,  7 May 2020 19:37:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047JbSg8019607 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 15:37:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1D5852026972; Thu,  7 May 2020 19:37:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 198572026E1C
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:37:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A16D7811768
	for <blinux-list@redhat.com>; Thu,  7 May 2020 19:37:25 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-46-mFnrw_foPuyTmu4JpRlA3A-1; Thu, 07 May 2020 15:37:22 -0400
X-MC-Unique: mFnrw_foPuyTmu4JpRlA3A-1
Received: by mail-ot1-f46.google.com with SMTP id t3so5560655otp.3
	for <blinux-list@redhat.com>; Thu, 07 May 2020 12:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=yOYkhiEqb37Sslzz4YGWntgwbD1GXYQzKC727WJvMlI=;
	b=EqWL+GLBkhC1Fh0o9j4TTm1KOga0Q2MrGuqhTVTroInu9hDv6NS4mcIp6Vxg1YhCCu
	o2dyRLN9NRsatL1nbG7ELKfllbINho0crAeiLWpt2LI3uljSktuRoMjClxKrbBJrxjjf
	l/MW81CfzcAi+lZL+qnRjab+do1596kJUtMUYABt9Z1M/azdVg55YCGO9sgyhtSN6BQa
	okOeVeiPkGSUwl1qqTK/tRIz6amOH2MrGRYTezAuUzrJQVdXF0c19DYnl7qH5N/4yTkb
	5EeGjFb6CjrfmXoYxeDf92rT6DTG8MQoapnaYjv+TWOLeLSORrs/NmI/7E7zPk0SFGSu
	R3jA==
X-Gm-Message-State: AGi0Pua3b9NT46h7XPP5SsljNlsUdNrZ+mhgV6EN7TFILGEiu6KiHInG
	RHBeMOWhnTeaJK+mJ9ipVQYJFSfv
X-Google-Smtp-Source: APiQypIImQm0MyOHkP/Aom/YSnaSJVfBGGBtuo+Mj7Qd4mgfRQqD0reJraASwKCinu55Hr4Ex/5ILw==
X-Received: by 2002:a05:6830:1d0:: with SMTP id
	r16mr13065521ota.4.1588880241246; 
	Thu, 07 May 2020 12:37:21 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:9ddf:9808:8078:c84e?
	([2601:3c2:8200:9360:9ddf:9808:8078:c84e])
	by smtp.gmail.com with ESMTPSA id l2sm1606051oib.58.2020.05.07.12.37.20
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2020 12:37:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Anything besides vanilla Arch?
Date: Thu, 7 May 2020 14:37:19 -0500
References: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
	<alpine.NEB.2.21.2005071040040.20641@panix1.panix.com>
	<C7AD6A0B-2C1B-4468-A337-812062331F24@gmail.com>
	<alpine.NEB.2.21.2005071214200.15709@panix1.panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.21.2005071214200.15709@panix1.panix.com>
Message-Id: <61E76085-7AA1-4410-9DBA-531C0A89DC46@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 047JbSg8019607
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I will give it a go.

> On May 7, 2020, at 11:15 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> If Jenux wasn't talking, I couldn't install it since I never had enough
> funds for a braille display and don't have sighted assistance with the
> exception of be my eyes.
> 
> On Thu, 7 May 2020, Linux for blind general discussion wrote:
> 
>> Date: Thu, 7 May 2020 11:37:47
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: Anything besides vanilla Arch?
>> 
>> Is Jenux with a talking installer?
>> I had not heard of Jenux.
>> 
>>> On May 7, 2020, at 9:42 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>> 
>>> I have Jenux installed and you get a choice of gnome mate kde or base
>>> type installs with that distribution.  Oh, I forgot there's also a
>>> couple android distributions it will do for you too if desired.  The
>>> android installs have talkback for a screen reader.
>>> 
>>> wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
>>> wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
>>> sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
>>> On Thu, 7 May 2020,
>>> Linux for blind general discussion wrote:
>>> 
>>>> Date: Thu, 7 May 2020 06:22:56
>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>> To: Blinux-list@redhat.com
>>>> Subject: Anything besides vanilla Arch?
>>>> 
>>>> Hi there,
>>>> 
>>>> 
>>>> 
>>>> I have been running Ubuntu and Ubuntu spins for a while now and am looking
>>>> for something else for a change. I have installed vanilla Arch before, but
>>>> that was when my system was only running Linux. Due to the work I do, NVDA
>>>> certified expert, Training and tech support, et al, I have to have a Windows
>>>> instance to boot in to. I am not comfortable installing vanilla Arch on here
>>>> at this time.
>>>> 
>>>> 
>>>> 
>>>> Are there any Arch based distros we can actually install without sited help?
>>>> 
>>>> 
>>>> 
>>>> Warm regards/Groetnis/herzliche Gr??e,
>>>> 
>>>> 
>>>> 
>>>> Brandt Steenkamp
>>>> 
>>>> 
>>>> 
>>>> Contact/Kontak/Kontakt
>>>> 
>>>> 
>>>> 
>>>> Twitter: www.twitter.com/brandtsteenkamp
>>>> <http://www.twitter.com/brandtsteenkamp>
>>>> 
>>>> 
>>>> 
>>>> Skype: brandt.steenkamp007
>>>> 
>>>> 
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>>> 
>>> 
>>> --
>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>> 
>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> -- 
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

