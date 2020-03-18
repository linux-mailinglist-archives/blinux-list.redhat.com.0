Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 1E12118A8D1
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 00:00:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584572418;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q2euf8/6RsTJQXK3EDGrQ1PcdR21Jn6MxCjlxsgpXEo=;
	b=BErYGjKUjXC2ur5k02b77nWV1PSjKkT355iWjzGeEyO33NorPMe1bh29U4O5SJHIChg3k0
	fmtc74H0HfsxG93/cqlr3skMYNdJ1MsyQrmpcg0iL+tnEoDt8TngmPi4Wq5ck3vrCw5qDq
	MvIvObgyz4x+J/M9L3wZLWIOdNszJII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-UeCMGbXdMWa8hPnhiaXBUA-1; Wed, 18 Mar 2020 19:00:16 -0400
X-MC-Unique: UeCMGbXdMWa8hPnhiaXBUA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73B97189F763;
	Wed, 18 Mar 2020 23:00:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79E0F5C1D8;
	Wed, 18 Mar 2020 23:00:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88745860FE;
	Wed, 18 Mar 2020 23:00:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02IMxv44009539 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Mar 2020 18:59:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 68A3B2063FE5; Wed, 18 Mar 2020 22:59:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6243B2063FE8
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 22:59:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9120A185A78E
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 22:59:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-162-aWdxsazwMGuelDVZBAFP4g-1; Wed, 18 Mar 2020 18:59:51 -0400
X-MC-Unique: aWdxsazwMGuelDVZBAFP4g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48jQTz1hYmzr7M
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 18:59:51 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48jQTz0dLvzcbc; Wed, 18 Mar 2020 18:59:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48jQTz0Y0mzcbV
	for <blinux-list@redhat.com>; Wed, 18 Mar 2020 18:59:51 -0400 (EDT)
Date: Wed, 18 Mar 2020 18:59:50 -0400
To: blinux-list@redhat.com
Message-ID: <alpine.NEB.2.21.2003181859040.3823@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02IMxv44009539
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

maybe worth trying
use edbrowse to try and download that microsoft iso file, that may work
since it offers some javascript to microsoft.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

