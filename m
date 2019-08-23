Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id E56029B7EC
	for <lists+blinux-list@lfdr.de>; Fri, 23 Aug 2019 22:54:17 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B8A2918C4271;
	Fri, 23 Aug 2019 20:54:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75C765F71E;
	Fri, 23 Aug 2019 20:54:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9C9361802218;
	Fri, 23 Aug 2019 20:54:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NKs6dQ015825 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 16:54:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C28C5608C2; Fri, 23 Aug 2019 20:54:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx07.extmail.prod.ext.phx2.redhat.com
	[10.5.110.31])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBC8460925
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:54:04 +0000 (UTC)
Received: from limonade.jabatus.com (limonade.jabatus.com [109.234.165.188])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2E0EFC057E3C
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:54:03 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 573B9100A52.A432F
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=5IWQDnvk6ZrC0/a+Lndg+aMe/XeZexrkj1rYGWvQBB8=;
	b=Hjz1E0R179HknRraRISkGD7H1U
	ZPNrJfMcUQDIDSh/l0OatTQO9LHl1H4JmuSNNijzIBSwSZjj6+5Y8zrX50MwCfyD8jAe63X/Zpr5c
	P1t5NgE4bb4gPiDAu4VEihkrNChy/NtUFz3zrcAnec7Lz41tCJg38Vhc6C0NEDfcEv1Q=; 
Subject: Re: Slint and VM
To: blinux-list@redhat.com
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
Message-ID: <78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
Date: Fri, 23 Aug 2019 22:48:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
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
X-Greylist: Delayed for 00:05:00 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.31]); Fri, 23 Aug 2019 20:54:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]);
	Fri, 23 Aug 2019 20:54:03 +0000 (UTC) for IP:'109.234.165.188'
	DOMAIN:'limonade.jabatus.com' HELO:'limonade.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.165.188 limonade.jabatus.com 109.234.165.188
	limonade.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.31
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]); Fri, 23 Aug 2019 20:54:16 +0000 (UTC)

Hello,

Didier, Slint maintainer, here.

I suggest to use Qemu instead. It works well, and the sound is way better than with VirtualBox.

That's what I use first to test the new Slint ISOs, before trying them on bare metal.

If you need help to set up the virtual machine, just ask.

Best regards,

Didier

On 23/08/2019 22:11, Linux for blind general discussion wrote:
> I thought for some reason Vbox (the one from the 18.04 repos) supportd Slackware? I'm not sure though, when I put in Slackware so Vbox can auto find it, it defaulted to Win7. Not...quite what I want. So...yeah, anyone got Slint to work on a VM? I have a perfectly good Ubuntu physical machine, wanted to test Slint out and see if it's any good in a VM
> 
> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>> I tried this under Windows and VMWare player, had the same issue.
>>
>>
>> No longer an option, soled the Mac with the bootcamp, so have to learn virtualization the linux way, since it is all I have now.
>>
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent using thunderbird on Ubuntu 19.04.
>>
>> I teach macOS as well as iOS, not because I want to, but because it's easy.
>>
>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>> Okay, I'm trying to set Slint up in Virtualbox but....using the latest ISO, nothing happens. What settings do I need to config for the VM to work successfully?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
