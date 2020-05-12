Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 3D0B41CFE43
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 21:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589311699;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I9x9dQK0MT1bFx+06R64a6+sWZBP6h9M0Ffs7eBefM8=;
	b=GY1UIgsk7EMjNlSSfyuobViyEaMbAFIaXCVPvOsugyZkaUqirz/41cvbYB+41oE8LF07A6
	eBDtPLXMzAIh0k++91K/knpMpjWqDhrVKCJKW9KrIowEHuWrctqVoOvF1RCyOwpcfNT21v
	+lZq9a8sUVR+q8B1KDR362vBL9ecpak=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-e28neucyNSWcxOX_xJR2MA-1; Tue, 12 May 2020 15:28:17 -0400
X-MC-Unique: e28neucyNSWcxOX_xJR2MA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00CAB107ACF6;
	Tue, 12 May 2020 19:28:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 786C75D9DD;
	Tue, 12 May 2020 19:28:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 940884CAA0;
	Tue, 12 May 2020 19:28:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CJS02Z013542 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 15:28:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8BA3E115E1A; Tue, 12 May 2020 19:28:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 867D8110E85
	for <blinux-list@redhat.com>; Tue, 12 May 2020 19:27:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B34685A5B0
	for <blinux-list@redhat.com>; Tue, 12 May 2020 19:27:58 +0000 (UTC)
Received: from gmmr1.centrum.cz (gmmr1.centrum.cz [46.255.225.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-10-s1kO8sHNM8-amQZQaSu2KA-1; Tue, 12 May 2020 15:27:53 -0400
X-MC-Unique: s1kO8sHNM8-amQZQaSu2KA-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.18])
	by gmmr1.centrum.cz (Postfix) with ESMTP id F27808043A33
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:27:51 +0200 (CEST)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id EC8EA561F
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:27:51 +0200 (CEST)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(2a00:da80:1:502::7):SC:0(2.8/5.0):CC:0:;
	processed in 0.5 s); 12 May 2020 19:27:51 +0000
X-VF-Scanner-ID: 20200512192751.448558.22120.out2.virusfree.cz.0
Received: from gmmr-2.centrum.cz (2a00:da80:1:502::7)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	12 May 2020 21:27:51 +0200
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.31])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id 567B520055F53
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:27:51 +0200 (CEST)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id 3F91684000C5
	for <blinux-list@redhat.com>; Tue, 12 May 2020 21:27:51 +0200 (CEST)
To: <blinux-list@redhat.com>
References: <DA67195033164EDE9AB2A7C2ED91E99C@DESKTOPN6LG1HQ><alpine.NEB.2.21.2005121409260.2382@panix1.panix.com>
	<BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
In-Reply-To: <BD4BD103221A42D49AA3F208399FA7E2@DESKTOPN6LG1HQ>
Subject: RE: please help Me to build Shortwave radio player
Date: Tue, 12 May 2020 21:27:50 +0200
Message-ID: <1349745D5A404694A8325D748EA8DFAE@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdYoiL8Nky6gsAYrSgiWgFq0XI9sFgAAX63QAAJKGWA=
X-MimeOLE: Produced By Microsoft MimeOLE
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

[0/1] Generating cargo-build with a custom command

 ** RUST VERSION **

 rustc 1.43.1

 ** RELEASE MODE **

     Updating git repository
`https://gitlab.gnome.org/haecker-felix/libhandy-rs.
 git`

 error: failed to get `libhandy` as a dependency of package `shortwave
v0.0.0 (/h
 ome/janusz/Shortwave)`

 

 Caused by:

   failed to load source for dependency `libhandy`

 

 Caused by:

   Unable to update
https://gitlab.gnome.org/haecker-felix/libhandy-rs.git?branch
 =update_cargo_version

 

 Caused by:

   the given reference name 'refs/heads/.l2s.LICENSE.lock0001' is not valid;
clas
 s=Reference (4)

 FAILED: src/shortwave

 /home/janusz/Shortwave/build-aux/cargo.sh /home/janusz/Shortwave/build
/home/jan
 usz/Shortwave src/shortwave /usr/local/share/locale default

 ninja: build stopped

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

