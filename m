Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E03F4C50E6
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 22:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645825829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TzhyiDx3ESssqbBACpyE5nX9K5SmleyMP7RXrrewE7c=;
	b=CGbt/Q3notrU9FwjPrSS3VKbIiYmKrDnUyWWoDb9n6a6XVqdIaLU14C941vcP4bctPTCc6
	COGtBOvZ00INngmmglTt/4DwXXeIDSEqTMbMFS2rANp27sUcmRqQpKcKTmoGf5k+/k/WVg
	Inuau8mh2K3ySq24vwAfr+79/rRPbyo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-264-6qwx9cbkPnKA5qNyNZn1Pw-1; Fri, 25 Feb 2022 16:50:25 -0500
X-MC-Unique: 6qwx9cbkPnKA5qNyNZn1Pw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B93CA51DF;
	Fri, 25 Feb 2022 21:50:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDB1092A67;
	Fri, 25 Feb 2022 21:50:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1137E4A701;
	Fri, 25 Feb 2022 21:50:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PLl7gF019172 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 16:47:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7AD46C080A9; Fri, 25 Feb 2022 21:47:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76C86C080A6
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 21:47:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5DD31802A5E
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 21:47:07 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com
	[209.85.128.181]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-185-jUt4Ip0PNNSBe6npWTEptg-1; Fri, 25 Feb 2022 16:47:05 -0500
X-MC-Unique: jUt4Ip0PNNSBe6npWTEptg-1
Received: by mail-yw1-f181.google.com with SMTP id
	00721157ae682-2d07ae0b1c0so48081167b3.2
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:47:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=8+sUOXfFLA5eDHsXtGHdA3RRxv8F6QuzMcx0T5eovjk=;
	b=jTYk2mIRRQpILT7R8I1xBOQBj16SjhNDSRmRYDjQadu9MwNpfwMWg1g4Iz1kJ4IyxQ
	r14CnNpV7gzSPmNl28+3K8bxnkJNElTLLHXk5Z4qhtSZC8n5Dbuwi8JUSMe6wNKdaE2Q
	gkI3ZKrMUhutHk1+WtT3naqVL/GsYMecGAgxGvc0a7CMGRuhDjR5Y8Xyk+Y61oMOr3BV
	x43Wtiy9OxX7FcVgHRIrkvMZ+xt8bV2Pci+YatlUf3wbt8CouJw8FJA/UEfkObe9xKeI
	IJfjGoJ4Yede+J+GovlqUirKR/hYG+Ctvdbu1Zr7vPlsGYJiig/HzYWrsot+EKwuBgKn
	NCFw==
X-Gm-Message-State: AOAM532zgg9wVGb3PjnF3r4wrxvAWFm03mYOI/aH6lw/bl9UP6++cxRz
	junK25IgNgXfJ6sdupB4a27b7cACOOa29nnDhLMDECB64E0=
X-Google-Smtp-Source: ABdhPJzS/zX8lpmJXvjny2tlN7oI3pHkcEoZ70OIvcZyqVCoEcjLJRXs53gbtHqV7SDpMOqmh7jEpn0LWgSjn7Ue4Bc=
X-Received: by 2002:a81:4f11:0:b0:2d6:bcff:51b7 with SMTP id
	d17-20020a814f11000000b002d6bcff51b7mr9539050ywb.51.1645825624734;
	Fri, 25 Feb 2022 13:47:04 -0800 (PST)
MIME-Version: 1.0
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
	<1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
	<753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
	<e995e809-c3fc-20f7-a633-82e9fd1e4e87@gmail.com>
In-Reply-To: <e995e809-c3fc-20f7-a633-82e9fd1e4e87@gmail.com>
Date: Fri, 25 Feb 2022 22:46:52 +0100
Message-ID: <CAJ4cocyr56pDGi7Y8D6w5beJwVcDUR0M4vpX13-4Kfo9prB2jA@mail.gmail.com>
Subject: Re: Voice assistant on Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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

Hello as fast as far as I know there are some things but not really
efficient working

Linux for blind general discussion <blinux-list@redhat.com> schrieb am Fr.,
25. Feb. 2022 22:30:

> Unfortunately my system (Slint) cannot run snapd, no Systemd.
>
>
> I tested Almond, but no use, you have to type queries and in that time I
> could've asked an Echo.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using Thunderbird from the Slint machine
>
> On 2022/02/25 21:30, Linux for blind general discussion wrote:
> > I thought I remembered someone telling me that you could install Alexa
> > using Snap, but I also remember it being somewhat experimental or
> > something.
> >
> >
> > Yes, I also have a couple of Alexa devices, I just keep them out of
> > bedrooms and bathrooms, what I consider to be the most private parts
> > of the house. They stay in the livingroom and kitchen, where they are
> > most useful at any rate.
> >
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

