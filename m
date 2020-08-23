Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 441EA24EF07
	for <lists+blinux-list@lfdr.de>; Sun, 23 Aug 2020 19:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598203558;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Cv+uknLR+hbvb9RXqm9pfUTpwv6yU2o6Sd97ssMeQe0=;
	b=QUL5HxqSr30JAQU6PY8lDf1RKIjWsI/2E8H4PMG1ssHWDVeTqtvj8enChuqFo99LnbzAKA
	hFJsU3LsvwsaDhpEHoeQxG+GlIzcbIVnWSFj/FI5t3EmGJf++am6lJekaFSm0CPDAKDb4s
	aaiso5GAXH0XEujYpHGBVTecGLsefBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318--vA0PrhxOQqPPEJItZoCmQ-1; Sun, 23 Aug 2020 13:25:30 -0400
X-MC-Unique: -vA0PrhxOQqPPEJItZoCmQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C07F2801AB6;
	Sun, 23 Aug 2020 17:25:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A84D554595;
	Sun, 23 Aug 2020 17:25:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3939F18095FF;
	Sun, 23 Aug 2020 17:25:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07NHPNqL004240 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Aug 2020 13:25:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F8984C830; Sun, 23 Aug 2020 17:25:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B3E74C81E
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:25:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A700B80029D
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 17:25:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-197-w7CVkhpPO1-u2-_rIysgTg-1; Sun, 23 Aug 2020 13:25:17 -0400
X-MC-Unique: w7CVkhpPO1-u2-_rIysgTg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BZMb1538hz1g5P
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 13:25:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BZMb1462yzcbY; Sun, 23 Aug 2020 13:25:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BZMb13bZHzcbV
	for <blinux-list@redhat.com>; Sun, 23 Aug 2020 13:25:17 -0400 (EDT)
Date: Sun, 23 Aug 2020 13:25:17 -0400
To: blinux-list@redhat.com
Subject: daisy-player 12.0 (fwd)
Message-ID: <alpine.NEB.2.23.451.2008231325070.21497@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



-- 


---------- Forwarded message ----------
Date: Fri, 21 Aug 2020 16:05:06
From: Jos Lemmens <acjlemmens@gmail.com>
To: Colomban Wendling <cwendling@hypra.fr>, Paul Gevers <elbrus@debian.org>,
    Alex ARNAUD <alexarnaud@hypra.fr>,
    Jean-Philippe MENGUAL <jpmengual@hypra.fr>, Didier Spaier <didier@slint.fr>,
    Samuel THIBAULT <samuel.thibault@ens-lyon.org>,
    debian-accessibility@lists.debian.org,
    ubuntu-accessibility@lists.ubuntu.com, Florian Wille <f-wille@gmx.de>
Subject: daisy-player 12.0

Hello,

On my page http://jlemmens.nl you can find daisy-player version 12.0.
>From this version on each item can be started at any given second.
Skip left and right now skips 10 seconds forwards or backwards.
Also pause will resume at the last second.
A new option '-T' is introduced. Thanks to Colomban Wendling for this idea.
"-T" Do not display the time passing during playback.
daisy-player now has better support for media with "discinfo".
(<https://daisy.org/activities/standards/daisy/daisy-2/daisy-format-2-0-specification/>)

   Regards,

      Jos.

---
   Sent from Debian GNU/Linux 9

   -------------------------------
   Jos Lemmens
   The Netherlands
   E-mail: acjlemmens@gmail.com
   Homepage: www.jlemmens.nl


-- 
Ubuntu-accessibility mailing list
Ubuntu-accessibility@lists.ubuntu.com
https://lists.ubuntu.com/mailman/listinfo/ubuntu-accessibility

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

