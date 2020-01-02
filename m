Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 95B8F12E8FB
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jan 2020 17:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577984165;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5oKYvvhtP+g13rgoRgFtIMKCSZ+vSvBGeNcSnyfAfVo=;
	b=IzMKH1h+2RyQGw5ABuw3yqtv4hxyqjIAewXxKYjCXBCXpNffbAd+Heet2WXw6Oi9xpg6jW
	MrrmBAFLKSRoPhWV5fG8bJl+w++7cy+eVpjSxHhHyM0ovhToE5pbrExDw22cUkGOGuZDiV
	hTCGNfeBfKAYMAOpaMwnoF9G+n1MtCs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-117-bvOIJQn_MD6Uw4j2537-Xw-1; Thu, 02 Jan 2020 11:56:02 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC12F100551A;
	Thu,  2 Jan 2020 16:55:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E4326609E;
	Thu,  2 Jan 2020 16:55:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2859618089CD;
	Thu,  2 Jan 2020 16:55:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 002GtsGA016207 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jan 2020 11:55:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A88572022EAC; Thu,  2 Jan 2020 16:55:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3CFB2022EA7
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 16:55:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E5748023B8
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 16:55:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-184-aVOBPaY1PSqm_IFRwXbwUA-1; Thu, 02 Jan 2020 11:55:51 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47pZ123TFZz1hlZ
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 11:55:50 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47pZ0z20GNzcbc; Thu,  2 Jan 2020 11:55:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47pZ0z1vLhzcbW
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 11:55:47 -0500 (EST)
Date: Thu, 2 Jan 2020 11:55:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: festival unknown voices
In-Reply-To: <alpine.NEB.2.21.2001021148060.19526@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.2001021152460.7636@panix1.panix.com>
References: <alpine.NEB.2.21.2001021148060.19526@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: aVOBPaY1PSqm_IFRwXbwUA-1
X-MC-Unique: bvOIJQn_MD6Uw4j2537-Xw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 002GtsGA016207
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I would have used espeak-ng on archlinux but can't find documentation on
how to have that package start at boot.  The speech-dispatcher system
works with espeak-ng in that spd-say will speak but if I can't have
espeak-ng replace espeak and espeakup this won't help since I mostly run
in command line and rarely run in graphical so I use startx to start up
graphical when needed.

On Thu, 2 Jan 2020, Linux for blind general discussion wrote:

> Date: Thu, 2 Jan 2020 11:50:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: festival unknown voices
>
> When trying to run speech-dispatcher against festival with pulse or alsa
> in test mode using spd-conf I'm getting no speech from spd-say and these
> errors.   I've installed festival-us package on the system which has
> voices in it and it's these festival is claiming are unknown.
> SIOD: unknown voice cmu_us_slt_cg
> SIOD: unknown voice cmu_us_slt_cg
> SIOD: unknown voice cmu_us_awb_cg
> SIOD: unknown voice cmu_us_awb_cg
> SIOD: unknown voice cmu_us_rms_cg
> SIOD: unknown voice cmu_us_rms_cg
>
>
> How do I clear these festival errors?
>
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

