Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id F2B331C80B1
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 06:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588824120;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ErnFThDMdMDH4/OjcPmg5PYZ/xBTPr+Dfnb9fnkAsOE=;
	b=PEMiJoUf52ECFMghh6z7i9VpeKdfsm40fGy3z0eFzjrbrN8SPAiA3JNWPYq/o9e+QzCgob
	CbjTzPupkhoDwdf+x11V7IHSa98ZbuG+Jt8iQ5L49XTfYH/52XkGpALXiKk42U2U6nnc2J
	UafmmWAEcM+PRPZFDiaUfSjGRTbPjTs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363--ldwikNTMeWvDiQqmAPWfg-1; Thu, 07 May 2020 00:01:58 -0400
X-MC-Unique: -ldwikNTMeWvDiQqmAPWfg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 300911009442;
	Thu,  7 May 2020 04:01:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDD90649A9;
	Thu,  7 May 2020 04:01:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 740E01809542;
	Thu,  7 May 2020 04:01:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04741cxK005994 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 00:01:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 446E3F7FA2; Thu,  7 May 2020 04:01:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40BEBF4981
	for <blinux-list@redhat.com>; Thu,  7 May 2020 04:01:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC45C1859160
	for <blinux-list@redhat.com>; Thu,  7 May 2020 04:01:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-207-S5U9hpqjM_2aPo9QHb06jA-1; Thu, 07 May 2020 00:01:33 -0400
X-MC-Unique: S5U9hpqjM_2aPo9QHb06jA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49HfsS5GZRzyDy
	for <blinux-list@redhat.com>; Thu,  7 May 2020 00:01:32 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49HfsS4LpLzcbc; Thu,  7 May 2020 00:01:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49HfsS3sdszcbW
	for <blinux-list@redhat.com>; Thu,  7 May 2020 00:01:32 -0400 (EDT)
Date: Thu, 7 May 2020 00:01:32 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Tab-Completing a Program After man?
In-Reply-To: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
Message-ID: <alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
References: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04741cxK005994
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you tried:
man 1 lyn<tab>?
On Wed, 6 May 2020, Linux for blind general discussion
wrote:

> Date: Wed, 6 May 2020 20:37:53
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Blinux Discussion List <blinux-list@redhat.com>
> Subject: Tab-Completing a Program After man?
>
> Hi All: Supposedly this may work in bash, however, I would like to do this in
> tcsh. Sometimes I want to explore man-pages with tab-completion. However, it
> only completes files or directories, not programs. So typing man  lyn  would
> show lynx.cfg and lynx_bookmarks but not actual lynx. Can some1 please suggest
> how I can fix this in Debian? Thanks so much in advance
> Chime
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

