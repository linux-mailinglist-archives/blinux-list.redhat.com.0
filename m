Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC853A424
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2019 09:37:45 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 231203082134;
	Sun,  9 Jun 2019 07:37:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96128608C6;
	Sun,  9 Jun 2019 07:37:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AE2E18363C1;
	Sun,  9 Jun 2019 07:37:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x597VtE9018983 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 9 Jun 2019 03:31:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 43D9D60BEC; Sun,  9 Jun 2019 07:31:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E08960BE5
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 07:31:52 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 79501356EA
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 07:31:19 +0000 (UTC)
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 291C3163966
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 03:31:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; s=sasl; bh=SBt8p7HH/UehKev7pLHqr3PenN
	0=; b=DENgkDSRj+K2ZDb4YLD2w/eMtxmiAsLyvKgC+5VLPigWC0xI4Tltzg7DzJ
	x9FeCFlf9V+hgk+3s4PTVMiY7/Kd1om3I7BzC78UkkU7bjqvaVEkyVgjniwFfOMN
	MmqjRdL0alMX2YEBImjLuY4/1PUMCIfT5D6UIqki1RgHoy1Ak=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; q=dns; s=sasl; b=VBCjrzZxjJ5fPVg0gaZI
	YepZN9goFCTRzOVP7oLbSfBPocw0l9Lcykcr6e28qqQiKiNRqopqU1x1n+zrOC3o
	SdqjJ8SuQMV/r8wRUEqjGZNfajEiwiar8cwvqBiTt/e4itVnzSqR+008kHKxWkEc
	3QzhFEHjX7QGRw8c4t9y4m8=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 1FCC2163965
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 03:31:09 -0400 (EDT)
Received: from sprite (unknown [66.8.174.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 84625163964
	for <blinux-list@redhat.com>; Sun,  9 Jun 2019 03:31:08 -0400 (EDT)
Received: from jroth by sprite with local (Exim 4.89)
	(envelope-from <joelz@pobox.com>) id 1hZsI2-0001bv-Nt
	for blinux-list@redhat.com; Sat, 08 Jun 2019 21:30:54 -1000
Date: Sat, 8 Jun 2019 21:30:54 -1000
To: blinux-list@redhat.com
Subject: Re: Audio Recording
Message-ID: <20190609073054.um4fm7ln56h72vir@sprite>
References: <20190609.052602.869.15@[192.168.1.181]>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190609.052602.869.15@[192.168.1.181]>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Pobox-Relay-ID: 8C4CEE3A-8A88-11E9-A703-46F8B7964D18-04347428!pb-smtp1.pobox.com
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.30]); Sun, 09 Jun 2019 07:31:24 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Sun, 09 Jun 2019 07:31:24 +0000 (UTC) for IP:'64.147.108.70'
	DOMAIN:'pb-smtp1.pobox.com' HELO:'pb-smtp1.pobox.com'
	FROM:'joelz@pobox.com' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 64.147.108.70 pb-smtp1.pobox.com 64.147.108.70
	pb-smtp1.pobox.com <joelz@pobox.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Sun, 09 Jun 2019 07:37:44 +0000 (UTC)

> What are we using for audio recording on linux these days. In the gui. Is audacity still the best one from an a11y standpoint? How about CLI?
> I'm interested in recording from line-in so I can archive some of my tapes.

Hi,

>From the command line, probably sox, ecasound or arecord. For
example, ecasound -i:alsa,default -f:16,2,48000 -o:tape1.wav

This records from the default ALSA soundcard, in stereo 16
bit depth at 48kHz to file tape1.wav. I think there is a
parameter for duration if you know in advance, and you can
also just stop the engine with Ctrl-C.

For multitrack recording in a terminal, I can offer a
shameless plug for Nama, based on Ecasound. Nama does most
of what you would want for recording, mixing and mastering
in a text environment. 

A prolific user of this program has posted many of her compositions here:
http://juliencoder.de/nama/

Here is some information about project:
http://freeshell.de/~bolangi/cgi1/nama.cgi/00home.html
https://metacpan.org/release/Audio-Nama

Feel free to contact me for support.

Joel Roth <joelz@pobox.com>
-- 
  

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
