Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 507034B60EE
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 03:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644891788;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9F416hukLBjgF/u/umxx+vmLYOrmLTBG92PFRc48EZo=;
	b=gqKm0zirCdNRN0NzXLetkkQDn2G0MREFRcumV5Y0pD+r80XMu/TkMzjLTRZaytYn75ADiR
	dnHZ5xcPnTqOeQlLnqca9DYNQTWm54M0RUFT+7MpDsrw5KzLc6ee8Glwgzxw6fDdLYd7jX
	RKtJ6MZa4V2JJNw8nI1ON6FFQEFB878=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-147-UMN-qQgqNEiFBErebzbgSQ-1; Mon, 14 Feb 2022 21:23:05 -0500
X-MC-Unique: UMN-qQgqNEiFBErebzbgSQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14DE6801B30;
	Tue, 15 Feb 2022 02:23:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A353999C3;
	Tue, 15 Feb 2022 02:22:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEAAA4BB7B;
	Tue, 15 Feb 2022 02:22:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21F2MRhN007144 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 21:22:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2A04B400E420; Tue, 15 Feb 2022 02:22:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2558F400E136
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 02:22:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C836899EC2
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 02:22:27 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
	[209.85.216.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-607--3SZtwL1Mkaf5QvdIMIW3w-1; Mon, 14 Feb 2022 21:22:25 -0500
X-MC-Unique: -3SZtwL1Mkaf5QvdIMIW3w-1
Received: by mail-pj1-f51.google.com with SMTP id m7so16248209pjk.0
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 18:22:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=j40ZQExLVqLbGgoSlYZ7SILlAw2NMTA3viYACFtD35I=;
	b=3+quyV4H9+Yfdu1oXMY5k0UBw1p2DKQamk2VhB4dy/xKNuNWnWADpTPXU4wErrFr4T
	tu+EtUibB0xmjgCcO1kiTI4WFMvsRsBroFlzYAfRwvDPQh44kNVYan8sHPL5nWUGc+k4
	xA/sLaF1CBMafI/3GV/+BukMFQntOap3ZfPuopJ+tgsJ8FygqcjDmm4CSnKm6NB/CMZT
	4iE/uSteNCBqd5TTEy8WnmN1//ESCEMUarBtzCnwWXuhKCy8u957r7OgV9592y/ojEBS
	ZCaSxDZ2eiWiejajmMLY4/xyNeIwVR0WNDW0UIXIR+goLFeVrD5fL76vh7OlCXDqtMUQ
	5xeA==
X-Gm-Message-State: AOAM532gATxRfduEnzHiVqaeflZ0aCX0Gae17G+OjVN85iVwHjI2dwfD
	HJHbDGz57Jtaz5UdDQqRSE1kueCaRrMP3f3DuHAOSHBc
X-Google-Smtp-Source: ABdhPJze6EUzaeMRB0P2sTgtP9us39QmxygSnRFZAoXuoGIgjlxXIEBry2xKwOlLcsFKGZiOcILXY7i3SekFI4inqyw=
X-Received: by 2002:a17:902:9a06:: with SMTP id
	v6mr2086882plp.60.1644891744193; 
	Mon, 14 Feb 2022 18:22:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:f951:0:0:0:0 with HTTP; Mon, 14 Feb 2022 18:22:23
	-0800 (PST)
In-Reply-To: <51BFC8C1-7D2A-48A3-A4D4-D513CE92C5AC@cfcl.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
	<20220214.153145.899.28@192.168.1.100>
	<CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
	<51BFC8C1-7D2A-48A3-A4D4-D513CE92C5AC@cfcl.com>
Date: Mon, 14 Feb 2022 20:22:23 -0600
Message-ID: <CABKqQvHSmTtcy54yn1=fG+tJ_Lx2qEKX7R16tyj+KYh4L9U3aA@mail.gmail.com>
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Any suggestions for monosyllabic replacements for ':' (colon) and ';'
(semicolon)? I would also like to know about any config files that
would allow me to make such replacements.

Amanda[0]

On 2/14/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>
>> On Feb 14, 2022, at 08:23, someone (?) wrote:
>>
>> ... part of me wants to force my screen readers to pronounce W as "vey".
>
> Oy vey!  Seriously, you could have it spoken as "dub", which is a common
> shorthand in terms like "www" (i.e., dub-dub-dub).
>
> - Rich Morin
>
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

