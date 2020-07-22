Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4CD21228D15
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 02:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595377628;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ly05r/S6TNy4f06G1eswc2kmLI6RcJ15epf/C4J8GPk=;
	b=DMbLehJJUzYb78Xxo7r+lnHpOgcXVW+ngL0IK0d1yxrFkmMKLg41uP0ep/6b5f8Zy/bCM5
	qzoSoj97jw2649GyAZOyukZOujQix81Z2B0ZCl+5eTDHHt9q+SuKdUeB9PLTjspJ1LvOtW
	+/dj5K+d/lY4d78rRnUnWxUvi1ebsk4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-VhM5FRkBMD2MwCQOqK6tNQ-1; Tue, 21 Jul 2020 20:27:05 -0400
X-MC-Unique: VhM5FRkBMD2MwCQOqK6tNQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50BEEE919;
	Wed, 22 Jul 2020 00:26:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B78C6FECD;
	Wed, 22 Jul 2020 00:26:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 538001809554;
	Wed, 22 Jul 2020 00:26:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06M0Qqwb030592 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 20:26:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7526C202B16F; Wed, 22 Jul 2020 00:26:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70A3E202B16C
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 00:26:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9923A1012443
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 00:26:49 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-433-tW_4PWlGPj6VVQbEZ--blg-1; Tue, 21 Jul 2020 20:26:47 -0400
X-MC-Unique: tW_4PWlGPj6VVQbEZ--blg-1
Received: by mail-qk1-f171.google.com with SMTP id 11so466093qkn.2
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 17:26:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EwhP5mpT+Rpf1bO1plc6B+NmVy9mOaHQUGRNOr1yvDk=;
	b=CEwq0IiLTz3wovPJ0/vsVo6JdUHx2MCpjIdqxQyRsmucIoLayXiCvxQlAbOaD4ejEV
	48OlkO/X48chMCBXBbInh/kJaluGLLsd6+teN12kLgGq6x8cPASscUctZ2e5r3yuisNY
	IXoMP8kivLvOP5SkwVQn3Cq6Svo6lmDF9Coe+jYp40NeFgnekWIHxd8xEMhiaQx7oYgb
	7KGUXVBvmiwPCV6n/yfe86HFyNsewAimv1uCBRDJRlun+7f9uGgDztj+GgFkinR6qZpE
	KpHFfty6CH+NIwFKvCotG/liu/3sz1fpaleAjw6OYqVXRHXdtgKhs9fnCbFtFA9laiYx
	phoQ==
X-Gm-Message-State: AOAM5305DAQRSi1qsFEO01w68sza12WsbD3sXi02cV5Zlr0yaKdfhY5u
	3JdgwEq6ykcPd+3ngjf4HEZmo1HvhbBpXn3eZe3sVuif
X-Google-Smtp-Source: ABdhPJwOZanCXzxgKdwPV/bd5J2hEJie6rduOw/lAPdl8tCZqft+P3GRlK4pQHTsBpESfNGDW9FGchb6Y4JjtP+3Hts=
X-Received: by 2002:a37:5bc3:: with SMTP id
	p186mr30366137qkb.401.1595377606186; 
	Tue, 21 Jul 2020 17:26:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:4e90:0:0:0:0:0 with HTTP; Tue, 21 Jul 2020 17:26:45
	-0700 (PDT)
In-Reply-To: <01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<005c01d65fb7$4cb802f0$e62808d0$@gmail.com>
	<01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>
Date: Wed, 22 Jul 2020 00:26:45 +0000
Message-ID: <CAO2sX30v8J32H9fQ-Ouxqy3fnBBBHO=-3wV3tEnd+XoJSznAvg@mail.gmail.com>
Subject: Re: installing speakup on RHEL 7/8
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The Kernel is pretty much a black box from my perspective, but as I
understand it, Speakup is a Kernel module, each distro is free to
decide which kernel modules to include in their default kernel, and
that due to REL being an extremely conservative distro, they exclude
pretty much everything in the staging tree, which includes Speakup.

I could be wrong, but I suspect that in order to use speakup on a REL
system, one would have to compile speakup and any other part of the
accessibility stack that directly relies on it, if not recompile the
whole kernel.

If switching to a different distro that does include speakup in its
default kernel isn't an option, one might have better luck getting a
userland screen reader like Fenrir up and running instead.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

