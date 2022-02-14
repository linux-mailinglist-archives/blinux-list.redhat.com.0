Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1274B418B
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 07:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644818703;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wdJb4xYDKnYU33Wi/f3YWrJtew7QSdIOBnjA79HcuDU=;
	b=GDjxanj3B/AQUOsykF1mxfhcQgz0tigsE1pt8+3/uIfT7XdqRP0oTU4Q25CBl+PwGSsHll
	aKm920RbWwm8My/Pr4vrHNBHCBJ0/vz/fBdPPtlnj24u/uHNhx92BRPJETQwHuS/7dEYDh
	uKqv+J50C9hi6m/6Bql+oEB5UqW5S+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-g6emRVEWPeigi21slazzGA-1; Mon, 14 Feb 2022 01:04:59 -0500
X-MC-Unique: g6emRVEWPeigi21slazzGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3E501091DA3;
	Mon, 14 Feb 2022 06:04:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEA0A4E2B6;
	Mon, 14 Feb 2022 06:04:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 59F7E4BB7B;
	Mon, 14 Feb 2022 06:04:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21E64j8R029163 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 01:04:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F337B492CAD; Mon, 14 Feb 2022 06:04:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF21C492CA3
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 06:04:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D695E1C05AA0
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 06:04:44 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-154-arIce6FiMtGpIMk8vySUzg-1; Mon, 14 Feb 2022 01:04:42 -0500
X-MC-Unique: arIce6FiMtGpIMk8vySUzg-1
Received: by mail-qt1-f169.google.com with SMTP id z1so14627394qto.3
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 22:04:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rEYOxPvwIaIahoTaaNpyCTcvfSaKwV+qSwQLSeb1BCo=;
	b=AYIf8v+aKZGHqw/n43C/C3XYjnDe451+TOlb1+L2fSusm7psFnWmTddQkNH2AoReco
	1FLjTCQ+ETn5VyNvrqoQlsKrNbdWlk7B/npa6ux1yZrE9xjUjDbzSe1+TtxgpIwg/xvj
	pRVHC/BoOoiry2Xt25KoaowywV7ndZ4Wb/D74kaLJZ0X8uXaketyZdRhQ25o8O0PScMn
	T3G1IaKZL8EDL0PYVHwKPmr+zIK/y+s6OE5SqKSOhY8JDtQ+h3UnJUTm40L9nTFezUW5
	SE7syrJwyhQQVj6c5bw9hO819yZatwrHcES06CfvDP9H7iz5qkh3qg8vkayWQdgqhYS0
	0gpg==
X-Gm-Message-State: AOAM532Frp7w+BpfNzQNq/UsZPAfwpfS/XvWoTu4Dm+ZFMcKPzlkMee4
	vc0jmJtRDkJNbfUa4sLA1W5DVyD/lHoGAsVVeQY7SvjjMqw=
X-Google-Smtp-Source: ABdhPJx+SfIcVnfE+m7B1R18AoNIMJhR3nr/Oat5SgOy9TVevKthLNvoMSXmiXQYSNBMsUgqR0GTWinj8GrChNK5BCI=
X-Received: by 2002:a05:622a:1056:: with SMTP id
	f22mr8455194qte.258.1644818681933; 
	Sun, 13 Feb 2022 22:04:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Sun, 13 Feb 2022 22:04:41
	-0800 (PST)
In-Reply-To: <ddc1a3ea-835c-1bfd-4060-d508340a664c@free2.ml>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<6076529C-A57A-4E14-99A5-7F410CCFAC9A@cfcl.com>
	<ddc1a3ea-835c-1bfd-4060-d508340a664c@free2.ml>
Date: Mon, 14 Feb 2022 06:04:41 +0000
Message-ID: <CAO2sX33gs-8HKqEaQM1bKtsbENXbOAsfb6aXncd7ow589gMG6A@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The YouTube video that was linked was hilarious... though that guy's
system for pronouncing punctuation doesn't seem very practical...

Though, now that the subject has been raised, I'm noticing quite a few
discrepencies in how some punctuation is spoken by Orca versus SBL and
how often it isn't the monosyllabic way*carat versus circumflex at
versus at sign, number versus hash, vertical bar versus v-bar...
Making as many punctuation marks monosyllabic as possible would be
nice.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

