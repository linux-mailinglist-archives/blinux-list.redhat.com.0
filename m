Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id EED5958BF9
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jun 2019 22:48:47 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 01B4A3084266;
	Thu, 27 Jun 2019 20:48:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C50C01001B23;
	Thu, 27 Jun 2019 20:48:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 20B841806B19;
	Thu, 27 Jun 2019 20:48:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5RKlbm0022437 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jun 2019 16:47:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9221D5DA34; Thu, 27 Jun 2019 20:47:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx08.extmail.prod.ext.phx2.redhat.com
	[10.5.110.32])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CA4F5D9E2
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 20:47:35 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 93D0DC059B9F
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 20:47:33 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id x21so3688188otq.12
	for <blinux-list@redhat.com>; Thu, 27 Jun 2019 13:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=nliT32fhDaRzu+ZMOjMdoa3Cgw70KNzGOlX/nPvglfE=;
	b=Xf5pOemo7LE4q1bjDP5OQusvKYF9p0zrGKpf2SRhYJLh53xqPPsv+MdotONeaOvCxE
	RGvoHDaEKyXmGA9fIKj4AGsQiScsMQrxFQVtd0AnJvAhJJ8XgqHflPeztSokB2VIiCSE
	vstJ0hgBDgZwFTMZvaZAqlAhgf9z9T+1ib0zo/KiHXLgwm1iU9EuSRoHEL+v5mCj19g2
	fMtokSXfhwlfo3TQ+ItZBihroDCcey8vZl4Dd5k1LWZrtKx6XVj8e6X2cHDp76yZpKND
	1EUWX1Y78/TCUtyN5F4qBtoS6WgsVl3u88wYz2lgQxyry5JRMi/LFBBKK8i4HGKn/DsW
	wIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=nliT32fhDaRzu+ZMOjMdoa3Cgw70KNzGOlX/nPvglfE=;
	b=N9rn5NcxSo8TYoGOzQnvy9Lp/3gCg8jUcNvxLuP4flxFXd8GL/HpK+5jthJS46SuC/
	RsiNu8Ki4HXtp6EUW83EpX9CGRR0qoZwQi/6KDpEMh2HMTtrcQRmqotk54SvaVneuowE
	ktrNUcoo15QCV4cA6Ve4dAMf+gGM/O+ZqkybwUGwxUEcgNmFWsZfmvsbwqOVBwa6Pa5Z
	pp5NU0G9PuJYw9w2Nap3KcbAXL+6K8LerYE3OlLWyA2UzsEUTo3CcgObB3IVlF40w3uh
	uG6y+RIRv22lRvjQg+BtLBp1i6bQ7RKX4W6RSosCqCvfZUgDvyLSgJBkdwYNNmXVotY4
	s8KA==
X-Gm-Message-State: APjAAAUMp/UNpG37M7SOusteYll86nT/GFUzCQ92Ie5eiHjHRbmT3jFc
	jdJ75kV9T59mdWuWdgW0IxqNFIi/w05qj/xT0LoADQ==
X-Google-Smtp-Source: APXvYqwcIq6mcH7UVGfhohDDEaQvAuzDf++Ij4CyyAupYCWXyy2nZaEyTVXxlc2DibMRDZJzyVh5Imdq0WV8GUF5QsI=
X-Received: by 2002:a9d:6195:: with SMTP id g21mr5324355otk.103.1561668452953; 
	Thu, 27 Jun 2019 13:47:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:6ac9:0:0:0:0:0 with HTTP; Thu, 27 Jun 2019 13:47:32
	-0700 (PDT)
In-Reply-To: <47a843cf-0663-454a-08d5-577d59da03be@slint.fr>
References: <alpine.NEB.2.21.1906271110410.22430@panix1.panix.com>
	<CAO2sX31x2=fK7_HtdOc-dXtTt2chZ8P8FUaQ30HHA872UXH87A@mail.gmail.com>
	<47a843cf-0663-454a-08d5-577d59da03be@slint.fr>
Date: Thu, 27 Jun 2019 20:47:32 +0000
Message-ID: <CAO2sX32fqDesO7OJC-pEX8q+mzepkZmvr8DMLnK81hcKkr94_g@mail.gmail.com>
Subject: Re: climagic
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.32]);
	Thu, 27 Jun 2019 20:47:33 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]);
	Thu, 27 Jun 2019 20:47:33 +0000 (UTC) for IP:'209.85.210.66'
	DOMAIN:'mail-ot1-f66.google.com' HELO:'mail-ot1-f66.google.com'
	FROM:'mewtamer@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.107  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.66 mail-ot1-f66.google.com 209.85.210.66
	mail-ot1-f66.google.com <mewtamer@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.32
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Thu, 27 Jun 2019 20:48:46 +0000 (UTC)

Okay, apparently, I don't even have a /proc/config.gz(tab completing
on /proc/co gives me /proc/consoles)

My installed system is based on Knoppix 8.1 or 8.2, though except for
the kernel and Knoppix-specific accessibility packages, everything has
been updated to the latest Debian Unstable. My kernel version is
4.12.7 and the only package I have installed from the Kernel category
is linux-image-4.12.7. I'm running an older kernel because every
attempt I've made to install a newer kernel from the Debian
repositories has broken speech.

I do have a second hard drive with a nearly stock copy of Knoppix 8.5
that I plan to make my system drive once I can get hold of a Sata
cable(the narrower kind) so I can hook up both harddrives
simultaneously.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
