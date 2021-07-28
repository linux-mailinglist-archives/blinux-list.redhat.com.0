Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AC6CB3D91A3
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jul 2021 17:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627485456;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=F31aJgk1Npe/G+qeCbMsGf4stUSnWUyfWqTXfILKyIE=;
	b=ESQJ2e1Z4xk3IX7EouAXDGeLduYXBSUnUo2NtWjSEPksmHGx56HYfPRWNbxrnj7813/KEM
	ncBtvDOzfmXSSIF5PzAJVtXd4rJaP7NL+uyTtOJkHTskQXvNRYpi2gGo39aZwVi9e9cyBB
	e60eiuEz1h7GVfjKJd+ZX0YQ3bVn+lQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-551-YfXLpxIIMhy4mvL5e8AR8A-1; Wed, 28 Jul 2021 11:17:34 -0400
X-MC-Unique: YfXLpxIIMhy4mvL5e8AR8A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D52B9184F8E1;
	Wed, 28 Jul 2021 15:17:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9F32104C4A2;
	Wed, 28 Jul 2021 15:17:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B79F4180BAB2;
	Wed, 28 Jul 2021 15:17:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16SFHKwh011038 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 11:17:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6DEB721EC5CC; Wed, 28 Jul 2021 15:17:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 696E221EC5CB
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 15:17:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5637E8482CD
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 15:17:17 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-17-AxRDbDeMO0m_1hSXacnSog-1; Wed, 28 Jul 2021 11:17:14 -0400
X-MC-Unique: AxRDbDeMO0m_1hSXacnSog-1
Received: by mail-qt1-f182.google.com with SMTP id t18so1576154qta.8
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 08:17:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=oDzCrFqecCQPlJ/FPVGx6PyIdMCd5QxQR18jZetdXKw=;
	b=nPhX1YNwbIezPZIax32Kp4y8FuxDIzfyHuafMW+XyzPnC+5VC0IqXWjuzVNEvzYVwl
	tTpfmMrQCwcV8Y37jbDDP6vn4MTSps367Q8EPh3agQeiUo54JC9l8HtaU9ogyjHtLJ45
	7qwdo08FnO8T3hCRnRxb2TPyV/XA3koQABSGHNiuZFV7tJ4DxWU/xhS8obNXvIkx9O1z
	OI8l98wk2aI4ULE9OfXAJ4PQv1PnZm1J6SrkImZrczNXBh7q113+pEeVdKMIIyUTf76m
	8MXbH+ZM2AOZqSl1CxUnx3D4gAd56TlOP45sqhId0NpkD2SmDlczRsYHcA/op36xTMTB
	LoCw==
X-Gm-Message-State: AOAM531RJj8d/sannO43H1oXin1amTVktiP0cFdR6RtAjSGUwFti8kVM
	cstQUa0PmvALXOG9Q+FbyPr1/K5fsVqlKJGh+IEHtHKco+I=
X-Google-Smtp-Source: ABdhPJwWYKlaI9qpFx/8ECyviuEL2oj6JI0753sVQ4NVtsTyoP5XUojx7z8gDZnSy8sv73AL/m76dYwivjpnTI/6Q9U=
X-Received: by 2002:ac8:7613:: with SMTP id t19mr73514qtq.78.1627485433870;
	Wed, 28 Jul 2021 08:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
In-Reply-To: <b3f2a77d-40b6-1404-33ba-21580c29f6dc@gmail.com>
Date: Wed, 28 Jul 2021 11:16:44 -0400
Message-ID: <CAD_4ddSaTQ3FGNw8RaizfH4_Tau=zZ2w_UUnSXu2m8bazCa54Q@mail.gmail.com>
Subject: Re: Open Suse install?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello there,

As far as I know, it is not.
I cannot tell you more however, because I heard it myself from another
source.
Best regards.
Francisco.

On Wed, Jul 28, 2021 at 10:36 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi all,
>
>
> I would like to have a play with Open Suse tumbleweed. I would like to
> know if the installer is accessible, and if so, how do you get it to talk.
>
> --
> Warm regards,
>
> Brandt Steenkamp
>
> Sent using Thunderbird from Slint
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

