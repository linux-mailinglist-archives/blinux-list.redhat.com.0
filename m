Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 4024B172EC2
	for <lists+blinux-list@lfdr.de>; Fri, 28 Feb 2020 03:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582856339;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bZSXHYhFDlasM0jNk737VM6kiQ/mnLcjwX7BFHM+nd8=;
	b=OoY/RYlVwmlcxDPGdIiXuxj/5+ZCoQO9lAh0T92bRLXusmO5AbSetBcLeVtnpLrJmf7cnW
	GO9EVPr7zD4IF8y0f0oLL9cGmOD+wwQmdTDZaZVB5wgmqwBABcVTyNYEsp3pGAd0izQFgZ
	CeMBxa/PLWZEmkXM35ZsJLB/SlF73Lc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-72zAkXwNPY6zW6o1pmm-Xg-1; Thu, 27 Feb 2020 21:18:56 -0500
X-MC-Unique: 72zAkXwNPY6zW6o1pmm-Xg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03A04800D53;
	Fri, 28 Feb 2020 02:18:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C73992992;
	Fri, 28 Feb 2020 02:18:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6778F84489;
	Fri, 28 Feb 2020 02:18:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01S2IVmG017031 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Feb 2020 21:18:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 069D92026D69; Fri, 28 Feb 2020 02:18:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0166920316F0
	for <blinux-list@redhat.com>; Fri, 28 Feb 2020 02:18:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D45128007C9
	for <blinux-list@redhat.com>; Fri, 28 Feb 2020 02:18:28 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-348-9dcvydQyM4e7-3s3cB7sBw-1; Thu, 27 Feb 2020 21:18:26 -0500
X-MC-Unique: 9dcvydQyM4e7-3s3cB7sBw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id A2DF58C0595; Fri, 28 Feb 2020 02:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 98B638C0261
	for <blinux-list@redhat.com>; Thu, 27 Feb 2020 21:18:24 -0500 (EST)
Date: Thu, 27 Feb 2020 21:18:24 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: [Lynx-dev] ANN: lynx2.9.0dev.5
In-Reply-To: <20200228015917.v5sg2jym3x3uzbm3@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.2002272117090.6058@server2.shellworld.net>
References: <20200228015917.v5sg2jym3x3uzbm3@prl-debianold-64.jexium-island.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01S2IVmG017031
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Sharing this update for those who may find it useful.
Karen




> The current version of lynx is 2.8.9
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	ftp://ftp.invisible-island.net/lynx/
> 2.9.0 Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.5.patch.gz
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.5.patch.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.bz2
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.bz2.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.gz
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.tar.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.5.zip
>
> 2020-02-27 (2.9.0dev.5)
> * fix gcc9 warning about sprintf in HTFTP.c -TD
> * workaround for MacOS clang wrapper c99 "-W" option, in configure script -TD
> * use curses_exit() from ncurses 6.2 for leak-checking -TD
> * amend workaround in 2.8.6dev.19 for "-notitle" option, fixing an off-by-one
>  display (report by Keith Bowes) -TD
> * add/adapt changes from Keith Bowes' github:
>  * updated eo.po
>  * add "-update_term_title" option
> * add "-list_decoded" option to toggle feature of "-dump" option which decodes
>  URL-encoded links in the list of "References", from change made in
>  2.8.8dev.17, for Debian #398274 (prompted by patch by Hiltjo Posthuma) -TD
> * modify HTAddXpand() to provide for the case when the command is a full
>  pathname with embedded blanks, etc., versus an expansion of an environment
>  variable containing parameters (report by Edward McGuire) -TD
> * fix typos found with codespell -TD
> * improved several configure macros, including a fix for clang
>  compiler-warnings, and library order when linking -TD
> * remove a ruler in the user's guide that was added in 2.8.3dev.10 as a
>  conversion aid (report by Edward McGuire) -TD
> * modify HTML DTD to allow <div> in <a> -KH
> * add -socks5-proxy option (Steffen Nurpmeso)
> * if --without-lss-file is used, the configured lss filename is empty and
>  should be ignored (report by Cory Krell) -TD
> * extend table/limit in parsdate.y to 2200 (report by Ian Collier) -TD
> * update eo.po, fr.po, nl.po from
>    http://translationproject.org/latest/lynx
> * update config.guess (2019-12-21), config.sub (2019-09-11)
>
> -- 
> Thomas E. Dickey <dickey@invisible-island.net>
> https://invisible-island.net
> ftp://ftp.invisible-island.net
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

