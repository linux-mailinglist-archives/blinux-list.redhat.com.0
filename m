Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5844AF1D8
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 13:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644410262;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GJoTar5L0wgu63bJ6o3h+AKdpHW6AfVUfge6oIizS6U=;
	b=UWUHbONRcg+kf5QOBSZr6Nrf1j1TW2lkZjweQgnT4rah3Gj/3OVRZ1nEGySWZI4KGiNTtv
	ZGtxbr3WGtCNZZnCQ2LzAB/gQyIPSPVYdiovTZT7hFg3MyW8m40RmlYEjah+Z30E/SUIIf
	g7gQdwi0FwqZ+AyN+h5mZqbhL6F3hS4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-yaGY-YKHPd2ygHFdppuJZQ-1; Wed, 09 Feb 2022 07:37:38 -0500
X-MC-Unique: yaGY-YKHPd2ygHFdppuJZQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A554190A7C8;
	Wed,  9 Feb 2022 12:37:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D433F6F950;
	Wed,  9 Feb 2022 12:37:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6F57F4BB7C;
	Wed,  9 Feb 2022 12:37:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219CbQtq015750 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 07:37:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 40A86492D1C; Wed,  9 Feb 2022 12:37:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CBB2492D18
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:37:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26057185A7B2
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:37:26 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-240-2b2S1kI2PpqIibxh4YK5lQ-1; Wed, 09 Feb 2022 07:37:24 -0500
X-MC-Unique: 2b2S1kI2PpqIibxh4YK5lQ-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx105
	[212.227.17.174]) with ESMTPSA (Nemesis) id 1MYNNy-1nm2pU3HcI-00VS0W
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 13:37:23 +0100
Message-ID: <20220209.123818.520.13@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: regex help
Date: Wed, 09 Feb 2022 06:38:18 -0600
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:5lEpKJepOlMqWIWngYwBoTV9RvnbYdiAblvoXX3MWuQ/p0cFrAO
	NTyrss+fHo4l+xn4+D27ixfTtnhuKpXUyhwHmrMeF4Y99xoNtQe4NsIlougIqQoOeY6O9AY
	ZBfK83NcTWUMK7xHR+Jn7zkyhyFrZaMq0mYtMH90hizAjXMrnqHAZOvoaI5DxwePhR17rzd
	i3qtLFVRfFBUHT80X0l9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bfPg7wwhbZE=:LLMcILUSUwWFvD02inHPpC
	wZhjgWzBnavlk8d9b5Fn1Boo9GSiKVf/GHAiVcg5W3V/snPE/DzmcaiASDbQ4n9FqTbGrskRU
	uG6Z4IUPFd6a31jfD66G0inp7WsbcAhl+lRzx2Ts8GpfUiqeiYS87GvNCKU0h1tthff743rYQ
	IyVBpPX6PHO+aVPL+AI2rSQoKYPzvZRZmB2Gd0xQK6ckPUy0xCCH3YMvRRW1L/x6jphRP3p6z
	3UVqSmvX+Mn5m6ejVMbtncBBj6IQGJsQpYwT7cXRY5cjs6vqtJbsBcIIIaDoT6fVghs+cihJw
	1m0qUSSvgMse9i9eQgliCKg9KUznKyfiNqBb3qzuI28qm74ZKT/TvS2PA17XOYpQc2YZZnmUn
	n7gd4RcALBiSs1enOnouZmRTbW/hNTdWuXJDH1dv+2QJF0iOf8zsAOdi0yvnO7Mige9gncq52
	5SXKdSTmhHMLX3kOz8xw8BQKwKiEkgkpQ54RbZqijICEDckXhC09D/imvbwjdaHfbIX1cDDYj
	LpGcIKctW1WJUCaBCDTjGSYUleHvQ/isvlLNfWk1Emd0sJjxfiwWy08+6v/YnDYbVZCTt6+XF
	NqeNOwEkB+UNE6qSdgn+sAPW3mupxUANNpeHBztvSajP+lHr0PZyvHm3ZawOUTag95xDbXrkQ
	fSmSjty5J0ej8W8zaPWowC55ILhjbYbcf1hddD6iBYKcVZP5wc0y0KVn4yJhF8EMM5f2PG45p
	KnB7rFXIyWFq8F98ni+J+PfX54qGZi4aw2Cb865o+K+DLTa6Oq1Q83l3lKfNZHHNbgDgGj5cN
	cyUhUqwY+D5DnI/YPlvg7ukQsoohL0KNYG4ukVzPRkQ1zQC9jQEROKr81PEcK2GpxihVSg9kX
	lnxHEe8zAYWA+utFtlhFFSpdxDxL66bs7pMT8khJ60pKdinBpQLouvYyfZ+zNODVNanfd2x2O
	Hd2ZEnfUvPFVmGIUzy/xwwX9fraDz9T8jZfY9djWgfRKqG1+8FNUzsEYGTZ72RKL74I/m1bp8
	ZFCmHKlCBhmP3LYgRV72c0vU+SVPZhqMK1DvZy1/CCZcbizvdrhJZE3nKM3wA3+2Mne03DroO
	g7u5gxHRyvTwEc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219CbQtq015750
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I want to create a regex that will look for single letters followed by a dot. This is for porpoises of file renaming. For example.
J. S. Smith - Become an Evil Dictator- A Step by Step Guide.txt
Arthur A. C. Johnson - How to Win Minions and Overthrow Governments.txt

The regex should look for and remove the dots. So the file names end up being:
J S Smith - Become an Evil Dictator- A Step by Step Guide.txt
Arthur A C Johnson - How to Win Minions and Overthrow Governments.txt

Is it possible to craft a regex to just find all single letters, followed by a dot? What file renamer is the best one to use for this? The one I currently use is brename
https://github.com/shenwei356/brename
but if there is a better tool, would love to know it.
Thanks.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

