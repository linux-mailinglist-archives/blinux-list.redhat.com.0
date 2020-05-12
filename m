Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id ECFA81CFF6F
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 22:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589315800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SNqoF4bMYhwXCFmE0TpE6360QrXzEOX9dThIWEQFVAk=;
	b=R96h5+6tLR4fJpPet2bvQrruKUhVwZF8KjhHvnUjLxW/vpQ9aOP37oOIIbPZPQKtdodYN1
	LGE4mdYpp6unufY0mZ8rDqmY7wahpO+t+Fe4AW2gJ8S64lkm/CXWYG2qUIsS8Y3m9SECBz
	/JLayB+F/c71zwWXm9UOtSmAnNvGip8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-WtKz_Oy7PPOpRbzMp1gOgw-1; Tue, 12 May 2020 16:36:36 -0400
X-MC-Unique: WtKz_Oy7PPOpRbzMp1gOgw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07E2E107ACCA;
	Tue, 12 May 2020 20:36:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E38D15C1BB;
	Tue, 12 May 2020 20:36:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3EE754CAA0;
	Tue, 12 May 2020 20:36:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CKaTS8018513 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 16:36:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 876EF2029F6F; Tue, 12 May 2020 20:36:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83B892028DCC
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:36:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AE23800A13
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:36:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-97-p3igTdb8Ox-M8EeaQEnUgw-1; Tue, 12 May 2020 16:36:22 -0400
X-MC-Unique: p3igTdb8Ox-M8EeaQEnUgw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M8j24RQ1zbqy
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:36:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M8j23THYzcbc; Tue, 12 May 2020 16:36:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M8j22xmQzcbW
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:36:22 -0400 (EDT)
Date: Tue, 12 May 2020 16:36:22 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: please help Me to build Shortwave radio player
In-Reply-To: <alpine.NEB.2.21.2005121632200.23890@panix1.panix.com>
Message-ID: <alpine.NEB.2.21.2005121634420.23890@panix1.panix.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
	<BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
	<1349745D5A404694A8325D748EA8DFAE@DESKTOPN6LG1HQ>
	<alpine.NEB.2.21.2005121632200.23890@panix1.panix.com>
MIME-Version: 1.0
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

Understand you wouldn't need to do this if the build script had been
built correctly.  It wasn't, so this would be a last ditch effort and
certainly deserves a message in the repository of the main package.

On Tue, 12 May 2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 16:32:56
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: RE: please help Me to build Shortwave radio player
>
> Did you cd into the libhandy.rs directory and run git pull?
>
> On Tue, 12 May 2020, Linux for blind general discussion wrote:
>
> > Date: Tue, 12 May 2020 15:27:50
> > From: Linux for blind general discussion <blinux-list@redhat.com>
> > To: blinux-list@redhat.com
> > Subject: RE: please help Me to build Shortwave radio player
> >
> > [0/1] Generating cargo-build with a custom command
> >
> >  ** RUST VERSION **
> >
> >  rustc 1.43.1
> >
> >  ** RELEASE MODE **
> >
> >      Updating git repository
> > `https://gitlab.gnome.org/haecker-felix/libhandy-rs.
> >  git`
> >
> >  error: failed to get `libhandy` as a dependency of package `shortwave
> > v0.0.0 (/h
> >  ome/janusz/Shortwave)`
> >
> >
> >
> >  Caused by:
> >
> >    failed to load source for dependency `libhandy`
> >
> >
> >
> >  Caused by:
> >
> >    Unable to update
> > https://gitlab.gnome.org/haecker-felix/libhandy-rs.git?branch
> >  =update_cargo_version
> >
> >
> >
> >  Caused by:
> >
> >    the given reference name 'refs/heads/.l2s.LICENSE.lock0001' is not valid;
> > clas
> >  s=Reference (4)
> >
> >  FAILED: src/shortwave
> >
> >  /home/janusz/Shortwave/build-aux/cargo.sh /home/janusz/Shortwave/build
> > /home/jan
> >  usz/Shortwave src/shortwave /usr/local/share/locale default
> >
> >  ninja: build stopped
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
> >
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

