Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4282F203E3D
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 19:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592847965;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=318Wr/8Z3Iqk0q8sHF4GT8WLhGiFnS1c7uYn04jy/5o=;
	b=H6V/4AkPQKf4/u4K5y9brPZPbAC2tNDbpLBPzsgXO9GEoc9hgpstq0bS5guqVlLisly0zo
	lljzPAwVcAYyUk76Byn7vv9TblCi/HmDG7nOV9Kb6l1aVJng6EgO/b/lllal3N5ehHqcmg
	Cy6Z9dKuRGZWwl4k9DePzQa6CIzUXHQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-UQm3J4OtPQiII1NsV7Cnig-1; Mon, 22 Jun 2020 13:46:02 -0400
X-MC-Unique: UQm3J4OtPQiII1NsV7Cnig-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50312184D142;
	Mon, 22 Jun 2020 17:45:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E88AB10013D2;
	Mon, 22 Jun 2020 17:45:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A8386833CB;
	Mon, 22 Jun 2020 17:45:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MHjYK3003254 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 13:45:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27DF72016F2C; Mon, 22 Jun 2020 17:45:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 213F82028CD2
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 17:45:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BDCE858EFE
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 17:45:31 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-181-xy-r-grqNVGs0Ipr9uoYBA-1; Mon, 22 Jun 2020 13:45:27 -0400
X-MC-Unique: xy-r-grqNVGs0Ipr9uoYBA-1
Received: by mail-ot1-f49.google.com with SMTP id e5so13727678ote.11
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 10:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=WMggpK0VWnc2af/1w5hlY2kqYQ4yALuJ74hCxlbz59s=;
	b=ePzcHTQ7B6/6YxJh/fYpZU/JV1kFqZBJ/cf6FWYootb78l4sHtcWqmR4x9usXLoxX4
	aotkHRyI/QEObDwfQG9/OwU9N2UeUTfC56Mjilbxj7Rvf39i/2fB3WkEUXhzU7G1KOIo
	KekCEVAx2QHVblxQ3MSpLmztffiiGtHdKyFoEjtgAUP13VCuMI4aEA/uiT/vjtov8WL9
	3cfxoojazOxhTV6gM+kUPJFxdPxGHeeClia33iu6TcYUCNZk1JpRd0q6aJFyQ69UuEak
	KGn+IXVFg7GZJmyTpbpsFQpaiKRyWUYMXLAMoCSm/7JOLrHNuuwTZrkRduglnRAo+8eY
	ON6w==
X-Gm-Message-State: AOAM531l1I/6fks4O6XxPNHvWsq1zFejQ0y02SkBUg5ajwbRrMylzcDk
	GurlH/S7gmWSLmn7sOzLpoXfvJXK2eE=
X-Google-Smtp-Source: ABdhPJwCY0rwjNCYJYTIbyUQMn8ehU+/yHVFJDLPy92ZPy6RWvAkv9fMnnyIURTB0c850pYj0IOrlw==
X-Received: by 2002:a05:6830:1587:: with SMTP id
	i7mr16090929otr.155.1592847926808; 
	Mon, 22 Jun 2020 10:45:26 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:146e:afd2:98ee:6d9b?
	([2601:3c2:8200:9360:146e:afd2:98ee:6d9b])
	by smtp.gmail.com with ESMTPSA id z6sm3453118oth.26.2020.06.22.10.45.25
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Jun 2020 10:45:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Mon, 22 Jun 2020 12:45:25 -0500
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
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<2A1D7016-E760-46B1-BB5E-3A7C56B8BC88@gmail.com>
	<CAO2sX308N-y=iFGV53feLkM3_4BqEcTDdjSOXoSL+BLKh8KneA@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAO2sX308N-y=iFGV53feLkM3_4BqEcTDdjSOXoSL+BLKh8KneA@mail.gmail.com>
Message-Id: <5DBEF5E4-43CB-4CD9-9B33-EBA335C5AEA1@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05MHjYK3003254
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

I thought of trying OpenSuse, leap.
But after burning that to a dvd and using super alt s, I heard nothing.
Did that distribution come with orca? 

> On Jun 22, 2020, at 10:00 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> SBL is a console screen reader, and one of the reasons it's my
> favorite is that screen review is as simple as holding down caps lock
> and using the arrow keys(left/right for character-by-character,
> up/down for line-by-line).
> 
> It's the default text-mode screen reader used by Knoppix when run in
> it's accessibility-focused Adriane mode and is also available as an
> RPM package in OpenSuSe, but to my knowledge, those are the only
> distros it's avaialable for.
> 
> No clue where it lies on the kernel versus userspace spectrum(espeakup
> depends on the speakup kernel module while part of the original
> impetus for Fenrir was to create a fully userspace screen reader that
> would work on systems that exclude speakup from their kernels(and
> while I don't understand Kernel development much, I understand speakup
> has been stuck in something called staging for years and that only the
> more inclusive builds of Linux import anything from staging).
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

