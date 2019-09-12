Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7879AB1481
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2019 20:38:24 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 9A52C18C892A;
	Thu, 12 Sep 2019 18:38:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1209E5C22F;
	Thu, 12 Sep 2019 18:38:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 574C7180221F;
	Thu, 12 Sep 2019 18:38:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8CIcHdg031733 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Sep 2019 14:38:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3C3B860C57; Thu, 12 Sep 2019 18:38:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx16.extmail.prod.ext.phx2.redhat.com
	[10.5.110.45])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3571160E1C
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:38:14 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 040773082B41
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 18:38:14 +0000 (UTC)
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 3A4D726960
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 14:38:13 -0400 (EDT)
	(envelope-from joelz@pobox.com)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; s=sasl; bh=fqRfoa+4akga4bZ6crZ6bgmwxZ
	4=; b=rykmJm3alB36phJFhXTH+GT3j3KF1GVfQgHIO0hOjgg90J7Dsj3aB5NtNf
	jQ2neqY8lVfetMjjBlRy0bkC7RMiR6DoQdQQGXcsraoOt1VyTda8KQtflFQlTwXo
	mO1YX0Jvpy/d5CJzw/dZ9XfRzbqgx7ZRzRyUWbPMIjv5glS9k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; q=dns; s=sasl; b=I5SyZj7/Bmti378uuh7o
	1l43txOxV3wdmfS/u+yYjz6VfnlZjlbnaallAwzMz83lpGzZbTDGNm7U52+earap
	Wm5qcvPf1KyhWojH911RvbETXmHNqJoNyEBXnjfl7h07z9RGHgQa3vr+FJov/dO2
	vGYbCrDEviH/4/xdJ8oSkik=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 33F5F2695F
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 14:38:13 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.174.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id A3F552695E
	for <blinux-list@redhat.com>; Thu, 12 Sep 2019 14:38:12 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.89)
	(envelope-from <joelz@pobox.com>) id 1i8TyS-00025k-Mh
	for blinux-list@redhat.com; Thu, 12 Sep 2019 08:37:44 -1000
Date: Thu, 12 Sep 2019 08:37:44 -1000
To: blinux-list@redhat.com
Subject: Re: Half qwerty keyboards?
Message-ID: <20190912183744.tkk5gf7yosxr4ivy@sprite>
References: <8a44b755-2712-c6af-60f8-cd8b1e626545@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a44b755-2712-c6af-60f8-cd8b1e626545@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Pobox-Relay-ID: 79C91276-D58C-11E9-A12E-C28CBED8090B-04347428!pb-smtp1.pobox.com
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.45]); Thu, 12 Sep 2019 18:38:14 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]);
	Thu, 12 Sep 2019 18:38:14 +0000 (UTC) for IP:'64.147.108.70'
	DOMAIN:'pb-smtp1.pobox.com' HELO:'pb-smtp1.pobox.com'
	FROM:'joelz@pobox.com' RCPT:''
X-RedHat-Spam-Score: -0.8  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_LOW, SPF_HELO_NONE,
	SPF_PASS) 64.147.108.70 pb-smtp1.pobox.com 64.147.108.70
	pb-smtp1.pobox.com <joelz@pobox.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.45
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]); Thu, 12 Sep 2019 18:38:23 +0000 (UTC)

Hi Brandt,

Did you search at all? I found this page documenting several
half-keyboard projects for linux.

http://www.onehandkeyboard.org/linux-one-handed-keyboards/

If X is available, it can be configured for a mirror input.

https://github.com/jorissteyn/xkb-halfqwerty

cheers,

On Tue, Sep 10, 2019 at 06:58:46PM +0200, Linux for blind general discussion wrote:
> Hi everyone,
> 
> I am a one-handed arch user. Why I am asking this, I use to be a Mac user, using the One-Handed Keyboard app for all my typing. Are there any usable Half Qwerty apps out there? A good Mac example is Mirror Qwerty.
> 
> This is a rather urgent issue to me, since I have a large project I must finish within the next 3 weeks.
> 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from Thunderbird using Arch Linux
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Joel Roth

"Welcome to the World Heat Bank, where we store your waste
energy and return it with interest."

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
