Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 974EB3ADB6F
	for <lists+blinux-list@lfdr.de>; Sat, 19 Jun 2021 21:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624129261;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kjNdqMYEDtV9i7MOfTkq3WrAlIbCEGFwE3+o2VH1O/c=;
	b=Qdb8Ie93MZmVQiBc1MoR/XSYQ12mnVOzbL/QVNM8VJmLtZLmnt+a9C3JuwEKgqcePyuCgS
	7szXovbpM+dB6L+TLnEN69KJg5clFaD3N/xvH74ftkkAuQJ+ncyMQNb0QPFtNw+qvTnZQ5
	/SoW5UXsdN5xXB9FXy2Le6do2bMquAM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-D3MlQwcNOXeB0PnIo-x7Ww-1; Sat, 19 Jun 2021 15:00:59 -0400
X-MC-Unique: D3MlQwcNOXeB0PnIo-x7Ww-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F341804308;
	Sat, 19 Jun 2021 19:00:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EABB10023B5;
	Sat, 19 Jun 2021 19:00:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3ADD4EA2A;
	Sat, 19 Jun 2021 19:00:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15JJ0njT026028 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Jun 2021 15:00:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4112D111143A; Sat, 19 Jun 2021 19:00:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C94C1111438
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:00:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF7591064E69
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 19:00:46 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-352-dJCvw3xBPta_Rm7vGwlLtQ-1; Sat, 19 Jun 2021 15:00:42 -0400
X-MC-Unique: dJCvw3xBPta_Rm7vGwlLtQ-1
Received: by mail-ed1-f67.google.com with SMTP id t3so13183797edc.7
	for <blinux-list@redhat.com>; Sat, 19 Jun 2021 12:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Pqp0gYyGI07BVJJgtuwW1SYp2tLKPAGFg4PSDVfOLkQ=;
	b=qAWHTBft83pWgej7VZCqB7IoZzhrKXk5nW0jS1vDSNL09f1u9OiG87WxsT3v95Me7y
	WhuvfOkBRIgoDd3b+Xm2WXuHKF4hWkuBFmQVVRkHJx+qeqAaQgAwnr89KPN5IfQizGPD
	4h5bURXu6QKy9O1gTe9RmQTxbvDMmy+v7IJLDqXgPwmYtygP53Wcz8YWBwB2Q0vFFP86
	p21fnXHaKhS83GrMu9IZ00usuDXC6qlrK7z8lgCi2fEdLZYBgIDndkm+lJxebjkCo/Om
	9cYvDbRx9M17/xLxtteJx2IqsMIo7PisBlWq9wVFXm+S2vzZ37Vbpq+YJHvsFHYAXX/y
	RxAQ==
X-Gm-Message-State: AOAM533OWNeAxndAZT3Q+t2MH/z4gkFTaVp0GKJJcZFDVomuL97kEvbn
	FmuBgXn6P+Hvb3SiuCr31pW79pV22GEwexrlzfOTyyiE
X-Google-Smtp-Source: ABdhPJyxg38HCZY3CbqIi0YfqbSmXZNip51qSozZruos3+Mnvfnv2fryGtBQBenP9nrBIRhQakFETxCiQnwc29shjPg=
X-Received: by 2002:a50:8fc3:: with SMTP id y61mr11740330edy.107.1624129241628;
	Sat, 19 Jun 2021 12:00:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:ecf2:0:0:0:0 with HTTP; Sat, 19 Jun 2021 12:00:41
	-0700 (PDT)
In-Reply-To: <220000834.4.1624128838799@localhost>
References: <220000834.4.1624128838799@localhost>
Date: Sun, 20 Jun 2021 00:30:41 +0530
Message-ID: <CAO2QrD5uieFmFQ15z=jMBeQnexmCO+E5h2Wo-mR=FUH7BwyNbA@mail.gmail.com>
Subject: Re: Accessible linux distro for raspberry pi?
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, I'll try finding this list via web url. and about debian, no, I
haven't tried, not sure it has good accessibility or not

On 20/06/2021, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
> Hi,
>
> Have you tried Debian?  I myself have thought about a razbury pi and thought
> about giving debian a try for razbury pi.  There is also razbian.  Hth.
>
> Matthew
>
>
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Saturday, June 19, 2021 12:06 PM
> To: blinux-list@redhat.com
> Subject: Accessible linux distro for raspberry pi?
>
> Hey all,
> As subject line says, I want to know that what accessible distros are
> available for raspberry pi? I want those distros which come with
> accessibility enabled on the setup screen.
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
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

