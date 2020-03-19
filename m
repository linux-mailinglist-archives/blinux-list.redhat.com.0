Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 974A018B29A
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 12:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584618679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1QjrbJKFM7Kf+zvWxCWsccOpyi/waze+581OUeGL1cA=;
	b=acCZQczxJnodB6pYxFYHU2SII3kekKc0TcX3eXtr1znAJD7hmHimw0O9GFJU26j9aIji1/
	V+0Xv/Gr2DUjJWUoz5Qcx6DcasBlWTu4nudTHzoutEQKfP4/evlIYK1HmlzIf454XNrtLR
	wrWBuAYY811SZf+03r4s209zZWMZ930=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-KWQZ4IS2OwOT1N7ylPAkgA-1; Thu, 19 Mar 2020 07:51:17 -0400
X-MC-Unique: KWQZ4IS2OwOT1N7ylPAkgA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACC62107B7DA;
	Thu, 19 Mar 2020 11:51:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2147E5C28E;
	Thu, 19 Mar 2020 11:51:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B7BB694287;
	Thu, 19 Mar 2020 11:51:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JBosru001551 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 07:50:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 66DD0199405; Thu, 19 Mar 2020 11:50:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6293D17C6DE
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 11:50:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74F228007D0
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 11:50:52 +0000 (UTC)
Received: from mail-smtp-out-04.stable.cz (mail-smtp-out-04.stable.cz
	[213.109.164.21]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-89-boLQC-frOsirnHlRFr3c_Q-1; Thu, 19 Mar 2020 07:50:49 -0400
X-MC-Unique: boLQC-frOsirnHlRFr3c_Q-1
Received: from 78-157-160-1.silesnet.net ([78.157.160.1]:54090
	helo=localhost.localdomain) by mail-smtp1.stable.cz with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <info@a-fs.cz>) id 1jEthH-0003Q7-Vs
	for Blinux-list@redhat.com; Thu, 19 Mar 2020 12:50:48 +0100
To: Blinux-list@redhat.com
Subject: How to modify command in Gnome?
Message-ID: <707efaed-b9c7-249e-6d9a-096bba93f113@a-fs.cz>
Date: Thu, 19 Mar 2020 12:50:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

when I want to run Chrome with accessibility enabled, I must open with 
alt + f2 and type this:

/usr/bin/google-chrome-unstable --enable-caret-browsing 
--force-renderer-accessibility

is it possible to modify to this command under gnome-shell app panel? In 
Mate, Mozo app can be used.

Thanks,

Pavel



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

