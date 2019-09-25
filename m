Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4FBBDFF2
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 16:24:39 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A1D11C05AA57;
	Wed, 25 Sep 2019 14:24:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D78662A77;
	Wed, 25 Sep 2019 14:24:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A0E84EE68;
	Wed, 25 Sep 2019 14:24:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PEOTiP016326 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 10:24:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 96E1536EE; Wed, 25 Sep 2019 14:24:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx24.extmail.prod.ext.phx2.redhat.com
	[10.5.110.65])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9177D5D9E1
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 14:24:24 +0000 (UTC)
Received: from rognon.jabatus.com (rognon.jabatus.com [109.234.165.49])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 43642109EFC3
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 14:24:22 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 4D8EB10043B.AC347
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=O3U4L5LKH52MVyDic7bXVIBtMBLI9+518L+/QdvraNk=;
	b=gHQq6/vshuxMRrAHp5Nmgev+Nk
	tCWrlZrYEP0I0832MrI5J9rLgEN0kJAyZdeHjcFdNgNT3LFtTK02/CBe6IRSBcZMKbFS3P5YVgu/K
	0/ecckdyJJ3ji0Wwh820iqS/sDpCz0nKsTkoOPV2SrtCpqNRQVXbxtYdIg6UiLIVk+Fk=; 
Subject: Re: grub problem
To: blinux-list@redhat.com
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
Message-ID: <3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
Date: Wed, 25 Sep 2019 16:24:05 +0200
MIME-Version: 1.0
In-Reply-To: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
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
X-Greylist: Delayed for 66:36:23 by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.65]); Wed, 25 Sep 2019 14:24:23 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.65]);
	Wed, 25 Sep 2019 14:24:23 +0000 (UTC) for IP:'109.234.165.49'
	DOMAIN:'rognon.jabatus.com' HELO:'rognon.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.165.49 rognon.jabatus.com 109.234.165.49
	rognon.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.65
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Wed, 25 Sep 2019 14:24:38 +0000 (UTC)

Hi Kristoffer,

If I understand well you installed Linux, then Windows.

In such a scenario I think that Windows install its own
bootloader replacing GRUB.

If this is correct you could just start again the installer
of your Linux distribution and from there reinstall GRUB.

The way to do hat depends on your linux distribution and version,
please indicate what the are so give you accurate guidance.

Best,

Didier

On 25/09/2019 12:09, Linux for blind general discussion wrote:
> Hi.
> I don't know if I've written here about this before.
> I've got a hp prodesk 600 computer.
> I have installed windows.
> But I can't boot linux. I don't even get grub. when I boot the
> computer it boots into windows.
> It has worked on every computer I've had except this one.
> LInux works very good on this computer without windows installed.
> 
> 
> -- Kristoffer Gustafsson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
