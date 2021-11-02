Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E449442AA1
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 10:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635846398;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hmNYCgz07gpepZp+8O7amdHpNJbFmsZZv6ftWQoef8k=;
	b=EHvNvEXpPRD2iwHIcOWNCszqG21L1TFtVRvPzjFP1yna+Ru3DDeUGlESERY6dzkab0rQyU
	QCh2jnPxOqP3PfzJpgL6+FtRbEWATfCRIbv4HlTd7/c80AuzT5StFazSVsgYIn58SanSp2
	+1LE9gwKSvElTvEK0VcLI3fWpJ1fOgI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-EiQ08w9lOs6GoUejiU7CZw-1; Tue, 02 Nov 2021 05:46:36 -0400
X-MC-Unique: EiQ08w9lOs6GoUejiU7CZw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D19131922963;
	Tue,  2 Nov 2021 09:46:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07D2660C05;
	Tue,  2 Nov 2021 09:46:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B27E54EA30;
	Tue,  2 Nov 2021 09:46:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A29icwp025338 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 05:44:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 90B8E2026D67; Tue,  2 Nov 2021 09:44:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B58E2026D5D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:44:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13BCF8339AC
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:44:34 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
	[209.85.222.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-186-Be_Ne7fBOc22Qp6Pt9EnGQ-1; Tue, 02 Nov 2021 05:44:32 -0400
X-MC-Unique: Be_Ne7fBOc22Qp6Pt9EnGQ-1
Received: by mail-ua1-f44.google.com with SMTP id b17so26703386uas.0
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 02:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=00gXLv/IUcboUwP8acNN29i5ikHk6xfKNuQPn61Ili4=;
	b=3BkobJWCUnn471e4J+E0F6SNjsaAJw1dmKWf56B46/6AubGAd2nfEKopU5Fo5LIzK9
	093u736PTy2dkSW59yUqVehHuhfIgQZYn9q3VCCnNWKMOQKCVjYhWL+aGWZNSq+L/q3v
	Quw79mxzMsRfVQIMXIska8svfSA83Tm1URYRC9pHULL4bUu+gbVKtb4zFO6b6LADNoBo
	r71oANId0Yk5bEFuo8aCGJN9iTpuPPekDHFDXt/l3mQpDB3JPmRQdhouIhaD1lO1HnGF
	LpwXeQloUY8D4+d0aFGAXLzNfE2cixyzJh1IvGMzfkwuj4vxLVuOhujgFTHFWDFX0ab9
	6Y8w==
X-Gm-Message-State: AOAM530JZHbaZwRt0/Xnkt3Uqs6ich9scWFGlbSY20cPTCGG6LzkMtP0
	qRZyun3impLlBIriJbzTKJE8eExilTLV2ZY62C/zw8eKM4E=
X-Google-Smtp-Source: ABdhPJxsXdqMgINAvv+ozmBofN1s2Yf6mlYVX2qH1Gsu/liN9lQAwKobbhB7/4YgrM7HLqjf4ur2Vpe5fBcwW0Z2EsU=
X-Received: by 2002:ab0:6eca:: with SMTP id c10mr14863661uav.118.1635846271704;
	Tue, 02 Nov 2021 02:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
In-Reply-To: <20211102083235.nuzcsnnrrr2kxyno@begin>
Date: Tue, 2 Nov 2021 11:44:20 +0200
Message-ID: <CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

FYI, I have a PR open for object navigation in Orca here:

https://gitlab.gnome.org/GNOME/orca/-/merge_requests/101

However, this probably still requires some work, and I suspect it will be
easier to add in once the migration to the libpeas plugin framework is
completed.

Regards,

Rynhardt


On Tue, Nov 2, 2021 at 10:41 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hello,
>
> > Accessibility on Linux has historically been under-developed,
> under-maintained,
>
> And thus let's split the effort instead of joining? Ew.
>
> > Members of the Rust community are reimplementing a number of C-based
> programs, making the argument that they can improve on the current state of
> the art.
>
> That is right for various C-based programs that are a pain to maintain
> because of C. Orca is not a pain to maintain because of Python, it's a
> pain to develop because the problem itself is complex. Rewriting in Rust
> won't change that.
>
> > On the other hand, choices are good.
>
> Choices are good when there are enough people to work on the various
> choices. Split the community, and instead of having one good software,
> you have two poor software.
>
> > not a tremendous amount of development occurring on either.
>
> That's just a matter of people joining in.
>
> > Does Orca have object navigation? No flat review is not the same thing.
>
> Where is the feature request for object navigation?  Where is the pull
> request to propose an implementation?
>
> > Also, I can't remember which, but other the Orca dev or someone on
> Mastodon
> > reviewing Orca's code said that, I believe the Terminal-access code is
> > "black magic".
>
> For terminal access, it'll be much more interesting to run brltty, which
> has decades of experience.
>
> brltty -b ba -x a2 -N
>
> Note that the "black magic" inserted in Orca is most often because it's
> the application itself which exposes bogus information.
>
> Samuel
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

