Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A5B49B4EA
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jan 2022 14:24:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643117071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Rear1LF2TmTP2NOcqhff+8W6u/u3U4m4dGZf3gaeesU=;
	b=V95AgLGr6uXOUMgEKfFYP0hUoHGO4l+xtBEMKua2ErAuntUYNDXCvQMvQ8FeR6emhVoPNr
	Fy58ag9UgOzD4qLc5Cae8ZVwjBwen+I9RD4eBzaWioo4znfvUpupOpbc+PL9rkXJYQKSvQ
	LodnWxO7QBiyfoW9suvKbckfUll+BrI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-oGC5vV_xOua600gsXitPFQ-1; Tue, 25 Jan 2022 08:24:28 -0500
X-MC-Unique: oGC5vV_xOua600gsXitPFQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30D041932483;
	Tue, 25 Jan 2022 13:24:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE4F0752C5;
	Tue, 25 Jan 2022 13:24:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0084C1809CB8;
	Tue, 25 Jan 2022 13:24:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20PDO1bv021432 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 Jan 2022 08:24:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 42FC5400E135; Tue, 25 Jan 2022 13:24:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F1BE40ED413
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 13:24:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 282163C00133
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 13:24:01 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-618-FJ72SaKkNvqmlc0j8bsKFA-1; Tue, 25 Jan 2022 08:23:59 -0500
X-MC-Unique: FJ72SaKkNvqmlc0j8bsKFA-1
Received: by mail-wm1-f42.google.com with SMTP id
	l12-20020a7bc34c000000b003467c58cbdfso1607929wmj.2
	for <blinux-list@redhat.com>; Tue, 25 Jan 2022 05:23:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=8cnZzQ7fnkB5E1J2VpCkU7pf0FLcNZzRAFjHuaP35yI=;
	b=1TBuEfcKV9C7MvM9No5JKpgXYhscK1y1zkLU/VEjmm8TbQ6f5ePZadAjS2H4jsxm9P
	MlSfTHonxN4cF/4rXvHQSu71bDVqQBeax32hCuGJT/3Qng8bf7gDR+8dfByqZ4iW74oU
	lC3MU4PghCEWnU2X6969hH+xbuBu/7MW5k6YEXMHqk1dFeWHhz5kq1ZyBYcpzCfAVSnE
	ZOxGwzJg1gIkDwcII8BeyVrJQTyYv9QzPZifadGb80oKvR4L9czoaopV3zVgSzazgH/E
	ctsOyviNFU2tkGqLRmgs5sFWnD0bYP3Hb6PvWMKwY9fS5dcWZtyk/5vG0WLyg3N36Vcu
	oE5w==
X-Gm-Message-State: AOAM530hOfDbjYTQHseJCI93F0b3ysg+P1Wy1Mb6tkgd+wo2rGkkbX87
	HmkTnuemf0fQh8ytdA3OlBMVLFUNKt/VOA==
X-Google-Smtp-Source: ABdhPJyJJq8Inf9KdXH+Uj8ZSRbWvJa3UJA6tHt1bgEB6cHTdFTOImTLPv3o6tB7KSzqbYIqnyKsPw==
X-Received: by 2002:a05:600c:1f06:: with SMTP id
	bd6mr2960943wmb.117.1643117037430; 
	Tue, 25 Jan 2022 05:23:57 -0800 (PST)
Received: from [192.168.1.130] ([87.74.163.68])
	by smtp.gmail.com with ESMTPSA id
	m187sm320460wme.25.2022.01.25.05.23.56 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 25 Jan 2022 05:23:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Arch from existing install or VM, how easy is it?
Message-ID: <a55af976-4d5d-aa02-4acf-c2d1bfecbf13@gmail.com>
Date: Tue, 25 Jan 2022 13:24:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So I'm looking at the Arch wiki currently, and wondering what the 
easiest way to achieve what I want is.

For context, I have a Solus install, in /dev/sda I have /dev/sdb as a 
2.7T drive with nothing on it, no partitions, no file system at all 
going by lsblk

I have a 16g qemu VM (thanks quickemu) that boots up fine in qemu as well.

I've read over the pages about installing, installing from an existing 
Linux system, and moving a VM install out of that VM.

Which would be the safest option, bearing in mind Solus's quirks about 
how it does things, to get a working, bootable Arch system?

What I'm after is putting Arch on /dev/sdb and using that 2.7T of space, 
preferably without having to shut down and reboot from a USB stick. I 
ruled out the replace an existing OS option in the install from an 
existing Linux install, mostly since I like having my fallback option.

So is what I'm after relatively doable? I've gone over the wiki pages a 
few times and am not sure which method will get me a working system that 
I can boot into the easiest.

Ideally I don't want to have to shut down my computer, boot from a USB 
stick and then fight with the install guide because of something I 
typoed, given how typo prone I can be at times

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

