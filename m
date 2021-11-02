Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D7772442DE2
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 13:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635856205;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hOxbblf+1sXgS47ICVQNzO4BRWTHBYC0Honq+5BbwWc=;
	b=cY42090+nocDuQI+zP3QZDD7Mcqt/8SrU6n0UkK3xw/qoFzVuMpe4K58oSRdXJm1IdrgsT
	Z6VLFluty4xeE+ETV8R+WL5XWl/Ikti2Syfe5pIiWxbMhrQcgStyffk68e6vJNXWDNUlXK
	5gwcLqlQIvY89cFXHUQLdR9BajBlmHg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-BR3vuJpXOUiGi0mjaQRCxQ-1; Tue, 02 Nov 2021 08:30:02 -0400
X-MC-Unique: BR3vuJpXOUiGi0mjaQRCxQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3619519200C4;
	Tue,  2 Nov 2021 12:29:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3D1A171FF;
	Tue,  2 Nov 2021 12:29:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 918E0180BAD1;
	Tue,  2 Nov 2021 12:29:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2CSXHE009470 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 08:28:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5B4B140CFD12; Tue,  2 Nov 2021 12:28:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55B5540CFD10
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:28:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D046811E84
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:28:33 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
	[209.85.219.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-164-O79dd5-WMmmy53LzN2hm6g-1; Tue, 02 Nov 2021 08:28:31 -0400
X-MC-Unique: O79dd5-WMmmy53LzN2hm6g-1
Received: by mail-yb1-f181.google.com with SMTP id j75so24930637ybj.6
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 05:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=56QVrk47145/n1Bv+xpgwpkw/+GgPZgf6eITlgBaMfQ=;
	b=Rn3C1JkYm3GwCB/Bp1SUzbiPGNm3bJH/CkfyZO3xAv1Bcb2avVohcmE1gwWnjGehT4
	3AatK3/e6URvDNo1FJXVMH/dHOkLzXg2HAoNn+1vwkAQOoQkcD8k9YmK5Mp26qEzcLTJ
	UDmr973Q/gDksVBaDcbixD6QLFzRChBLLf6VQIIOoc3DAeFbDDxcSNeLBK0PbGuPCr9K
	Iw8Uf+jML6MbZbbacNpkrb6nHQ8A/TDCwtiV9d4g2E5CPSdjgMIy2UiyiGSrKTxfOcDQ
	Kpov6E1GjkQ6MFOd7p9CEEItFK830l/l9RzHQ5xjfA44iXxIU8W/PideLJuoxfcb2kVs
	03/Q==
X-Gm-Message-State: AOAM532FAGn4KkrRgNNFBdvS24L7KH35DbI6/lCM/1Ix+3ra3b2Qk2qE
	DGmqR8FDTsHj0eYMaZYpvlSzE7AECW+rHWV1p+3hHDGFpGU=
X-Google-Smtp-Source: ABdhPJxt5gU651ODCtBN6/S3uyI0ssDle9RXhPQzwnN34+etiRJtgoDLdglS4qNSoK42vzgwfYpt4e0BnLRjxaq8QDE=
X-Received: by 2002:a25:300b:: with SMTP id w11mr40363961ybw.31.1635856110686; 
	Tue, 02 Nov 2021 05:28:30 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
In-Reply-To: <936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
Date: Tue, 2 Nov 2021 07:28:19 -0500
Message-ID: <CAGJxbF6OOu6AygAWQm1+mi9SCAsNshWYSTcooNHzG+n7PQiXPA@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Calm down. Have I ever said that Orca is a "stinking pile of poo-poo?" No.
It's a nice screen reader. I just can't trust it on the web because of the
afford-mentioned quick navigation keys and focus/browse mode being two
separate things. Also my goodness how long did you try out NVDA's object
navigation: a minute? Did you read the documentation? Lastly, yes, JAWS'
idea of a literal virtual buffer is stupid. NVDA handles it far better.
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 2, 2021 at 7:17 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

>      OK this is just one example you cite, but what the hell is object
> navigation? What the hell is an object? I had to try that once and was
> nothing but confused by it. Flat review works, and although it's not
> perfect, it does work well enough for me to know what is in a window
> that is not being read out loud right away, and I can either click a
> control with mouse emulation or even route the real mouse pointer to it
> and click it, again with mouse emulation, or God forbid, a real mouse,
> or even a trackball if I so desire. Now that's good stuff right there.
> No, it's not perfect, but it's pretty damn good for what it does, and
> it's certainly not some confusing as hell object shit. Does this NVDA
> even know what a flat review is or how to allow you to navigate a window
> other than by some black magic that is objects?
>
>
> And if they decide they want to take the whole source of the page out of
> my browser and stick it into some concept of a virtual screen reader
> buffer, then I'm certainly done with it before it ever gets started. The
> virtual buffer was an ugly and frankly shitty hack that never should
> have been introduced into a screen reader, but every screen reader over
> there implemented it because this jaws cream of the crap you speak of
> did it first, so naturally everybody had to do it. Again, Orca's browser
> implementation is certainly not perfect, and if you think you can
> improve upon it or even reinvent it in such a way that it actually works
> better, then you're certainly welcome to try. Just stop trashing Orca in
> the process. It's not perfect, but it's certainly not a stinking pile of
> poo-poo either. Now that Jaws over there, yeah, that one's a damn
> stinking pile of poo-poo, and I really wish people would get it out of
> their heads to say that they do so much right when all they do has been
> wrong from day one. Table with 3 columns and 37 rows has shown up in
> emails people have copied to me more times than I can cound, and you can
> quite easily guess what they used to copy the text. Frankly, it's beyond
> disgusting.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

