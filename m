Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D1496FCC
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 06:15:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642914908;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QK6xLKYid0kGjychTKSvq/80Yb7kN4VdaKEoRRhJmIY=;
	b=Vdgj3kN68nG28NXNvkSS+r2Q9B7lxHHJEoVzZ9cawayJd8gyOjRy1Q9+/GF19FoCTEVhax
	iOCFwGbkBaZVcUXZmXIAR0hEntw6jbKuyhy3w+hypUHEdOkLrxYeoLig+ZvsH5yo9qsQfN
	4ZPndZgYpqN9pSZkys6yJ8tcOe3pmx4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-PAA6ysu-Og2vJDGW8s4Kxg-1; Sun, 23 Jan 2022 00:15:03 -0500
X-MC-Unique: PAA6ysu-Og2vJDGW8s4Kxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7CA221006AA4;
	Sun, 23 Jan 2022 05:14:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0073B4DC13;
	Sun, 23 Jan 2022 05:14:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA5DA4BB7B;
	Sun, 23 Jan 2022 05:14:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N54xbp006755 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 00:04:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 65B5A401E89; Sun, 23 Jan 2022 05:04:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 627D7401DAD
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:04:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4C86A811E76
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 05:04:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-137-_07gQkBsMFmE-OeNExpJtg-1; Sun, 23 Jan 2022 00:04:56 -0500
X-MC-Unique: _07gQkBsMFmE-OeNExpJtg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhLdh3r7GzFmW
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 00:04:56 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhLdh3KZjzcbc; Sun, 23 Jan 2022 00:04:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhLdh2qbKzcbP
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 00:04:56 -0500 (EST)
Date: Sun, 23 Jan 2022 00:04:56 -0500
To: blinux-list@redhat.com
Subject: web page problem
Message-ID: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Is it possible when a file had its version updated on its web page to get
the urls of the new versions so the new versions can be downloaded?  html
doesn't support wild cards so this can't be done with wget.  I'd like to
be able to do this with a script if at all possible.  I know perl does
wildcards well, but don't know if perl can handle a job like this.
If a file is on a web page it can be checked using wget with --spider
option followed by the url name.
Since such a case will return a 0 errorlevel, it's possible to put a &&
followed by a wget -bc url to download the file if it exists.
once the file is downloading
wc -l wget-log && grep -i saved wget-log && rm wget-log
command run every so often shows the growing size of wget-log and at the
end will show the file name and then remove wget-log  The magic is in that
&& pipe from one command to the next.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

