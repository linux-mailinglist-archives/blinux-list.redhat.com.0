Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7B65721DA50
	for <lists+blinux-list@lfdr.de>; Mon, 13 Jul 2020 17:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594654905;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FQ267zEV4qijb2EXlKkXlYMKbvQkWuLKcv+PwJtUj+4=;
	b=M+jr2BpCCcq+EyS5ZLeGxnuGxTVSNrRztfsb/TbfG5KnAM2Ouhzv8oAcBQ+YAW1WlPf2Tu
	oDGZyj3dzJ5rIwDEpN19PtP6XyVg/o7HLsFb/kYnqikPzNFm8qL8tS++EfVlmC0Yn7l4dV
	A26ETm34Z3RI7rHM4fOANnhkSrrZJyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-vQZyaic9Npmhlli5_Qt7ww-1; Mon, 13 Jul 2020 11:41:40 -0400
X-MC-Unique: vQZyaic9Npmhlli5_Qt7ww-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2268100CCC1;
	Mon, 13 Jul 2020 15:41:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D31B679226;
	Mon, 13 Jul 2020 15:41:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23BD01809554;
	Mon, 13 Jul 2020 15:41:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06DFfMxU019438 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 13 Jul 2020 11:41:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BA9091009A28; Mon, 13 Jul 2020 15:41:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C84710EE6C8
	for <blinux-list@redhat.com>; Mon, 13 Jul 2020 15:41:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87DA38007CB
	for <blinux-list@redhat.com>; Mon, 13 Jul 2020 15:41:22 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-147-45fYByKJM56ERg1yqGuFYQ-1; Mon, 13 Jul 2020 11:41:17 -0400
X-MC-Unique: 45fYByKJM56ERg1yqGuFYQ-1
Received: by mail-wr1-f51.google.com with SMTP id r12so17007449wrj.13
	for <blinux-list@redhat.com>; Mon, 13 Jul 2020 08:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ewIggZKuamwnx5/wWN0fkeM9ZKsUKvt1D5SbZzoeP9Q=;
	b=ebpMnz4zn2kdtzM4TOfr5C6WGJ3Ix9TObcIYy6p8qA3FlI50cOw2BP0NeeKStqkVi5
	fYk/IkTb5squ2tj83AlngAo+zHFYvQ6ZdMXURY1I4zcANsp0y+/6GpEwO5lhowPlrYVc
	uo9PmBzEUrCLWvifQraKcWNLXRYYnMcFnR9iG1NbAQildgBUove9vNCHAssg2nBy+FUB
	e8PEQDgfiiR4Nb7NpHu5I/2AigDy9n/fy9pmEEyDlghErU9K+B42xlm96E/HoAz4HrgE
	R6/O/KWyh+4usk/m7to6bMNboUSmEWAoi3vOqR1hAHh4bb2WEwOJSl/60CLhhSffNkA1
	wXlg==
X-Gm-Message-State: AOAM531MYW/NA+MOyCqv4EKPD0ZtfnP+MZ9KPgh3jjVVITL1kFilmOTo
	epEYJHkhOGrmGGAcZyXp+u/lIvfZrb5FM9jKtlrA8KsB
X-Google-Smtp-Source: ABdhPJwl7xLyrd6Keha3aEEaHB0oKnTzVWJ5ABg7OdeXHrmZGChLecM3h+4DTvLn2pFX18y/pOy2mIc0aqUScvYfr2c=
X-Received: by 2002:a5d:6452:: with SMTP id d18mr79307784wrw.284.1594654876542;
	Mon, 13 Jul 2020 08:41:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4688:0:0:0:0:0 with HTTP; Mon, 13 Jul 2020 08:41:15
	-0700 (PDT)
Date: Mon, 13 Jul 2020 11:41:15 -0400
Message-ID: <CADj8Jxd8SF0zUjhSz5Wv9DMyRsA76YZZkh1JVZtZoR7sbY5TsQ@mail.gmail.com>
Subject: wanting to run xfce4
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello fore anyone who uses xfce4 how good is it with orca? I'm
thinking about trying it on on one of my boxes. What are the
differences between it and mate?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

