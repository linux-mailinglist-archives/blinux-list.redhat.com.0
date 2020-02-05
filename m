Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id B181715359B
	for <lists+blinux-list@lfdr.de>; Wed,  5 Feb 2020 17:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580921590;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LYNNeDZzm06X0A5NhE6WdrBZjxhLnhl4pjhqB4depK0=;
	b=aIfNVgT79e80PwEfnOJtZlRPMzgRXc3bLHpGsWiPXKzyXQ+6P2PvWTYS5BvzVCAd9ilIuL
	bTIQKS/BM9dW6BdTG1DHSfaSr3U2tehCbtbcYfirwYtgfSv1llTp++pcJPncsAH12qSYrM
	QNmnIxlmD3+q48bfiRcboJk7Wit0Lfs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-CzWhNXgTPH2_y3AgNkks7Q-1; Wed, 05 Feb 2020 11:53:07 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AEA21137841;
	Wed,  5 Feb 2020 16:53:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E366A100EBA7;
	Wed,  5 Feb 2020 16:52:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEF8285CD9;
	Wed,  5 Feb 2020 16:52:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 015Gqh1J014724 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 5 Feb 2020 11:52:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A42DA10031F4; Wed,  5 Feb 2020 16:52:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F88110F8E1D
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 16:52:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B21D780419A
	for <blinux-list@redhat.com>; Wed,  5 Feb 2020 16:52:41 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-282-RZU0fxy1PUCpZmGXFIqzSg-1; Wed, 05 Feb 2020 11:52:39 -0500
Received: by mail-oi1-f176.google.com with SMTP id q84so1405479oic.4
	for <blinux-list@redhat.com>; Wed, 05 Feb 2020 08:52:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=NGodFKexRzsiwBREgpXPMGnU9Wupo2z3xtqkmzPXTYk=;
	b=mxEkVIlukXLHddL7NnHnXzCe7GTed04rqvcr3TIfml/6SO0B/TWwiXBfyXVpRObeMJ
	By220hzu42H0CmtAYAnu08lCRawPoNaPSmaDHYG9oVWz4xGa1L1QcXH3DiPUKeAJylmt
	LrCnAIV1he8/UzAh8Bid5b4UJjUmmAyQAgbXKDHy7hOrn5b/Da4LUndoHjecavbD65RY
	W2ZIaS76oxbG8UEd1X25chupNhxpBP0mysFzoRVOL/RTXK5NbtJd3TdPFIvSmdc3qf2M
	oH024vSD6O7D3o32BQvCqSb4juzPFdYBRXs5NggTxs8OiB2H+HW5HX/NV5eC1vDiGyWU
	PhEA==
X-Gm-Message-State: APjAAAU99unFc/x+A87mvpWXFS3hcifV8ztBGZtzAp8qBREJi9SOh16A
	/um6Hiff7MBIg/mIZWY2A1Y3fLUY
X-Google-Smtp-Source: APXvYqw4G60LBLT1+PjqfzewG+G4zNbvsNHp2anBP8faLS/MgEYBbH+XAdqEytKsKWSKD+p5KA4t1A==
X-Received: by 2002:a54:440e:: with SMTP id k14mr3532206oiw.160.1580921558214; 
	Wed, 05 Feb 2020 08:52:38 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:4c9c:de05:ee6a:4329?
	([2601:3c2:8200:9360:4c9c:de05:ee6a:4329])
	by smtp.gmail.com with ESMTPSA id x22sm64814otk.23.2020.02.05.08.52.36
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Feb 2020 08:52:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Gpodder
Date: Wed, 5 Feb 2020 10:52:35 -0600
References: <CADj8Jxfm9YKA=hho-tQw+q7S7vaJpHX4TjK6oKQh1rcmtabZvw@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CADj8Jxfm9YKA=hho-tQw+q7S7vaJpHX4TjK6oKQh1rcmtabZvw@mail.gmail.com>
Message-Id: <3C1B0D55-600E-4039-8B15-BD4E58256A7F@gmail.com>
X-MC-Unique: RZU0fxy1PUCpZmGXFIqzSg-1
X-MC-Unique: CzWhNXgTPH2_y3AgNkks7Q-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 015Gqh1J014724
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did try that, thanks.
Maybe there is an orca setting I need to adjust.
I am not getting in to the menu.

> On Feb 4, 2020, at 4:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I just tried out gpodder on my laptop and if you press alt g you will
> jump to the menu bar and land in the gpodder menu. from there you can
> move and use the other menus in the menu bar.
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

