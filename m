Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id A5FEB1CFF4A
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 22:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589315600;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AmCDlvkitZIcfy+Yda4K93IxMHUTeWqPEyJPtn2pX4s=;
	b=eQLU443zXmp4QS0NTkCI4Bx+Q8qJcYFREvhwzd6KCf0vOIK6U3Gr7Ipz7Ut8VtjpcTCdPR
	SvbHN5U6UVXYc/6wfh3+CKINryra7ks1p/uRsJSrwrtU5XEpO+yAdoHW44Gdz6179XoTiG
	TERK386igpJXCQZjPKBmAdQld3Mu9N4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-DynQvfmsOM6cDobwsYmfRA-1; Tue, 12 May 2020 16:33:18 -0400
X-MC-Unique: DynQvfmsOM6cDobwsYmfRA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 80183872FEC;
	Tue, 12 May 2020 20:33:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FB0E62A9C;
	Tue, 12 May 2020 20:33:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 198284CAA7;
	Tue, 12 May 2020 20:33:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CKX2rN018016 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 16:33:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3B2C82156A3C; Tue, 12 May 2020 20:33:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 373602166B27
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:33:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28EE2833B44
	for <blinux-list@redhat.com>; Tue, 12 May 2020 20:33:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-413-972ltJjaPAWbcig4qiYuPQ-1; Tue, 12 May 2020 16:32:57 -0400
X-MC-Unique: 972ltJjaPAWbcig4qiYuPQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M8d50K8Pzbf5
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:32:57 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M8d46Tj1zcbc; Tue, 12 May 2020 16:32:56 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M8d45rDyzcbV
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:32:56 -0400 (EDT)
Date: Tue, 12 May 2020 16:32:56 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: please help Me to build Shortwave radio player
In-Reply-To: <1349745D5A404694A8325D748EA8DFAE@DESKTOPN6LG1HQ>
Message-ID: <alpine.NEB.2.21.2005121632200.23890@panix1.panix.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
	<BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
	<1349745D5A404694A8325D748EA8DFAE@DESKTOPN6LG1HQ>
MIME-Version: 1.0
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did you cd into the libhandy.rs directory and run git pull?

On Tue, 12 May 2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 15:27:50
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: RE: please help Me to build Shortwave radio player
>
> [0/1] Generating cargo-build with a custom command
>
>  ** RUST VERSION **
>
>  rustc 1.43.1
>
>  ** RELEASE MODE **
>
>      Updating git repository
> `https://gitlab.gnome.org/haecker-felix/libhandy-rs.
>  git`
>
>  error: failed to get `libhandy` as a dependency of package `shortwave
> v0.0.0 (/h
>  ome/janusz/Shortwave)`
>
>
>
>  Caused by:
>
>    failed to load source for dependency `libhandy`
>
>
>
>  Caused by:
>
>    Unable to update
> https://gitlab.gnome.org/haecker-felix/libhandy-rs.git?branch
>  =update_cargo_version
>
>
>
>  Caused by:
>
>    the given reference name 'refs/heads/.l2s.LICENSE.lock0001' is not valid;
> clas
>  s=Reference (4)
>
>  FAILED: src/shortwave
>
>  /home/janusz/Shortwave/build-aux/cargo.sh /home/janusz/Shortwave/build
> /home/jan
>  usz/Shortwave src/shortwave /usr/local/share/locale default
>
>  ninja: build stopped
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

