Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E2F9C6EA
	for <lists+blinux-list@lfdr.de>; Mon, 26 Aug 2019 02:57:38 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 185F67F741;
	Mon, 26 Aug 2019 00:57:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C51E11001948;
	Mon, 26 Aug 2019 00:57:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E8F011800B74;
	Mon, 26 Aug 2019 00:57:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7Q0vNYG014781 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 20:57:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D90AD600C8; Mon, 26 Aug 2019 00:57:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx25.extmail.prod.ext.phx2.redhat.com
	[10.5.110.66])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D46A9600C4
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:57:21 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A4FC510F23E6
	for <blinux-list@redhat.com>; Mon, 26 Aug 2019 00:57:20 +0000 (UTC)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 667E48C033E; Mon, 26 Aug 2019 00:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 65F488C012D
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 20:57:20 -0400 (EDT)
Date: Sun, 25 Aug 2019 20:57:20 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: latest lynx  ANN: lynx2.9.0dev.3
In-Reply-To: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.1908252054480.12148@server2.shellworld.net>
References: <20190826004808.lapid7qsq5dili2u@prl-debianold-64.jexium-island.net>
MIME-Version: 1.0
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Mon, 26 Aug 2019 00:57:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]);
	Mon, 26 Aug 2019 00:57:20 +0000 (UTC) for IP:'66.172.12.120'
	DOMAIN:'server2.shellworld.net' HELO:'server2.shellworld.net'
	FROM:'klewellen@shellworld.net' RCPT:''
X-RedHat-Spam-Score: 0.001 (SPF_HELO_NONE) 66.172.12.120
	server2.shellworld.net 66.172.12.120 server2.shellworld.net
	<klewellen@shellworld.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.66
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]); Mon, 26 Aug 2019 00:57:36 +0000 (UTC)

Since some here feel  lynx is somehow an old browser...html5 anyone?
Here is information on today's update.



On Mon, 26 Aug 2019, Thomas Dickey wrote:
> The current version of lynx is 2.8.9
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	ftp://ftp.invisible-island.net/lynx/
> 2.9.0 Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.3.patch.gz
> 	ftp://ftp.invisible-island.net/lynx/patches/lynx2.9.0dev.3.patch.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.3.tar.bz2
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.3.tar.bz2.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.3.tar.gz
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.3.tar.gz.asc
> 	ftp://ftp.invisible-island.net/lynx/tarballs/lynx2.9.0dev.3.zip
>
> 2019-08-25 (2.9.0dev.3)
> * modify gophermap menu-parsing to handle "h" HTML selectors similarly to the
>  command-line parsing, which avoids hex-encoding the parameter delimiters
>  "?", "=", ";" as well as "#" (report by Tobias Girstmair) -TD
> * make redirection-limit configurable, defaulting to 10 -TD
> * remove alert when relative base href is seen, since HTML5 allows for this
>  (report by Sylvain Bertrand) -TD
> * modify lynx.iss to use statically-linked bzip2 and gzip programs, and to
>  eliminate a spurious warning when attempting to remove an optional DLL -TD
> * fix a few coverity warnings -TD
> * revise HTSimplify to eliminate a redundant "." segment at the beginning of a
>  path, referring to RFC 3986 5.2.4 (report by Alejandro Lieber) -TD
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
