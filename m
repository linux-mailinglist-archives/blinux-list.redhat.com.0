Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D72CC27F2A8
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 21:38:23 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601494702;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lqxRU15QCGcS4tM60a8ssp8+QhLlBD9bg9TQfOt0fP0=;
	b=g5TBN9rIMQeocBnFx9hYQDH67csML2kdEoIX2kHFWZRgdG84wTVCZPwOSmGHvLcICSh1Hs
	DxbjIKCXA2Mm+xgK3glaPpxlVwYVG3Q4cD6TgNdUxtvIEPUPjOzaAd91yvyXwbN/tIBi7O
	CXFT4UJ0oGvJN+BtaoTZcNCMGpTDXog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-BktPTI-jNfWIPATqmHzdyA-1; Wed, 30 Sep 2020 15:38:20 -0400
X-MC-Unique: BktPTI-jNfWIPATqmHzdyA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8334E1DE00;
	Wed, 30 Sep 2020 19:38:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01B4A5578D;
	Wed, 30 Sep 2020 19:38:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B83644A57;
	Wed, 30 Sep 2020 19:38:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UJc6AH000697 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 15:38:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 025482166BA3; Wed, 30 Sep 2020 19:38:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1EB22157F4F
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:38:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3663F800161
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 19:38:03 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
	[209.85.219.66]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-82-Lf1ZuZeMMXy20Izln2OD0g-1; Wed, 30 Sep 2020 15:38:00 -0400
X-MC-Unique: Lf1ZuZeMMXy20Izln2OD0g-1
Received: by mail-qv1-f66.google.com with SMTP id q10so1564194qvs.1
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 12:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RE81YDcT8drLqmHJr8Nl52wlFkI7+Vc1CQy4A2qjQSE=;
	b=M2E1730gsdDkvKnVcS9z//QO5r/p4oRaCZbo87L3qE8gBdJlsdmqek6o8qBgeGtPj1
	CsQXrrUVf8fvrN0vE60IvDem2vieUSivOoDbxvTfft3QJnpyEzukHpfrXHwdVL03Qihr
	5BmtrlRyjMglcFKmWayNTd1KDeRD/TeHmutLrkMU1JJ/lKkD3dQKB01fv4g0bujwzQvM
	rw79CwipF1xs/EDo05bRaISVua4Cz7jxc1mt93mi4LDnQfCWhRdLHlVFGoHUgnnQXqnd
	s2M+NLr4Ugx2ESizujbqlSNujuRFT0MvrzgZo6hZ/y1pLhXualQj/2hioFX49m1DOHHn
	ny8A==
X-Gm-Message-State: AOAM531df8D9J5KgDA6xzihmOxAnXgRpxzI6KiPpsFSetGanNCjLqemZ
	7825lF8eqekwj6KXdszV2S/PGXBZI2E+n3UEa0KHPzxoPa0=
X-Google-Smtp-Source: ABdhPJx4XiRsABZVa5fn2iJqBXzDWmawyRQqj16HABOp2YhHLcV5g+n8UrEn8quHT8S+2PiMeroRtmTW4BiM3upUBzk=
X-Received: by 2002:a0c:c48f:: with SMTP id u15mr4153997qvi.55.1601494680284; 
	Wed, 30 Sep 2020 12:38:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:cd91:0:0:0:0:0 with HTTP; Wed, 30 Sep 2020 12:37:59
	-0700 (PDT)
In-Reply-To: <alpine.DEB.2.23.453.2009301142230.3902695@chime>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
	<20200930121251.7d6b8c35@bigbox.attlocal.net>
	<Pine.LNX.4.64.2009301423450.2145@server2.shellworld.net>
	<alpine.DEB.2.23.453.2009301142230.3902695@chime>
Date: Wed, 30 Sep 2020 19:37:59 +0000
Message-ID: <CAO2sX31R4DbrDdo83JTRbzYpz-kGRJ8KWYz-HH3p3uSF0D+E7g@mail.gmail.com>
Subject: Re: Console screenreaders
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know about Ubuntu, but my understanding is that the Debian
package for Fenrir has been broken for quite some time, so it's likely
Ubuntu inherited the broken package. Unfortunately, Fenrir's developer
is, if I'm not mistaken, an Arch Linux user and a bit out of their
depth when it comes to packaging Fenrir for other distros. As Fenrir
is written in Python, Pip serves as an alternative to using a
pre-compiled package or doing a install from a git clone of t he
sources, but I've heard people have had mixed results with that
method.

On the graphical side, I am unaware of any alternative to Orca, and of
the console screen readers I've heard of, Fenrir is the only one I'm
aware of that can be used within a terminal emulator and not just from
the console.

As for the apt error listed above, unfortunately, that's like apt's
most generic "this package failed to install" message and typically
comes long after any actually useful error messages in apt's output.
It might produce a lot of output, but if you try running the install
command again with 2> error.txt or something similar on the end and
post the contents of that file, it might contain something that can
actually be used to identify what went wrong... sadly, apt can
sometimes be quite vague or downright cryptic as to why an action
failed even when you catch the output at the time of the rror instead
of the generic message above that comes at the tail of apt's output
after it's either finished everything else or given up on trying to
move forward due to the errored package.

-Jeffery

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

