Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 523BF352BA4
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617376137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n7uSUduhL9/a5p8xg465hZ5N9D2NoMlYw35H/ExmOFk=;
	b=D2dcRjL3Pt6R2Zy3ILlJC4p9FKpGUolCi2IIe2OjLH5AKZ8fedeiUqi7iI07iT/S3RnQFk
	5ekX5Zv8gSm1bp6e0fe3hBVXmhOiLIxUDGZE1oMNtlYixnKs4gi/XwlEoEzr3DeC5HAk2H
	90SwFofbXtpaAw+8Bfb2ND8MCz/Xmyk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-8a5xeMzRMmWAIwtTlx_Z_g-1; Fri, 02 Apr 2021 11:08:54 -0400
X-MC-Unique: 8a5xeMzRMmWAIwtTlx_Z_g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89939839A44;
	Fri,  2 Apr 2021 15:08:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 634986294D;
	Fri,  2 Apr 2021 15:08:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C19581809C84;
	Fri,  2 Apr 2021 15:08:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132F8OJr002621 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:08:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5AF1A2157F26; Fri,  2 Apr 2021 15:08:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 557182157F24
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:08:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA00A802C19
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:08:21 +0000 (UTC)
Received: from omta014.useast.a.cloudfilter.net
	(omta014.useast.a.cloudfilter.net [34.195.253.205]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-60-18XYtnz4Nq-gks2C7AgsJA-4;
	Fri, 02 Apr 2021 11:08:19 -0400
X-MC-Unique: 18XYtnz4Nq-gks2C7AgsJA-4
Received: from cxr.smtp.a.cloudfilter.net ([10.0.17.147]) by cmsmtp with ESMTP
	id SKKflJ5Z1OR4ySLNplSCO6; Fri, 02 Apr 2021 15:06:49 +0000
Received: from DESKTOPJR9AN1N ([68.0.52.237]) by cmsmtp with ESMTPSA
	id SLNnlibl63n5eSLNolJcCw; Fri, 02 Apr 2021 15:06:49 +0000
X-Authority-Analysis: v=2.4 cv=VeMygHl9 c=1 sm=1 tr=0 ts=60673309
	a=LbbJ0yHzloG3/2BwYsSTog==:117 a=LbbJ0yHzloG3/2BwYsSTog==:17
	a=DAwyPP_o2Byb1YXLmDAA:9 a=Pv7eaKh5x4pMySBAcyYA:9 a=CjuIK1q_8ugA:10
	a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=_e7t2MqzKy0vs--eVbEA:9
	a=gKO2Hq4RSVkA:10
	a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
To: <blinux-list@redhat.com>
Subject: linux and orca
Date: Fri, 2 Apr 2021 10:06:48 -0500
Message-ID: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
MIME-Version: 1.0
Thread-Index: Adcn0XnzZDzPCF0wR7mIXw0XdUdRJQ==
X-CMAE-Envelope: MS4xfEz6dpMWAFGQfWlS/ZvYPlo3l3P2ytbK9teuOM3mOV3Wb4LBIQADUAT8F/mnev53OD2sbrKzpYNgJ1XWmyIJ5pjhBbP0rKkDFnpmDD6MUHbLji+ZJS3s
	nx+k/Hu6tl9IhMlIP+4jCbFY2roeuhDxFnQOfCaP5CXDP4jy5RFNCMh+/WAadhBNe7rWC9kShCk50Q==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello, my name is Gery Gaubert.  I live in Louisiana.  I am a retire I.T.
professional.  I enjoy cooking, ham radio, family and learning nnew things
to name a few.  I was given a raspberry pi as a retirement gift and I want
to learn how to use it.  I have Raspbian installed and orca screen reader.
I want to change some of the orca settings.  I read that you use insert and
space to do that but that doesn't work.  What am I missing?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

