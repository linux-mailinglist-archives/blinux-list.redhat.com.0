Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 779A4255277
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 03:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598577466;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=28ARKjtLTRcadgZTtdqwM2I51BvO93kgrAUwU1hliDs=;
	b=Txa1U4l0xPCCEpQGLWjMB67PWM2gcIs875NSlttvGXOsc1nNclVcoCvpuPzldAdZuQkmY6
	GrUNeQemhkvCX33d/SJf6sCzTAvzi9fbTLxbAvzoyR22H13iT2QS3407hNVnWBnATa2lSe
	12i/jgOkpYcJ4P3lu5sTLDAr/FWlH+o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-220-E3wGa-GbOZq7iHSZIbB4QQ-1; Thu, 27 Aug 2020 21:17:44 -0400
X-MC-Unique: E3wGa-GbOZq7iHSZIbB4QQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FD5D189E615;
	Fri, 28 Aug 2020 01:17:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A71245D9E8;
	Fri, 28 Aug 2020 01:17:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3E19668F1;
	Fri, 28 Aug 2020 01:17:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07S1G3Qa005133 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Aug 2020 21:16:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9A24C2166BA0; Fri, 28 Aug 2020 01:16:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94CC72166B28
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 01:15:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21645185A78B
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 01:15:59 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-378-TvWj5LAtPlGYyY85UC5utg-1; Thu, 27 Aug 2020 21:15:55 -0400
X-MC-Unique: TvWj5LAtPlGYyY85UC5utg-1
X-SimpleLogin-Client-IP: 172.17.0.4
Received: from [172.17.0.4] (unknown [172.17.0.4])
	by mx1.simplelogin.co (Postfix) with ESMTP id 122EC3F1C1
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 01:15:54 +0000 (UTC)
Date: Fri, 28 Aug 2020 03:15:52 +0200 (CEST)
Subject: braille display question
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <159857735399.6.4830934744852641473.711949@slmail.me>
X-SimpleLogin-EmailLog-ID: 711949
X-SimpleLogin-Type: Reply
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone,
I have a quick question about braille displays.
Have any of you used the Pacmate 40 cell display with Linux? Especially those of you who use Slint as I am really interested in that Distro.
I was thinking of using an Optelec Braille Voyager 40 but I don't see it supported on the BRLTTY list.
Pacmate 40 does actually seem to be supported on the BRLTTY list so I'm thinking of getting that one, and just wanted to know if any of you use Pacmate 40, particularly with Slint?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

