Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 9FB5DED468
	for <lists+blinux-list@lfdr.de>; Sun,  3 Nov 2019 20:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572810359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T9VIzDaK9t6aYtdufL4o5Hmi81Iu6QtA52Xqs0jI4/c=;
	b=FnAb2nglJ3i4uOhbrcbdY3X3vkBu9KBJjgNLoD8adlGTHr6HzWSd+cyz16/S3dRnVwOrcR
	amrNzM2xpN1JgqhqdG0BFXkziGu6B5TfjpMCCYf8tpv6bwa0AdTIRG09hJ2WA2MWJ1KJZs
	S/zBNCv9VjSRPvTJh8u7U91CFzbCJQw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-4Wiz35TWOTeMrEYqC1kWZA-1; Sun, 03 Nov 2019 14:45:57 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A23531800DFB;
	Sun,  3 Nov 2019 19:45:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D99CE6085E;
	Sun,  3 Nov 2019 19:45:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F3EE1809567;
	Sun,  3 Nov 2019 19:45:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA3JjbNB024426 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Nov 2019 14:45:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 30BDF5D9E5; Sun,  3 Nov 2019 19:45:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx29.extmail.prod.ext.phx2.redhat.com
	[10.5.110.70])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2ACC35D9CD
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 19:45:34 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B949218C8907
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 19:45:33 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id v3so12533463wmh.1
	for <blinux-list@redhat.com>; Sun, 03 Nov 2019 11:45:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=RiwjhnUZIgzaHxEzN2J18hRCkLrnRqRNLISvsrTDGEM=;
	b=tfViO6/reyp3aYyN/4I2vSse1PKx8D5ipTdfncCeUrMFVoHIxiGdu6UnTkP3NNqQhe
	UitMce2YHXk5Zy5/eaZXMau8IRzMoULRQbYtX9p1CVxVtPifMYpkkhHSRvR+FYZiK51K
	7AaLDy8c8q1v428+z/xSY2xRqexfoMLdslc7pN8PltzOYo/kpr5T/5ZrMVZzpgs2+R7C
	c6AhcrBTy2+LF0K9tM6JbbvnFW6wg4+R0y5xPOQjQL9oCbhAnpinKPSuPiJQFaonmMtT
	BmmT0OpHeVs4bUtEl26XbngeVW8IjlUSXIZi32KY3qWvMZ8E7aIHNcy8DOs4W3CP32di
	vMUA==
X-Gm-Message-State: APjAAAWdM/8DRuL0FP372gCgpk7ZKuhLMBcYVueVBHhnykaGT52JANSA
	WWCkP6yQv3IF8mlR3cSXsfbi2PuA
X-Google-Smtp-Source: APXvYqxeyb/blO6pM3P+DM+8s5dedVeqf+E75fKevtp78osBkj+UN4KEvHjijoeCMUy1dDzRTfou2g==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr21435530wmj.150.1572810332015; 
	Sun, 03 Nov 2019 11:45:32 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1832:3b00:895:8bb2:9090:1d62?
	([2a04:b2c2:1832:3b00:895:8bb2:9090:1d62])
	by smtp.gmail.com with ESMTPSA id
	c144sm14008963wmd.1.2019.11.03.11.45.30 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Nov 2019 11:45:31 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Ubuntu, UEFI and hard disks
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
Message-ID: <aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
Date: Sun, 3 Nov 2019 19:45:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <07efbaf7bb6160fb186d50a201106a80@ijn2.net>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.70]);
	Sun, 03 Nov 2019 19:45:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]);
	Sun, 03 Nov 2019 19:45:34 +0000 (UTC) for IP:'209.85.128.44'
	DOMAIN:'mail-wm1-f44.google.com' HELO:'mail-wm1-f44.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.15  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.128.44 mail-wm1-f44.google.com 209.85.128.44
	mail-wm1-f44.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.70
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: 4Wiz35TWOTeMrEYqC1kWZA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I do have Windows installed, yes. I'm using Ubuntu 18.04.3 Mate, mostly 
since I've had zero issues installing it on other systems even with SSDs 
in (my desktop has SSDs in it for example). Everything I've read and 
been told by Canonical is to keep UEFI on but remove secure boot to 
avoid problems, so that's what I did. I went through and made the 
bootable USB with Rufus in Windows, and yes it boots. But...

Having checked it, it's a SSD, 256GB (which is fine for my laptop), 
so....is there anything in particular I need to gett Ubuntu Mate 18.04.3 
and the Ubiquity installer to detect the SSD and NVME connections?

On 03/11/2019 18:44, Linux for blind general discussion wrote:
> Hello, Birdie here!
>
>> I posted this over at askubuntu but I figured I'd ask here too. Got my
>> laptop to boot into Ubuntu Mate. Problem is...it won't detect the hard
>> drive at all. I can do slblk and all it shows is dev/sda (which is the
>> USB stick). Installer picks up the stick too and tell me I need 8GB of
>> space on the 8GB memory stick.
>
> Most likely your problem is that the storage in your new laptop is
> not what we know as a hard disk. It could be that it is a solid state 
> disk.
> If the storage connection is NVMe (Non volatile memory express) it would
> show up as /dev/nvme0*. There are also other possible alternatives
> depending on connection and storage type. SSD is not the only 
> possibility.
>
> Most likely your Ubuntu distribution doesn't understand your laptops
> storage controller.
>
>> I went into Win10's settings and turned off UEFI, then secure boot.
>> So. Should I reenable the UEFI firmware but leave secure boot off,
>> or...?
>
> By all means you should have left the settings intact. All decent
> Linux distributions are able to boot with UEFI and secure boot.
>
> Since we don't know anything about your laptop nor your Ubuntu Linux
> distribution all this is only speculation.
>
> If you would like to have a better and more educated answer to
> your problem please tell as much as possible about the situation.
> If you still have Windows installed on the computer you could go to
> About this computer and check what kind of storage you have installed.
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

