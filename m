Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9387160DB8
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jul 2019 00:22:15 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5950436883;
	Fri,  5 Jul 2019 22:22:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDCE551409;
	Fri,  5 Jul 2019 22:22:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A7AE4EBC9;
	Fri,  5 Jul 2019 22:22:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x65MM60g031936 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 18:22:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 955F057A4; Fri,  5 Jul 2019 22:22:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx03.extmail.prod.ext.phx2.redhat.com
	[10.5.110.27])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CE33578A
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 22:22:04 +0000 (UTC)
Received: from shorthand.o2switch.cloud (shorthand.o2switch.cloud
	[109.234.163.90])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B4CDA83F45
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 22:22:02 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 66DB3100431.A2F91
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Duw/PB9kAxe8HroFd/AAUl1278Vtj0Ef67UNB7FO/vQ=;
	b=huLPb8DzBacOhrikSURZDYbFwT
	AA826fmfQ7TbjgBGP62VMQ2104ynm00E0xSWn1AkZkpmtWeL4IYFdA6vqyYr+oMWRz5fOjbY7XycN
	R4/GNYdlW0RU6KzCo1ggSzu+ZIMFmGlGomnbAPoTrnNMXxwMJqdCbwBl5CI8rnOPAjm0=; 
Subject: Re: Need a memory refresh
To: blinux-list@redhat.com
References: <20190705213906.GA11497@abilitiessoft>
	<Pine.LNX.4.64.1907051451380.12455@server2.shellworld.net>
Message-ID: <2fe2c21f-fbfa-90db-c416-8d70b416117c@slint.fr>
Date: Sat, 6 Jul 2019 00:16:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.1907051451380.12455@server2.shellworld.net>
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
X-Greylist: Delayed for 00:05:50 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.27]); Fri, 05 Jul 2019 22:22:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]);
	Fri, 05 Jul 2019 22:22:03 +0000 (UTC) for IP:'109.234.163.90'
	DOMAIN:'shorthand.o2switch.cloud'
	HELO:'shorthand.o2switch.cloud' FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.90 shorthand.o2switch.cloud 109.234.163.90
	shorthand.o2switch.cloud <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.27
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 05 Jul 2019 22:22:14 +0000 (UTC)

Didier here.

No need to do that: as others have pointed out, "su - otheruser" will move you to /home/otheruser

Further, you would need to switch user first, else you won't be allowed to "cd /home/otheruser".

Best,

Didier

On 7/5/19 11:53 PM, Linux for blind general discussion wrote:
> Well John, if you are in your own directory, you can type cd space dot dot. You would then be at a directory of all users, so you can run an ls and cd over to your chosen user.
> Chime
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
