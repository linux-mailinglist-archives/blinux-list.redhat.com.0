Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC3AB143C
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2019 20:03:12 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 4A1948AC6F6;
	Thu, 12 Sep 2019 18:03:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D964860872;
	Thu, 12 Sep 2019 18:03:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 68A7524F31;
	Thu, 12 Sep 2019 18:03:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8CI35xK029267 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Sep 2019 14:03:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC6935D713; Thu, 12 Sep 2019 18:03:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D70AA5D704
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:03:03 +0000 (UTC)
Received: from boudin.jabatus.com (boudin.jabatus.com [109.234.162.62])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 432F410576D7
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:03:02 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 87A20100B1D.A8A05
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=quJJL6FkOfLXpyq9mvLbKeM3R/M5cldsMnv4ZJ1UKhk=;
	b=TsZPo0otzwRaH+FGGedurukHQa
	CXKGxBs5HigAgNLyPZNmAUvRhjapY4rVPcO/8f8Pcn9l88ArSXkuGEeF6LU4gZsiDZ6+XAUjBClG3
	ShRckwUzi09o3Ps3icIDZ/NetoOg9Xx5mf/DwQ+ioMv8ouawveex43vpckZOstYm7gh4=; 
Subject: Re: Comunicating from your Linux machine?
To: blinux-list@redhat.com
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<bd79fcc8-262e-b178-1518-cf12f5ba9b6d@F123.org>
	<87zhja4b8g.fsf@gmail.com>
	<ba434a94-0e7b-633c-9a1e-9586f6aa8cd2@gmail.com>
	<alpine.NEB.2.21.1909121120200.6115@panix1.panix.com>
Message-ID: <adcbe24e-619c-9580-0ccb-8efcad238a62@slint.fr>
Date: Thu, 12 Sep 2019 19:56:51 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909121120200.6115@panix1.panix.com>
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
X-Greylist: Delayed for 00:06:07 by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.64]); Thu, 12 Sep 2019 18:03:02 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Thu, 12 Sep 2019 18:03:02 +0000 (UTC) for IP:'109.234.162.62'
	DOMAIN:'boudin.jabatus.com' HELO:'boudin.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.162.62 boudin.jabatus.com 109.234.162.62
	boudin.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.69]); Thu, 12 Sep 2019 18:03:10 +0000 (UTC)

Hello Jude and list,

Telling "I'm not certain sending functions work yet", "may not have been
buikt the last time" or "Other distributions may have better compiled
versions of telegram-cli available" don't help to find issues in the
package, if any."

What I need is actual testing by users, stating what works and what
doesn't after having actually tried.

So please try the sending functions and report your findings, whatever
they be. A good report could look like "I did this, excpected  result A,
got result B."

I never used myself telegram, so I have to rely on end users to file
bugs in a way then allow to find what's wrong, case occurring.

I am also eager of feedback on any other package shipped in Slint.

Best regards

Didier
--
Didier Spaier
Slint maintainer

On 12/09/2019 17:25, Linux for blind general discussion wrote:
> On slint we have telegram-cli and although receiving functions work I'm
> not certain sending functions work yet.  It is a new slint package
> having first lived in slackbuilds repository so may not have been built
> properly this last time.  Other distributions may have better compiled
> versions of telegram-cli available.  It's worth checking.  You will need
> a cell phone and to provide your cell phone number to telegram-cli to
> set up an account since for future logins you'll use your username and
> the provided login code.  The login code is sent to your cell phone and
> you enter it on the computer to finish setting up your account.
> 
> On Wed, 11 Sep 2019, Linux for blind general discussion wrote:
> 
>> Date: Wed, 11 Sep 2019 22:42:15
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: Comunicating from your Linux machine?
>>
>>> Telegram works fine here using emacs +emacspeak.
>>>
>>> Is there a specialized client you run to make that work, or can it run in a
>>> regular terminal? The Telegram app I saw was a graphical app, but I think I
>>> don't have something set properly, although I assume it's a qt5 app, and I
>>> had Mumble qt5 working. I would prefer something that interfaces with
>>> Pidgin, so I stick to the phone for Telegram, as I just didn't look hard
>>> enough to find a Pidgin plugin, and Pidgin here seems to have trouble with
>>> voice. That said, looking for telegram didn't yield a Pidgin plugin,
>>> although I do recall seeing a text client, though it seems it was separate
>>> from the "official" (air quotes there) client.
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
