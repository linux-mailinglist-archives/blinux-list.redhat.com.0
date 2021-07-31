Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 26AC43DC6E3
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 18:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627748475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Zsilo4b5r9Djgpi2+q26iShfJ2WJ4rwusgNefvSUkl0=;
	b=YXGgpriUFJkbsByPAJfU6Myf7MgeueR/DqSQNt5qypiBSIiiqihj2TqHKLqpDAo0ha/14z
	EUSsSweigwqdE93jas0uhM9p8DXhHegK8267lE8ChMP/R7vJ0Rw1F4qYKKnYHWxK2d0Vn4
	+yyGgb0z6r/VNiErvsfngT59/qKdlxk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-9kzrjOXSMye7n4I3JPnmTQ-1; Sat, 31 Jul 2021 12:21:13 -0400
X-MC-Unique: 9kzrjOXSMye7n4I3JPnmTQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8AE701074664;
	Sat, 31 Jul 2021 16:21:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CD765D9F0;
	Sat, 31 Jul 2021 16:21:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A8594BB7C;
	Sat, 31 Jul 2021 16:21:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16VGL2c4001827 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 12:21:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C5D1710130FC; Sat, 31 Jul 2021 16:21:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C18BB10130EB
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:21:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6616101A54C
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 16:20:59 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-253-Twq2zf6EMkep8GjXIxj-Zg-1; Sat, 31 Jul 2021 12:20:57 -0400
X-MC-Unique: Twq2zf6EMkep8GjXIxj-Zg-1
Received: by mail-qt1-f175.google.com with SMTP id b1so8781563qtx.0
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 09:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=bbfWtRCigBgVA7rTHBh/3QDfAjOO9t49UmFvy37omhQ=;
	b=CXJUrNBTCt5ffCyLfJqiZ9xKO7B67MZprC/HiZ6YIPWiUBnfrt9NSIjTX29cF8TVXI
	0uMjeqvrEzp9OJn5qChkLvKnmrTtfgWrsI1nNEU9Ge3w67tgukroDqhXMryiFsMTW2CQ
	Ai+65oevzb2GzvaafjRnFtwaKL9JcMlrxBSEKSVRUSEofRIAJBUH2C63qa/j8PUVGxp1
	+n+8O/imT0oJdHNQe9vkj1oKNIp20O4Vt5dsdS7Aad4I8VwBWg0HlG7YbBfj/nH2AsRR
	5+EIa8odC1BpmJvmsZ7sIDt+FJlzbh8hn+Uz+WUGKcLyf4BGKQevBXC61doz/AFrejSK
	ucHw==
X-Gm-Message-State: AOAM531adpUwmu4pJcD0VZKQ369v/CC1zWOVL/J0SSy1yFKId6n4Ytm9
	KHTgT8xomFG1A1ZaKrivPRxY6TYI/qY=
X-Google-Smtp-Source: ABdhPJyCUySOV0O0AwzDTzJcZfy2kGLZUFbPsZOymopHujb67nEE4fZSlTNzm9918/GfseytG6eW9g==
X-Received: by 2002:ac8:6709:: with SMTP id e9mr7219921qtp.149.1627748457118; 
	Sat, 31 Jul 2021 09:20:57 -0700 (PDT)
Received: from ?IPv6:2603:6080:6304:450a::433?
	(2603-6080-6304-450a-0000-0000-0000-0433.res6.spectrum.com.
	[2603:6080:6304:450a::433])
	by smtp.gmail.com with ESMTPSA id i7sm2202915qtr.80.2021.07.31.09.20.56
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 31 Jul 2021 09:20:56 -0700 (PDT)
Subject: Re: Setup of Raspberry PI
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <017601d78622$98193d80$c84bb880$@kellford.com>
Message-ID: <1dfdccb3-4de8-33bf-3c5e-cdcb00e01dc5@gmail.com>
Date: Sat, 31 Jul 2021 12:20:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <017601d78622$98193d80$c84bb880$@kellford.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Best is probably to use a different image. I get things working best 
using ArchLinuxARM and doing most of the setup over ssh. But there is a 
talking image available from

https://stormux.org/downloads

that although it starts minimal just as ArchLinuxARM does over ssh, it 
actually starts the Raspberry Pi talking so that you can install a 
desktop environment and get Orca going right from the Pi itself, no 
network connection required. If you have the Raspberry Pi 4, you can 
download the latest image.

https://stormux.org/downloads/stormux-pi4-2021-06-22.img.xz

If you have the Raspberry Pi 3 or 3B+, you will want this image instead.

https://stormux.org/downloads/stormux-pi3-20.03.07.img.xz

Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

