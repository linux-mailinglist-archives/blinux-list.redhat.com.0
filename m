Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0AC4BA956
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 20:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645125130;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WKusKNdf7XKKgK8dGft+x2JcSGKMAHkfdlfNC6s+GJs=;
	b=X7LNmhFIMC0bT1mkKxd80M+MpezBzHI6/Nb3QwWSiq/ClC+IR8JE6OtICgZ0coIVv1JLAk
	TbZsPX9yyJ+4UTTfAX8tGQBvHQGExBCJYg/bn4S1J2hweMEDjQkdKj2S/zLLk7Gn1ukvjC
	2pOZbRO2zKJogQ53ZbYxbGvwqSe5Dsg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-189-yPOfTz-yPHqd_y9C902jiQ-1; Thu, 17 Feb 2022 14:12:08 -0500
X-MC-Unique: yPOfTz-yPHqd_y9C902jiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2AB4D801AC5;
	Thu, 17 Feb 2022 19:12:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A64560BF4;
	Thu, 17 Feb 2022 19:11:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8AEE4BB7C;
	Thu, 17 Feb 2022 19:11:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HJBncc001281 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 14:11:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 57E535361EC; Thu, 17 Feb 2022 19:11:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5431D5361DA
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 19:11:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2FC693C1EA60
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 19:11:49 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-489-zqFoyb13PvqW5IjeI2WqYg-1; Thu, 17 Feb 2022 14:11:47 -0500
X-MC-Unique: zqFoyb13PvqW5IjeI2WqYg-1
Received: by mail-qv1-f47.google.com with SMTP id d7so10213671qvk.2
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 11:11:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=zsw2odpUuertOo3YhnhLw8JxhIC+itaF+fY09YLd4gw=;
	b=RNriD7+iUYgKY4mEt2Gf/VQz0D/xAbt8C+iq96YKeDpcDSI8g/tJhwVwQcIpPU/DHH
	MGx8/69AmKjaxYa9UyV4jdN1+e7auE2AysPrFn2kjOZ5TD0Zbh3LV2UHNanQDPF5hYo9
	h67rpfo2fbUJRh/NgqjrZxeQwJJrn3qZPgNFkMiJWj79r4l01MBiMly3ZrM2cLG6nUnn
	C33X15Et5UwGnpQrYFl/ftaEk69a6r47EW1mGRgwa0HqyhmCO0SEonC0Xc6/+VQmjtXw
	w1iszvQ7ouzG/o9jlwprNVg6hIqzYUWhuUCuwpO7WqwM+BhH8Ve1TCqpN4n8eByrqSIp
	FTiw==
X-Gm-Message-State: AOAM532UtRADeIJYMyHq9mMxUb7jFAAbbq+979UU8TaU2tU8H0NSBdap
	p0GzovzGtv9Nc2l44aDETTMpUklAfxsM07LMvpRkW0KKI18=
X-Google-Smtp-Source: ABdhPJwyaj87ZO3vRPWVV97amBMrnoMCLF+gHchXa2vV0VtNrsPaiZROaIKa5asnxDERkjL/a1ImvSiBoY2v3XtFbWw=
X-Received: by 2002:a05:622a:64b:b0:2cf:1716:2344 with SMTP id
	a11-20020a05622a064b00b002cf17162344mr3821072qtb.635.1645125106895;
	Thu, 17 Feb 2022 11:11:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:d06:0:0:0:0 with HTTP; Thu, 17 Feb 2022 11:11:46
	-0800 (PST)
In-Reply-To: <9232394C-10EC-4430-9C95-DB8801ED88C9@gmail.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<9232394C-10EC-4430-9C95-DB8801ED88C9@gmail.com>
Date: Thu, 17 Feb 2022 19:11:46 +0000
Message-ID: <CAO2sX33Of-DwYXoTs2w0GB1n_8bwwsd1iUH+Qy69EOWdn9=X-g@mail.gmail.com>
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I suspect the issue is that every distro's ultimate arbitrator of what
qualifies as free software, what software will be included in their
installers(regardless of whether they count it as free or non-free),
and what additional software will be included in which repositories
have different opinions, and for whatever reason, a driver for your
Wi-Fi chip made it into Fedora and Triscale's default installers but
didn't make it into Debian's. Without knowing more about which Wi-Fi
chipset your using, the available drivers for that chipset, and the
relevant parts of each distro's policies, it would be impossible to
know for sure.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

