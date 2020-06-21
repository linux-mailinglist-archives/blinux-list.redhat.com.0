Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id EF087202B7C
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 17:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592754948;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fC0k1b8y1zrZ/yRB0VklA+VbdYVKQDbN7K48N+Ipr7E=;
	b=HtvzOv3NQOfzfSvo5LzNOdXYdrH6SquztqxhJk62+FwWfO7eqZM64eL5/9WBK+W9CmtnT3
	BDt1lIlyF6eohieBFoHoi7JQIdgeH33Azc11HlILoge6lE5zO71F9Sf9lWjNOmaLzF/aWx
	HhJuy3Fg9QJqXJkuXh2T4YUvrcpY7Gc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-xcqH8VHOOiajNobYvRVkrQ-1; Sun, 21 Jun 2020 11:55:45 -0400
X-MC-Unique: xcqH8VHOOiajNobYvRVkrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01A51107ACCA;
	Sun, 21 Jun 2020 15:55:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A13C5D9D5;
	Sun, 21 Jun 2020 15:55:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CE2A1809542;
	Sun, 21 Jun 2020 15:55:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LFtUr6015306 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 11:55:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF41B33250; Sun, 21 Jun 2020 15:55:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AAD7133253
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 15:55:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAD7582A6C3
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 15:55:28 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-459-3hjegZcPOGWuUVwNrQr3Tw-1; Sun, 21 Jun 2020 11:55:26 -0400
X-MC-Unique: 3hjegZcPOGWuUVwNrQr3Tw-1
Received: by mail-qt1-f170.google.com with SMTP id j10so2316966qtq.11
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 08:55:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rl7VAQOZtnPi1MsD/yF0+rIKOZBexybCE7JfgWmJcfY=;
	b=ZxHrLMuTlSnSx+Rwa5vdpgcM3fpmPVldkbROj76Z677gYyByKc9dXazzcQHt3/2LsH
	owjIdxhH0UWex2gpf6kxBdr1elyLqqluLJ7KWDBS1xWI9uQgBSflaBsNYAkQduhqzr3A
	LL0sHZ7Di/gzXX2KrKrHcdH4wfMW4yPdSBnEW1xAs4qoX9UkZBSySvxxHwQLCcpF5bHy
	ANT2ba0ovNQKZtHGHMMIwNZDTMtjd7e4KNDdr/SLnbYfx2SGCYx7UmJpa8V/vQzJ9H+a
	MlO3hQwsFEx07CNAO4WUjUZpFZM8lAM70fyN4nxRY6UIfNoTAAMJYHkMvp11N5r2bnWZ
	LIaw==
X-Gm-Message-State: AOAM531I/EiThiGnFnO3twvxc6ppZ/Bv7HkrNgT4SoluBsytU+nUUzfI
	ilH1vYYzcfGzCPSb7Q1Ts4IdWPD7BJRmJeZJ2RUjWeG7
X-Google-Smtp-Source: ABdhPJyfBoDA6j6HwBYzOj3NnS+DU7D2XaTHNf+TKNWacHbR6rEIx5hMyqZHHrRcfMr0vTPKCNvAzsEmMRf+IIzD6BY=
X-Received: by 2002:ac8:1a0f:: with SMTP id v15mr2045504qtj.136.1592754925351; 
	Sun, 21 Jun 2020 08:55:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Sun, 21 Jun 2020 08:55:24
	-0700 (PDT)
In-Reply-To: <9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
Date: Sun, 21 Jun 2020 15:55:24 +0000
Message-ID: <CAO2sX30NoqTTbmvf6b-r1ezo3QY-oxKtjzYTQw0tXp3BmOoK6g@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

While I agree price is an issue(even at it's minimal specs, the
Meerkat is about 5.5 times the price of a 4GB Pi 4 with case and all
the needed accessories to power the Pi from a wall socket, and all you
really get for that extra money is a SSD for holding the OS, a second
4GB of Ram and the greater flexibility of running an x86 distro), but
I don't really get the size argument. The 10cm cube engraved with a
1cm grid I keep around for making rough measurements won't fit in my
pocket, but a plastic container I have that, comparing it to the cube
is at least 4.5 inches wide, 5 inches long, and two inches thick fits
no problem and the Meerkat is only 4.5*4.5*1.5 inches if I remember
correctly. Hell, I'm pretty sure the Meerkat is smaller than a
Nintendo DS classic and Playstation Vita combined, and if I were to
pull those out of my box of old hardware, I have no doubt both could
fit in the same pocket.

Now, admittedly, maybe I'm just lucky to have decently sized pockets
and normal pockets really are as tiny as implied, but I don't hold my
Pi 3 in my hand and think"I wish this thing was smaller), and while
the only Smartphone I own is a dinosaur from the Android 2.x days,
whenever I think about trying to repurpose the old thing, if anything,
I wish it was big enough that the keys and key spacing on it's
built-in keyboard where on par with a TI-83 graphing calculator and
that it had a full-sized SD slot and everytime I hold someone else
smartphone, I tend to think along the lines of "would it kill them to
add enough bulk to fit a higher capacity battery, physical keyboard,
full-sized SD slot or any of the other things that have been
sacrificed in the name of miniaturization as a terminal goal?

That said, it'd be great if planned obsolescence didn't render phones
borderline unusable by the time the average person has paid one off
and if Android wasn't stuck in proprietary driver hell that prevents
all but the most popular models from ever getting aftermarket support.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

