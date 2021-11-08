Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 195D2449EAA
	for <lists+blinux-list@lfdr.de>; Mon,  8 Nov 2021 23:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636410577;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KQSdxDeITiCiW8zRNZ5vJnUyqTDjDy9tlRjQe7i+Ydw=;
	b=STxoVBn5MuTHXfA2ItPi8vG1gYxtoIoFcio4KS3dWHV6Pk7GNCql+M68Nhz1jDaNXCsxB7
	bkQahWwE7qd8rcspNXxZxvawM1/2Cwi/giU3NRVX9rCnj8DBTPLLO84+iA81zauZHj1su8
	E9pGZ2oFnCJI+msmnFQKshQQ+/g7b2Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-mbfnBCzcN46TviFEDAwD4g-1; Mon, 08 Nov 2021 17:29:33 -0500
X-MC-Unique: mbfnBCzcN46TviFEDAwD4g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6F811808320;
	Mon,  8 Nov 2021 22:29:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D376F67841;
	Mon,  8 Nov 2021 22:29:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 627AF180BAD2;
	Mon,  8 Nov 2021 22:29:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A8MTIJ9001771 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 17:29:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 21FBB4010FE9; Mon,  8 Nov 2021 22:29:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13251400DEF8
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 22:29:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EEBAE80122B
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 22:29:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-604-SVddJ6gINDCJ5Rnefsj4rQ-1; Mon, 08 Nov 2021 17:29:15 -0500
X-MC-Unique: SVddJ6gINDCJ5Rnefsj4rQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Hp5Pk6zSGz41fn
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 17:29:14 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Hp5Pk64bdzcbc; Mon,  8 Nov 2021 17:29:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Hp5Pk5bs3zcbP
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 17:29:14 -0500 (EST)
Date: Mon, 8 Nov 2021 17:29:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mate Desktop questions
In-Reply-To: <25a261fa-8974-626c-0b3d-c855aee31ad7@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111081725450.17927@panix1.panix.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
	<9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
	<d43b7b51-c1e2-dac8-9554-9745478538c9@gmail.com>
	<25a261fa-8974-626c-0b3d-c855aee31ad7@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I wouldn't do that.  If I had sudo set up correctly, I could do
sudo amixer set Master 100 unmute:alsactl store.
If that doesn't work and sometimes it won't, you have lock files you need
to remove before doing this operation.


On Mon, 8 Nov 2021, Linux for blind general discussion wrote:

> "... To be sure that the sound is unmuted, your best option is to run
> something like
> alsactl store
> in a terminal. This should happen automatically when you shut down the laptop,
> so it's baffling me why your sound is muted every time you boot. It's possible
> that the restore isn't working at boot time either, so you may want to stick
> alsactl restore
> into your boot sequence at some point as well. "
>
> Can someone point me to where the "boot sequence" referenced in the reply
> quoted above, is located? I am running Mint Mate 20.2.
> It would also be nice to know where I can find the commands that are executed
> at logoff or shutdown. I am still fairly new at Linux, but learning a ton over
> the past few months.
> Thanks,
> John
>
>
> On 10/10/2021 1:52 PM, Linux for blind general discussion wrote:
> > You should have a NetworkManager applet on your panel. This should be to the
> > left of the time and date toggle, but in my experience it doesn't like to
> > tell you when you're on it. So my best recommendation would be to shift tab
> > once you hit the time and date toggle and then press the enter key. A menu
> > should pop up with wifi connections, along with a menu item called more that
> > will give you more connections if yours is for some reason not at the top of
> > the menu.
> >
> >
> > To be sure that the sound is unmuted, your best option is to run something
> > like
> >
> > alsactl store
> >
> > in a terminal. This should happen automatically when you shut down the
> > laptop, so it's baffling me why your sound is muted every time you boot.
> > It's possible that the restore isn't working at boot time either, so you may
> > want to stick
> >
> > alsactl restore
> >
> > into your boot sequence at some point as well.
> >
> > ~Kyle
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

