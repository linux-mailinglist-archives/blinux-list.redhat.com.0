Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id E717617A52C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Mar 2020 13:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583410896;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YVRXgbCLklVbhhqWoDJLDV9rDP4UvkNuZ+r3lzuagWI=;
	b=Rkj84uWqrBB6oY2yTBZrL5mOBJGLY9B7DnDOVMUd8vhgAkfzi9+jDtE+NOX9gl1FouMBSa
	oRENyt9XSN66xFBe778GYiJaUfLrpkV3GOMkcPyydapd35UGdSuV0b/ASuSvy6zM1dD6c0
	Ga6TRWGuil5wSACpkqqESbJpOynElzs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-bTnbSGswMC6AG6sJ_7pEiA-1; Thu, 05 Mar 2020 07:21:34 -0500
X-MC-Unique: bTnbSGswMC6AG6sJ_7pEiA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE46910CE782;
	Thu,  5 Mar 2020 12:21:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5F0E1001902;
	Thu,  5 Mar 2020 12:21:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CBD4218089C8;
	Thu,  5 Mar 2020 12:21:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 025CL8LC031472 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Mar 2020 07:21:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 51E742026D68; Thu,  5 Mar 2020 12:21:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D82B2063FE6
	for <blinux-list@redhat.com>; Thu,  5 Mar 2020 12:21:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29223800FCE
	for <blinux-list@redhat.com>; Thu,  5 Mar 2020 12:21:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-280-Ahi91Mo3PDS9vsWs21V6Hw-1; Thu, 05 Mar 2020 07:21:04 -0500
X-MC-Unique: Ahi91Mo3PDS9vsWs21V6Hw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48Y8wv40Xvzm0M
	for <blinux-list@redhat.com>; Thu,  5 Mar 2020 07:21:03 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48Y8wv3CC5zcbc; Thu,  5 Mar 2020 07:21:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48Y8wv365nzcbV
	for <blinux-list@redhat.com>; Thu,  5 Mar 2020 07:21:03 -0500 (EST)
Date: Thu, 5 Mar 2020 07:21:03 -0500
To: blinux-list@redhat.com
Subject: foldathome package
Message-ID: <alpine.NEB.2.21.2003050718340.17897@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 025CL8LC031472
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

on distros with this package you can run the package and donate spare
processor time to the foldathome project which is now working on a
solution to covid19.  The archlinux distro has several variations of this
package; debian probably has it, and slackware does not.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

