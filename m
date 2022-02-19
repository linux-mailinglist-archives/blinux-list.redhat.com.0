Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9D94BC9A7
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 18:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645293507;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8vb4qynJGOT6t0EYCS2DDxorV3bcsjE7HwcbLrXqCG8=;
	b=E7GE5QMQFPrMWXau2IWKQt7Nr38d+CSa0RyQRASOcGebxmgeGG4zjjNlwEQ33CgFfJsCUj
	AbI7idpIPyV6KT+9tmBY9wC8MVfuWS9PPm52g+sZvPEzb59SATcPUOqRE6oFnsGVzw45b/
	Z3mAaVzNFuZA6duoYbkwJbOb85E7aWI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-633-_lpe4HYUMHWiGhHP6utSDA-1; Sat, 19 Feb 2022 12:58:23 -0500
X-MC-Unique: _lpe4HYUMHWiGhHP6utSDA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB5BE814245;
	Sat, 19 Feb 2022 17:58:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11D1284634;
	Sat, 19 Feb 2022 17:58:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAB944BB7B;
	Sat, 19 Feb 2022 17:58:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21JHpZC6028509 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 12:51:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3DEE01121320; Sat, 19 Feb 2022 17:51:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 392CE1121319
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 17:51:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6BAB3C021B6
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 17:51:31 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-439-68Z1AtQrPJKE4Q4EmH0_IQ-1; Sat, 19 Feb 2022 12:51:30 -0500
X-MC-Unique: 68Z1AtQrPJKE4Q4EmH0_IQ-1
Received: by mail-wr1-f52.google.com with SMTP id d27so19816401wrc.6
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 09:51:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to;
	bh=rsyBjR1P+14GQPrSYvRD6B5T1VarQkm/f9o/VgTnCkk=;
	b=kK8CxRE5kzz4hKnyJ010FMmZbEbNVkw+NHrvOoh10Ps4zR2XeLls9WmpfKPE3eX1eT
	2wWXDG/LdM8C+MyEz3rT4YuWIHwjt5WNzMK+6mJXUI5is1mFC6Am411HxfWp2wlEEJeU
	Cq2nha43Px1ocnlbWbqH4/PMP9iNY52SjWneXGC9//Z9qhwej8LOMnl6B3wW6qyEsZ0R
	BsScaoqh9fhS6o4B3u7yry/bkWh9IAs6549Ac1b7ZPCTDDxiYbbNJmmqltiYqB15xVNd
	IgtNiYsUdrVZptNeNZFzXOnzmqoJma31sAsEnZjdRdv19Txvy9enbO61sK4Xi6sPhEHm
	jNgw==
X-Gm-Message-State: AOAM531kp+iRwrerw04DHw6JHL55s6tjz/L6A9IeOnQz5iVX41/h7bud
	PtIy+j5ujATqbtejDEWGPOuxXbqw2vE=
X-Google-Smtp-Source: ABdhPJxSYKC/9tSZgitQTRI0RkXV758Chtip5JLgpF7ze3TGXF+2H7pVdAu+idfLJnOQFBdRzQMdqw==
X-Received: by 2002:a05:6000:2a2:b0:1e8:6dd5:767b with SMTP id
	l2-20020a05600002a200b001e86dd5767bmr9709789wry.444.1645293088322;
	Sat, 19 Feb 2022 09:51:28 -0800 (PST)
Received: from waffles ([90.250.160.235]) by smtp.gmail.com with ESMTPSA id
	b16sm3436019wmj.32.2022.02.19.09.51.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 19 Feb 2022 09:51:27 -0800 (PST)
Date: Sat, 19 Feb 2022 17:51:40 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Cutting out Vim's chattiness...how easy is it?
Message-ID: <YhEuLAt8abJL2aV0@waffles>
References: <8ae2888a-21fb-d362-36b8-0707ed6ae84d@gmail.com>
	<874k4un6us.fsf@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <874k4un6us.fsf@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ah that seems to work, thanks...but it also seems to not announce when
I'm going word by word...but that might be a terminal issue. Not sure.

On Sat, Feb 19, 2022 at 06:43:29PM +0200, Linux for blind general discussio=
n wrote:
> Hi,
>=20
> Create a .vimrc file in your home directory and enter
>=20
> :set noruler
>=20
> You can also simply echo it like this:
>=20
> echo ':set noruler' >> ~/.vimrc
>=20
>=20
> On Sat, Feb 19, 2022 at 04:21  Linux for blind general discussion
> <blinux-list@redhat.com> wrote:
> > So I've got Mutt set up with vim as my editor of choice. it's not
> > nearly as scary as people make it out to be, it's easy to get the hang
> > of.
> >=20
> > But I have a question, and unsure if I can do this easily. If I type a
> > sentence, and then step through words, I get the charactter numbers.
> > Like this four is six a=A0 seven test 11, so how would I remove the
> > numbers after it. It's counting the number of characters. Which I'm
> > okay with. But I don't want it announced after every single word
> >=20
> > Is there a quick way to sort this? If I'm going word by word to review
> > what I've got, I want to just hear the words, not how many characters
> > since the start of the file
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>=20
>=20
> --=20
> Good people do not need laws to tell them to act responsibly, while bad
> people will find a way around the laws.
> - Plato (427-347 B.C.)
>=20
>=20
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

