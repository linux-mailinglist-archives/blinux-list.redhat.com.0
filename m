Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id BD7C620551E
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 16:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592923829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JJSN5/a0TQ0GzH2m47VRTqqpDe3c0r+ZmDaL40ol39U=;
	b=fxQsOTMyuclijYJFNgTfSsbKYa4TjGko3GHmfbBK0YO17kzeadwR9/GKwVI/nRohW0B8Gg
	wSaTR4LPG9FV5t8bSNBeAl4u2ebf9R5HMGbh7gv2uU0Kl1D7CPy8z7w5lsJzkKWzJfI330
	ca8MsHFFWwY9k9c6r2XRotMBVqKGN0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-VJPJSpyKNgaRm4njorKCew-1; Tue, 23 Jun 2020 10:50:27 -0400
X-MC-Unique: VJPJSpyKNgaRm4njorKCew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60C5619057A4;
	Tue, 23 Jun 2020 14:50:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 404455C5D9;
	Tue, 23 Jun 2020 14:50:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AE4F1809547;
	Tue, 23 Jun 2020 14:50:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NEoI7a016320 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 10:50:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1C9CD20234BC; Tue, 23 Jun 2020 14:50:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17819201C0D4
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 14:50:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAAF318A6664
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 14:50:14 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
	[209.85.219.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-114-TLIyjXcbPY6ulaUITZ-ulA-1; Tue, 23 Jun 2020 10:50:11 -0400
X-MC-Unique: TLIyjXcbPY6ulaUITZ-ulA-1
Received: by mail-qv1-f54.google.com with SMTP id m9so3311360qvx.5
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 07:50:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rtbQ4CRsdkmx+r0M6N9q0d793iY+kOR7jmHw2wVGwfg=;
	b=FMgO3TZRVuqTdU6DQ2UV0mD8o71jQJEb0LlLVczRpfhdu8Xj82E8nfmMRdIwoi/FGB
	hMGygmb8cSO59xe0GNRnsclOwZhsQC+VQJzx2wkDL+BJ3IjDv+GPe79SjUO4WVO6yzGd
	Y8flM5vXsS107VBhyG1YQHujLXbvrVTGaeElCC+NAmMSMVNXfceu4u5BiE/XnsZ5j8gl
	bBkwSbrMex1hXNWDtwdD9ij/3sk4A0sRR/OKgX/vix17yZVhRIGeW9JVRJBcyV8FaSck
	vKsTjoui4jgO4FYNokzvjD7vTvwNlWzdger5GGFTD42c+2lpESZ18QA4TK3G05MzIpnY
	iL7w==
X-Gm-Message-State: AOAM5327DSkpdqgNbE/Wm9iB2bR2MwKMAbOi9B0LE1R5p2/XxTxpsOpp
	QNnTqwy7MbIpjR2Y7V6aIMIwxIlCMRHmh8g6YOfAYJQD
X-Google-Smtp-Source: ABdhPJz8JykNzjYwudg3RUbz2nZTR9zgHr7qWlhoTzUrTJzJu3al3zQ7ky6MQ7nF4+8KojT3x9HdTFp/hqzm6M/h/08=
X-Received: by 2002:a0c:bd91:: with SMTP id n17mr10325452qvg.226.1592923810451;
	Tue, 23 Jun 2020 07:50:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Tue, 23 Jun 2020 07:50:09
	-0700 (PDT)
In-Reply-To: <63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
Date: Tue, 23 Jun 2020 14:50:09 +0000
Message-ID: <CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

While a machine coming preloaded with Linux is nice and at least means
not having to fight Microsoft's latest attempts to dig their claws in
and make nuking the copy of Windows I didn't want and installing Linux
harder and means a better than average chance the hardware is fully
compatible with Linux and won't require proprietary drivers,
personally, the more important issue is whether a machine is
configured for optical and/or USB boot out of the box so I can just
install whichever distro I want and configure it from scratch without
the hassle of tracking down a monitor, a willing sighted assistent,
and walking them through the process of fixing the boot order(because
as hard as finding a sighted assistant is, finding one who actually
knows their way around a BIOS is even harder).

So anyone know if System76 or any other pro-linux PC makers ship
systems I can just pop an installation CD/DVD into and run an
installer on first boot? Or have all of them followed the mainstream
into the insanity of disabling all boottable devices that aren't the
primary harddrive or placing them so low in the boot order they'll
only boot if the system drive is borked?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

