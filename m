Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DA5C63249C9
	for <lists+blinux-list@lfdr.de>; Thu, 25 Feb 2021 05:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614227854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UPCs2EHgZm/0pwWVOweEWTJHzXJZHwVGWyglD5I+nwA=;
	b=Da3lAaXA3PfOBZGBTuDC2AxhNbFUp0aYRRHL4cWHshEpBCz+A34vYbkSFjRiJMbWvofsCU
	yPcic5XTtN9QCOJs9UeNJIyOEoGBmDK7IQ3+3wfGyrx4DWmCvr3pQANSHuhMs+t/qw5ptp
	UCOyMlQTYpxOFT2wVuOem6kmVKbk3KE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-QnGW3t1XMTeNSjBUbwlZhQ-1; Wed, 24 Feb 2021 23:37:32 -0500
X-MC-Unique: QnGW3t1XMTeNSjBUbwlZhQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C882C10066EE;
	Thu, 25 Feb 2021 04:37:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 572685D9D3;
	Thu, 25 Feb 2021 04:37:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 101C718095CB;
	Thu, 25 Feb 2021 04:37:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11P4bJLw017191 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Feb 2021 23:37:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A1726115D37E; Thu, 25 Feb 2021 04:37:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C9FC10439BF
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 04:37:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC016800B29
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 04:37:16 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-244-ry1EDroaMLGtV9licM3XcQ-1; Wed, 24 Feb 2021 23:37:13 -0500
X-MC-Unique: ry1EDroaMLGtV9licM3XcQ-1
Received: by mail-qt1-f181.google.com with SMTP id r24so3247381qtt.8
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 20:37:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=M6KYmyV8a9xZ5SS1vD50wxn3n4fDfcL/VdeFcswb97w=;
	b=CoUQ0joqKF8+jIl+gr3Pri3UfkvSoWTtkWl5bygF3b8FJcbzWA3fWCYAPBO1ehn8l1
	/EniHsM1XaSoY24KBdYiYXUGWHV4Z+zBKYdXhYk0Y1yHMltW535M2EicEMEIurbxzQKG
	Y0H298hE1TCX7viY1rNxhMEQihXJ6MbnYwL12q9Pybe8FYFisLsK1PhoTAjLr9hTd/zV
	g3sjIpPSu4TMafrClGm0dgMq0b83oVDnaAuzp3jjE/mF6HDKC1iQQfNfpeDlVHmtBMGv
	4mIUeHQatfWi7m7QmD7Vwsz2XdP/MN5usOpacCxIbY9bDymioJ9oKskr7UnGkeb/ZFPr
	gSKA==
X-Gm-Message-State: AOAM533dXhMrXRgksCTMR5tmSXwwYbU5RMbpYDZ43N1P3ylRGFQh9yMu
	ojLSvZSGyjLkM2WjhyY9WK8rYZlfD3RDRKjylOcp3tDmDOI=
X-Google-Smtp-Source: ABdhPJyMO9aGTev4Gm0KC7VCspjRnRJU4Oa5J6k/Wl9/c2jB6iaa777oocqAEFOk+N0ANI/bjhsw4ny4lQwK0E+vgCY=
X-Received: by 2002:ac8:c46:: with SMTP id l6mr1019663qti.6.1614227832955;
	Wed, 24 Feb 2021 20:37:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:b48c:0:0:0:0:0 with HTTP; Wed, 24 Feb 2021 20:37:12
	-0800 (PST)
In-Reply-To: <Pine.LNX.4.64.2102232037310.2301335@server2.shellworld.net>
References: <Pine.LNX.4.64.2102232037310.2301335@server2.shellworld.net>
Date: Thu, 25 Feb 2021 04:37:12 +0000
Message-ID: <CAO2sX31fCP1KU+0CQXWe_b4O15t2BktctaT6pvBkf5Ke9Qm6eg@mail.gmail.com>
Subject: Re: recently referenced headphones?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I believe that was me.

Here's the link for the Panasonic ear clips:

https://www.amazon.com/gp/product/B002GAXWF2/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

And here's the link for what I ended up buying:

https://www.amazon.com/gp/product/B0006B486K/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1

The Panasonics are cheaper, have their earclips on a swivel, which
allows for you to have it hanging on your ear but with the speaker
folded out(good for listening to earphones with one ear and sounds in
the room with other, the outside of the earpiece is flat, making them
more comfortable when laying down with an ear to your pillow and the
earpieces stick to each other with magnets. The cord is on the short
side though and is asymetical with the left clip having the shorter
wire. Also, the plug is straight with little to reinforce the wire
where it connects to the plug.

The Kospair are more expensive, have a significantly longer, symmetric
cord that ends in an angled plug with a reinforced wire at the plug.
The ear pieces fit together with the speakers face-to-face, the end of
one clip fitting into the bend of theh other clip... nesting the
earpieces is a bit tricky to figure out, but once you get the hang,
the earpieces stay quite secure when stored this way. The clipes don't
have much movement and stick out a bit, so laying your head on a
pillow with your ear to the pillow is a bit uncomfortable with these.

Neither pair come with any storage solution for the wire, and I can't
tell any difference in  sound quality, though I haven't been able to
do direct comparisons.

There were several other pairs mentioned in that thread, but beyond
what I was replacing and what I replaced them with, I can't remember
much in the way ofdetails.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

