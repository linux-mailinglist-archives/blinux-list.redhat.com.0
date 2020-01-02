Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 51F8512E8F1
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jan 2020 17:51:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577983888;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TKeD1BJKhCIt/h0zefu18ZcWusTRH+4YtZodf8b9BQM=;
	b=K0+7+2N4lNen7tiie+OnBK5JyaERiz/e/DSK0u4WiSRYOiffepuG/QUzLJgq/tCkSf9fBA
	fC2b/Yj6X38hpzlYvtRJ2t7zJ+nVQ21dQ7a78Qbv6ZepKlrJw+ehE4Os+yOSl+qymgJlm2
	CmgLDF84/pHDk2kjqGDVR1PTOMlSh90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-0zMoEOyXMKa8OX7RENQ97g-1; Thu, 02 Jan 2020 11:51:25 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8516818A8C83;
	Thu,  2 Jan 2020 16:51:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 811D863147;
	Thu,  2 Jan 2020 16:51:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AFEF181E33;
	Thu,  2 Jan 2020 16:51:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 002Gp2Mo016127 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jan 2020 11:51:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A29462022EA5; Thu,  2 Jan 2020 16:51:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CA582022EA7
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 16:51:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EE52B1019298
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 16:50:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-gRzawfL2MlOZxorY0ua3Kg-1; Thu, 02 Jan 2020 11:50:58 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47pYvP5ST9z1hDY
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 11:50:57 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47pYvN1kQkzcbc; Thu,  2 Jan 2020 11:50:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47pYvN1Hd3zcbW
	for <blinux-list@redhat.com>; Thu,  2 Jan 2020 11:50:56 -0500 (EST)
Date: Thu, 2 Jan 2020 11:50:56 -0500
To: blinux-list@redhat.com
Subject: festival unknown voices
Message-ID: <alpine.NEB.2.21.2001021148060.19526@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: gRzawfL2MlOZxorY0ua3Kg-1
X-MC-Unique: 0zMoEOyXMKa8OX7RENQ97g-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 002Gp2Mo016127
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When trying to run speech-dispatcher against festival with pulse or alsa
in test mode using spd-conf I'm getting no speech from spd-say and these
errors.   I've installed festival-us package on the system which has
voices in it and it's these festival is claiming are unknown.
SIOD: unknown voice cmu_us_slt_cg
SIOD: unknown voice cmu_us_slt_cg
SIOD: unknown voice cmu_us_awb_cg
SIOD: unknown voice cmu_us_awb_cg
SIOD: unknown voice cmu_us_rms_cg
SIOD: unknown voice cmu_us_rms_cg


How do I clear these festival errors?


-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

