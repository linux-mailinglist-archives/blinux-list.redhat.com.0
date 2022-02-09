Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 154FA4AFE7E
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 21:33:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644438817;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=+aZ94ffJkKZmb8E17vrePb66f0XKJXD16eQuaHm8nhc=;
	b=XuC8SMvItPSF+xsdaZGfwYQm3mOdFrHRfyLl/dbwmY9KAY4b0EjRwUrdC6iCwmGEvvoefH
	G7MSk4UiGsVxfmJIFdKOpm3u+SRG/3ImuUy0nudNtZCHgQzZwRk/oNRMWXItzr1MkyVLTw
	S6dRlvPBY553F049ixwT7rfz5CEHEbM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-466-7GC9nr6iPtWsmf27PP9L9A-1; Wed, 09 Feb 2022 15:33:33 -0500
X-MC-Unique: 7GC9nr6iPtWsmf27PP9L9A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0F9D8144E1;
	Wed,  9 Feb 2022 20:33:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A1F710190A7;
	Wed,  9 Feb 2022 20:33:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 05B4C4BB7C;
	Wed,  9 Feb 2022 20:33:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219KXPX2006425 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:33:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 07952492D1F; Wed,  9 Feb 2022 20:33:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03D6D492D1C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:33:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD989800B21
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:33:24 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-654-wW5MRbu-OEGTeSlqFR1ZMw-1; Wed, 09 Feb 2022 15:33:22 -0500
X-MC-Unique: wW5MRbu-OEGTeSlqFR1ZMw-1
Received: by mail-wr1-f41.google.com with SMTP id e3so6124712wra.0
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 12:33:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=CHxMCciUjfNRSNn6QG9lU3kK9AbE0PRf3PjFE9zjAtc=;
	b=E9dUHhS89nm9FuZi2db6ZVEwyIR7ZUB/7IqUPo0fhjpRLniMT0LwKSxzoTIVBH8BrR
	nkJp12IAaLsWa2MVDySQ+chKvQNKlDU0qjtPzxBXIechXm3O3PWFc1UXln+KqAISY4PC
	z9FM9gctNIHNfOVNm7Xr4Yc0WcNjitHSIEr/q68xf6SEKLe1NoaTD81/8EXOsjr5WQGP
	3Cw7sK9uAaO0G/RcbANVrExNGybT48u465zNYQyG3V+UrgcgzbgKRKiSOfa+LiUDyq9E
	X3VsI++qWOcDyM5uUY3rUAfI2/i8SNpH4N/pW+013abpcDohrYdwAtfeTTXH3FojTluX
	MykA==
X-Gm-Message-State: AOAM5304XeXcIi4yJajWZVba//Y/AduvDasJI/JtJQ4U6yvHx4HT2f98
	Cy7+rbTsBQ9yMvshloOx57w22NckhYs=
X-Google-Smtp-Source: ABdhPJxVeBIvKiyLMmRhMYD8VZhhi09rknoxckRWxyiI9POaUYZQyc7PAW8LdemcSbM5cseeUSwlcQ==
X-Received: by 2002:a5d:61d0:: with SMTP id q16mr3591226wrv.615.1644438801162; 
	Wed, 09 Feb 2022 12:33:21 -0800 (PST)
Received: from brandt-slint ([197.184.183.237])
	by smtp.gmail.com with ESMTPSA id
	ay3sm5744535wmb.44.2022.02.09.12.33.19 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 12:33:20 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.study.home>
Date: Wed, 9 Feb 2022 22:33:17 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
In-Reply-To: <8386b4e1-85e7-d08b-fc9b-608708449a86@slint.fr>
Message-ID: <f48f1ab0-bde-5686-e5a-9588d34aa9f7@brandt-slint.study.home>
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
	<CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
	<8dc2aaf3-191a-b2f6-a4a2-0e55306d65@brandt-slint.study.home>
	<8386b4e1-85e7-d08b-fc9b-608708449a86@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="8323328-1622102532-1644438800=:12610"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323328-1622102532-1644438800=:12610
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi Didier,

I have used mpv in xsessions before, but while I'm in there anyway, I'd 
just use VLC. Nothing wrong with using what you like though.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Wed, 9 Feb 2022, Linux for blind general discussion wrote:

> Date: Wed, 9 Feb 2022 21:18:20 +0100
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
>     besides ratpoison, which is great, btw
> 
> Hi,
>
> just a few inline comments below
>
> Le 09/02/2022 à 20:45, Linux for blind general discussion a écrit :
>> 
>> I, for example, currently have the Rainbowstream Twitter client open in TTY1,
>> mpv playing an internet station in TTY2 and this alpine in TTY3. I still have
>> quite a few TTYs available for use, should I need them.
>
> You can  have more than 6 tty if you want. Just edit as root /etc/inittab and
> after these lines:
>
> c4:12345:respawn:/sbin/agetty 38400 tty4 linux
> c5:12345:respawn:/sbin/agetty 38400 tty5 linux
> c6:12345:respawn:/sbin/agetty 38400 tty6 linux
>
> append similar ones replacing tty6 with tty7, tty8, tty9, etc.
> Be careful, a small syntax error in this file can prevent Slint to start <smile>
>
> also you can type startx from any tty, currently this will use tty<n+6>
> For instance if you type startx fom tty2 the X session will go in tty8.
>
> You can even start several graphical sessions this way. That the minimalist in
> you will probably will not like...
>
>> This is where a WM such as ratpoison would make your life easier, if, for
>> example, you don't want to use the CLI based mpv media player, you could use VLC
>> in an XSession, or Thunderbird for email in stead of alpine.
>
> You probably know that, but you can as well use mpv as well as vlc in an xsession
>
> Cheers,
> Didier
> --
> Didier Spaier
> Slint maintainer
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
--8323328-1622102532-1644438800=:12610
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--8323328-1622102532-1644438800=:12610--

