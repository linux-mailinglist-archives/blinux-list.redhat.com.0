Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65A58B6A
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 22:14:41 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9797585362;
	Thu, 27 Jun 2019 20:14:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5114960856;
	Thu, 27 Jun 2019 20:14:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2FF4206D2;
	Thu, 27 Jun 2019 20:14:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RKDjjf000588 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 16:13:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27BBC6012E; Thu, 27 Jun 2019 20:13:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22FFE6012D
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 20:13:42 +0000 (UTC)
Received: from cage.o2switch.cloud (cage.o2switch.cloud [109.234.163.87])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 255F53082B6B
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 20:13:11 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: s
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=1.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00,
	URIBL_BLOCKED 1.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 970761007DD.A486F
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OH+8zPi4y7NgKnfq4tj7dqXQmIB55Yxn3FskfhBqzmE=;
	b=f0Zl21bBeW+Vx2mG3nIvk+k1wm
	MMzAYzQHgSzdzVvjYTihOOOclTsFpmc6/HNZaISPH3vFlkC8FXffMYQDbGjrnuK0gu2JWA7a+Dz/X
	fCJezRigPa+q7kTzwzhmtSit8sC5SxCnDkl5LrggQ9TTROJdlF6WTwz2ZHuXVPIgalp4=; 
Subject: Re: climagic
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.1906271110410.22430@panix1.panix.com>
	<CAO2sX31x2=fK7_HtdOc-dXtTt2chZ8P8FUaQ30HHA872UXH87A@mail.gmail.com>
Message-ID: <47a843cf-0663-454a-08d5-577d59da03be@slint.fr>
Date: Thu, 27 Jun 2019 22:13:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAO2sX31x2=fK7_HtdOc-dXtTt2chZ8P8FUaQ30HHA872UXH87A@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Greylist: Delayed for 73:13:43 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.45]); Thu, 27 Jun 2019 20:13:26 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Thu, 27 Jun 2019 20:13:26 +0000 (UTC) for IP:'109.234.163.87'
	DOMAIN:'cage.o2switch.cloud' HELO:'cage.o2switch.cloud'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.87 cage.o2switch.cloud 109.234.163.87
	cage.o2switch.cloud <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 27 Jun 2019 20:14:40 +0000 (UTC)

Hello,

This means that you don't have the pcspkr driver built-in
your kernel or as a module.

To confirm, please provide the output of:
zgrep -i pcspkr /proc/config.gz

Please indicate your distribution and version.

Best,

Didier Spaier
Slint maintainer
http://slint.fr


On 6/27/19 5:53 PM, Linux for blind general discussion wrote:
> Okay, sounds like this might be why I can't get the beep command to
> sound, but when I try running
> 
> sudo modprobe pcspkr
> 
> I get a module not found error.
o

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
