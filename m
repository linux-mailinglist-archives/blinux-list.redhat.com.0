Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EA0825EE
	for <lists+blinux-list@lfdr.de>; Mon,  5 Aug 2019 22:18:14 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BE47A3087958;
	Mon,  5 Aug 2019 20:18:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0228310016E8;
	Mon,  5 Aug 2019 20:18:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E88B41800204;
	Mon,  5 Aug 2019 20:18:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x75KI6h5001383 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 16:18:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D09DE3CCA; Mon,  5 Aug 2019 20:18:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx02.extmail.prod.ext.phx2.redhat.com
	[10.5.110.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C791845A7
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 20:18:04 +0000 (UTC)
Received: from tripes.jabatus.com (tripes.jabatus.com [109.234.164.19])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id F357B7BDA1
	for <blinux-list@redhat.com>; Mon,  5 Aug 2019 20:18:02 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: s
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=1.502, required 5, autolearn=disabled, KAM_SHORT 1.50,
	SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: C0E3B10090E.A569A
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QrUI20oT4wFWQcbGVpHUmjnvylgHG/8K7faAzGXpG9c=;
	b=lG/i5GVVOJbrCxzU9K3oOMyj5N
	ZCnAx7E7VWWBegkrHJa0qFgqGRmFVLtMsFfFTrnr1hilcGoTJhldoRY/bMH6FpY4Ev1YIIvTS0uCH
	qs/FHM51qC7cIgZO9rClIEXZqvYz0qHiAqObzvoB0sqH0SMIyhOOHZZ87Z2M2rbrX9WI=; 
Subject: Re: No F Key Boot Menu
To: blinux-list@redhat.com
References: <20190805.195033.561.2@[0.0.0.0]>
Message-ID: <86e698ff-bb53-c6b6-c5d6-d633b14f9122@slint.fr>
Date: Mon, 5 Aug 2019 22:12:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805.195033.561.2@[0.0.0.0]>
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
X-Greylist: Delayed for 00:05:08 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.26]); Mon, 05 Aug 2019 20:18:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]);
	Mon, 05 Aug 2019 20:18:03 +0000 (UTC) for IP:'109.234.164.19'
	DOMAIN:'tripes.jabatus.com' HELO:'tripes.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.164.19 tripes.jabatus.com 109.234.164.19
	tripes.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.26
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Mon, 05 Aug 2019 20:18:13 +0000 (UTC)

Hello George,

Didier Spaier here.

I couldn't find an user manual for your firmware.

However there is a support form for end users here:
https://ami.com/en/support/technical-support/
I hope it's accessible.

Just FYI with my firmware pressing F12 allows to choose
which device to boot from, but this feature has to be
enabled in some firmware setting.

Talk to you on #a11y <smile>

Best,

Didier
  

On 05/08/2019 21:50, Linux for blind general discussion wrote:
> My bios:
> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
> UEFI: American Megatrends Inc. 2.08 06/28/2019
> does not seem to have a function whereby you can select a device to boot from using one of the function keys. Instead, one must physically go into the bios and change boot order, if, for example, you wish to boot from a flash drive to install an OS. And if that flash drive is subsequently removed, the system will not boot, until you go into the bios and change the boot order, again.
> My question: is this normal bios behavior these days, or is something wrong in my particular implementation. I turned off the secure boot function in there. Would turning that on fix this? What else might I look for in the bios to either (a) allow for falling back on different devices should one be removed or (b) to allow the function key boot menu found in previous bios implementations.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
