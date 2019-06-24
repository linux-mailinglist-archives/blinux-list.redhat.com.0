Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E83351B29
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2019 21:06:20 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9046A3082E1E;
	Mon, 24 Jun 2019 19:06:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8BE41001B00;
	Mon, 24 Jun 2019 19:06:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E31AE1806B18;
	Mon, 24 Jun 2019 19:05:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5OJ5U77012123 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jun 2019 15:05:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 712F0600C1; Mon, 24 Jun 2019 19:05:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B24F600C0
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 19:05:27 +0000 (UTC)
Received: from seal.o2switch.cloud (seal.o2switch.cloud [109.234.163.99])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6F78C36883
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 19:05:03 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: C788C100443.A3F48
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=riZnZ5Wb6lROrDCUkt2HjyEoYIgK7Rc9rQWtK09dLH4=;
	b=TQ6Lcdra6eTbIjaIUKR8X+9i1g
	Z/cL1b7DvX4dCEVMevD9x5ePi6bNvmLfn3ZexNxNoQW18FlnIaOv+7HUod1wdieSE6eJR+IqhsO0K
	46rHgZF9AWq9prDB+0AuMbpn+cBfKvOY9ckkosPgFjV+WwpVKdHIBXSgS4QWxKmMD4sU=; 
Subject: Re: Some basic Pulseaudio Questions
To: blinux-list@redhat.com
References: <E1hfScw-0000I3-8S@wb5agz>
Message-ID: <ebd1af3a-39e1-b964-2dae-1f09d72b6b41@slint.fr>
Date: Mon, 24 Jun 2019 22:59:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <E1hfScw-0000I3-8S@wb5agz>
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
X-Greylist: Delayed for 00:05:20 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.30]); Mon, 24 Jun 2019 19:05:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Mon, 24 Jun 2019 19:05:03 +0000 (UTC) for IP:'109.234.163.99'
	DOMAIN:'seal.o2switch.cloud' HELO:'seal.o2switch.cloud'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.99 seal.o2switch.cloud 109.234.163.99
	seal.o2switch.cloud <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Mon, 24 Jun 2019 19:06:19 +0000 (UTC)

pulseaudio can be used in console mode.

speakup and mplayer won't fight if pulseaudio is set to use dmix and you
dont name the sound devices using the hw: syntax.

You can also use apulse to "fake" pulseaudio but actually use alsa.
For instance: apulse mplayer <some song>

You can also use Slint instead of Debian that provides the above out of
the box <smile>

Didier Spaier
Slint maintainer.

On 24/06/2019 19:19, Linux for blind general discussion wrote:
> 	Is it even worthwhile to get pulseaudio to run on a
> debian system without a x display?
> 
> 	I would like to have speakup and mplayer not fight over
> the same sound card.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
