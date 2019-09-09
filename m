Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3EEADE49
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2019 19:54:22 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 10F20C08EC0D;
	Mon,  9 Sep 2019 17:54:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1E2260BE2;
	Mon,  9 Sep 2019 17:54:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA7791802217;
	Mon,  9 Sep 2019 17:54:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x89HsIx7031080 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Sep 2019 13:54:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7CEF81064101; Mon,  9 Sep 2019 17:54:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx01.extmail.prod.ext.phx2.redhat.com
	[10.5.110.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 723331001B20
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:54:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 79B585F17F
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 17:54:12 +0000 (UTC)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 46RwlR6GkVz1gw8
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 13:54:11 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 46RwlR53gjzcbR; Mon,  9 Sep 2019 13:54:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 46RwlR4pYPzcbQ
	for <blinux-list@redhat.com>; Mon,  9 Sep 2019 13:54:11 -0400 (EDT)
Date: Mon, 9 Sep 2019 13:54:11 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Comunicating from your Linux machine?
In-Reply-To: <57970813-70fc-369a-3bcc-ad35defe78c9@gmail.com>
Message-ID: <alpine.NEB.2.21.1909091352500.21956@panix1.panix.com>
References: <e2cd82fc-02d9-a55a-abe9-6141dba37f8e@gmail.com>
	<53EDACF6-CD22-4D52-A926-00A9B085D663@gmail.com>
	<57970813-70fc-369a-3bcc-ad35defe78c9@gmail.com>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.25]); Mon, 09 Sep 2019 17:54:12 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]);
	Mon, 09 Sep 2019 17:54:12 +0000 (UTC) for IP:'166.84.1.89'
	DOMAIN:'mailbackend.panix.com' HELO:'mailbackend.panix.com'
	FROM:'jdashiel@panix.com' RCPT:''
X-RedHat-Spam-Score: -2.3  (RCVD_IN_DNSWL_MED, SPF_HELO_NONE,
	SPF_PASS) 166.84.1.89 mailbackend.panix.com 166.84.1.89
	mailbackend.panix.com <jdashiel@panix.com>
X-Scanned-By: MIMEDefang 2.83 on 10.5.110.25
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 09 Sep 2019 17:54:21 +0000 (UTC)

Mumble has a command line client called barnard and you'd have to have
git and go installed on the machine to download and build it unless your
distro already has a pre-built package available.

On Mon, 9 Sep 2019, Linux for blind general discussion wrote:

> Date: Mon, 9 Sep 2019 13:49:34
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Comunicating from your Linux machine?
>
> Oh I almost forgot ... you can try Mumble, though it's designed more for chat
> room style communication as opposed to one-to-one communication. There is also
> Linphone, but I seem to have better luck with it on Android than on Linux for
> some time now, though I haven't tried it recently. Linphone is a SIP
> application, so it is good for talking as if you're talking on a phone, either
> one-to-one or via your favorite conference bridge, and there are many of those
> across the internet. I used to use another SIP phone called I believe it was
> SFLPhone, but I don't know how active that project is now.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
