Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id A20659BE68
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 17:12:53 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0D57530832EA;
	Sat, 24 Aug 2019 15:12:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 785215C28C;
	Sat, 24 Aug 2019 15:12:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A30444A486;
	Sat, 24 Aug 2019 15:12:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OFCmtC008358 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 11:12:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0CF0F1001947; Sat, 24 Aug 2019 15:12:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07E881001B12
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:12:44 +0000 (UTC)
Received: from boudin.jabatus.com (boudin.jabatus.com [109.234.162.62])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BCB753082A98
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 15:12:43 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 1F2961007A4.A3719
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=wNBCymo60CWd0a6CyCWSFG5UmoewYgEik5QuywDf7go=;
	b=JARpZt45xgQlAKBdoHTwOvCH4h
	Mq+EjeYuW8d6FpxZHgNp4dv7k/8lX8yqBMQnmdqllMiWdFOlj8ao+0PP/nAwLesVFQcPtpvDA0W6K
	1Eakrj2GRjQbywvcWjPDS9u2OOywY4CSD6q7tEqMt6b959m7TKQakw0FiSSlTOZkBogM=; 
Subject: Re: Slint package error
To: blinux-list@redhat.com
References: <b7cfca6c-6cfa-4efd-8e9a-7c9649412efa@GMAIL.COM>
Message-ID: <9b9bc06c-d84f-92fb-d2a3-afa4637639d2@slint.fr>
Date: Sat, 24 Aug 2019 17:12:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b7cfca6c-6cfa-4efd-8e9a-7c9649412efa@GMAIL.COM>
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
X-Greylist: Delayed for 18:22:40 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.45]); Sat, 24 Aug 2019 15:12:43 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Sat, 24 Aug 2019 15:12:43 +0000 (UTC) for IP:'109.234.162.62'
	DOMAIN:'boudin.jabatus.com' HELO:'boudin.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.162.62 boudin.jabatus.com 109.234.162.62
	boudin.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Sat, 24 Aug 2019 15:12:52 +0000 (UTC)

At the TARGET step, you need to accept to format the partition used for root or /. Accept default filesystem proposed ext4.

The reason is 'auto' does create the partitions, but does not install a filesystem in them.

You can reuse the same disk and go directly to the TARGET step after having logged in as root.

Best,

Didier



On 24/08/2019 17:00, Linux for blind general discussion wrote:
> I'll detail what I do to run into this.
> 
> 
> 1. I download a fresh ISO from slint.fr and the 'get and install Slint' section, which takes me o the Slint UK one, and I get the .iso from there
> 
> 
> 2. I create the disk.raw file with size 30GB
> 
> 
> 3. I do sudo sh qemo (else qemu won't work)
> 
> 4. Boot up and choose auto partition
> 
> 
> 5. Get to the p[art where it asks to install packages, going with default options all the way.
> 
> 
> Every package it tries to install, has the 'there was a fatal error' message with it. I've tried a fresh download, the md5 verifies the ISO as correct.
> 
> Any ideas? Does the auto partition break things?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
