Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3C3BE0D1
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 17:08:16 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3A671300CB2B;
	Wed, 25 Sep 2019 15:08:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96F621001B00;
	Wed, 25 Sep 2019 15:08:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E33404EE6A;
	Wed, 25 Sep 2019 15:08:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PF89ZM019018 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 11:08:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9D28C64046; Wed, 25 Sep 2019 15:08:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx27.extmail.prod.ext.phx2.redhat.com
	[10.5.110.68])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73BDA6062B
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:07:52 +0000 (UTC)
Received: from limonade.jabatus.com (limonade.jabatus.com [109.234.165.188])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 06973A44AD7
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:07:52 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 8807A100437.AA6D4
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=q8Cq7+diEGU96JRnqHXd8ciu+5cWDTGXiaZTQARTsSE=;
	b=e8cpCdqLZlJ+A2MkYrVscVNfjy
	NyzlPzI3sn7+5PpLVe7HUNFVgH0e264YFacvl/Yp85x1bG18dnvc1Li5IvbEse5ZwrRUTbYgW3Xhb
	r33ve4P4HQ7hdhCGhjBYSLezag/9Jjrl/KxdQynZm9uvMrhBzPRpZvgXle6pytCeUGRs=; 
Subject: Re: grub problem
To: blinux-list@redhat.com
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
	<CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
	<CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
Message-ID: <989ae4bf-dd95-9c80-a903-4a715106bb53@slint.fr>
Date: Wed, 25 Sep 2019 17:07:49 +0200
MIME-Version: 1.0
In-Reply-To: <CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
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
X-Greylist: Delayed for 67:19:53 by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.68]); Wed, 25 Sep 2019 15:07:52 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]);
	Wed, 25 Sep 2019 15:07:52 +0000 (UTC) for IP:'109.234.165.188'
	DOMAIN:'limonade.jabatus.com' HELO:'limonade.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_NONE) 109.234.165.188 limonade.jabatus.com 109.234.165.188
	limonade.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.68
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Wed, 25 Sep 2019 15:08:15 +0000 (UTC)

Which distribution and version of the distribution?

On 25/09/2019 17:00, Linux for blind general discussion wrote:
> I installed windows first.
> I got question if I wanted to write grub to mbr. I answered yes.
> 
> 
> 2019-09-25 16:38 GMT+02:00, Linux for blind general discussion
> <blinux-list@redhat.com>:
>> Yeah, I think it's been more than a decade since I last setup a dual
>> boot, but everything I've ever read on the subject says Windows
>> doesn't play nice with other OSes so you should install Windows first
>> to ensure you don't end up with a boot loader that ignores anything
>> that isn't Windows, and I've never read of Windows fixing this bad
>> behavior.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
