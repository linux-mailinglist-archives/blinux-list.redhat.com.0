Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 060D711908D
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 20:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576006026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Hd8bPVDWNlRvPip5xYtbVW2aT49a3fYeCHxK46ZsOTg=;
	b=HgOzs0pRuNeVyfGXbYZsO9bqEwguIOgOub2MAnkmHrNjzEahM46sOB91f9Y0JGgxZYHZJq
	KMzjYo7cckxJ/b6ehweN6tk2UkR7g5WcCjl1C/l0U+DV6epUdPI5vbzmRjbV0JV9NAsz6f
	drSjV1+np3u+eAZjpP6uhuH1Co4+I7g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-75NFuIL_PpKr_XhZY7-sNQ-1; Tue, 10 Dec 2019 14:27:04 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D60B1800D45;
	Tue, 10 Dec 2019 19:26:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B927C6E3FF;
	Tue, 10 Dec 2019 19:26:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AAC5A18089C8;
	Tue, 10 Dec 2019 19:26:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAJQeoO017953 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 14:26:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A085D2166B2A; Tue, 10 Dec 2019 19:26:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C5542166B28
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:26:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B1AC802093
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:26:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-104-F2V2UwsDMUiAjBuFPaBY6A-1; Tue, 10 Dec 2019 14:26:36 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47XVRb6m6Nz1X8b
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 14:26:35 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47XVRb4xTzzcbc; Tue, 10 Dec 2019 14:26:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47XVRb4WCWzcbb
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 14:26:35 -0500 (EST)
Date: Tue, 10 Dec 2019 14:26:35 -0500
To: blinux-list@redhat.com
Subject: google high security and linux command line email programs
Message-ID: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: F2V2UwsDMUiAjBuFPaBY6A-1
X-MC-Unique: 75NFuIL_PpKr_XhZY7-sNQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAJQeoO017953
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
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Has anyone here gone high security with google and generated an
app-password for their command line email apps?  If so, which apps?
I have and can use a few different apps but really want to know what
google will be limiting me to with two-factor authentication and an
app-password before I enable two-factor authentication.  If there's no
apps this can be done with, no point enabling two-factor authentication
and trying to generate an app password for any of these.  When google
security is after users to enable higher security and google recognizes
linux devices have been and are likely to continue being used on an
account those messages ought to include a list of apps that will work in
linux.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

