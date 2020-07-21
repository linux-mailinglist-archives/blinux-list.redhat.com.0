Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 56974228A19
	for <lists+blinux-list@lfdr.de>; Tue, 21 Jul 2020 22:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595364055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=12tBBgs5B8/1BZCqObQQbzfiiNBo3ILQCANhSBdARXk=;
	b=amhkY+80c4UbNr6sHNHWnHyLOKQJWphW8VvyflLgMGLwIZBxLW+ubQ2RhEOsZWSqHXjeV0
	Ms5nDEIHa3cZExpj1IGpWGA/blxTEQu8RTjVO0YKSXsC9ASG6nrDhaJPwqFIL+yKDJA9DJ
	2H9TPP0O4WFAdch5uT49QM3sw/T+EDs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-kLJeMibrMKy-xFNtxbksWg-1; Tue, 21 Jul 2020 16:40:52 -0400
X-MC-Unique: kLJeMibrMKy-xFNtxbksWg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B96FA189CEFB;
	Tue, 21 Jul 2020 20:40:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D821278530;
	Tue, 21 Jul 2020 20:40:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3CED730C0;
	Tue, 21 Jul 2020 20:40:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06LKSV4U032398 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 16:28:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 869DD1040598; Tue, 21 Jul 2020 20:28:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82470104059A
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 20:28:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E6F428007C8
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 20:28:28 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-214-YEqJMztSOdGK4XEcRvCIUQ-1; Tue, 21 Jul 2020 16:28:26 -0400
X-MC-Unique: YEqJMztSOdGK4XEcRvCIUQ-1
Received: by mail-ot1-f45.google.com with SMTP id d4so158324otk.2
	for <blinux-list@redhat.com>; Tue, 21 Jul 2020 13:28:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=TKYHiDN+I2vYf8oL+Kx8WINjpMQoR5kpqaB84O86IaE=;
	b=BJ3m69VwiDB/sFxRwRD9cisouvJpeRaFARk5CFZPbf4dpXke14CWZHC/xmrqlKhr2L
	2YYMNUefUq69SlV/DsmAA9+RIstWscqNk57CHjCG+uz6MGeuu1764PtxckZ70nPkkPWF
	igKcUVc4oC0OQ0OGwpkrJ1h8NMmoAhL7MTs7sGqQNAp2F0Lkxvtkovs+Lo+WJKhiujPs
	j0zdQ/nF8ulhZeIJUL4AQ4/cVyClT7QhqNntnZVwelO4+0sh1JNUwNeSzOlLBh5ZQCLX
	59Zntx2Jo8M7wzdx8q99xiB1COuWQPvDshcG5ow+IA5fQ1zNBDgyna9aiQBHNrvCskF3
	SoDQ==
X-Gm-Message-State: AOAM533Y1qUqEzFz3DQHRVb9Jpe4Ue3JBSjNrYYDPY5g0sdjetm6htkG
	kQ34EWtzhx1a1fOuTKVNowwgwbZ3z6o=
X-Google-Smtp-Source: ABdhPJy1lGl8cji5XmhYf+WVE6Cqdbmua1RmDnRQpz63tBg6SOclOQ46dzCNHQVmyjNx8HSywlKfog==
X-Received: by 2002:a9d:eef:: with SMTP id 102mr25291654otj.225.1595363304983; 
	Tue, 21 Jul 2020 13:28:24 -0700 (PDT)
Received: from ?IPv6:2600:1700:81f0:1c10:f8b9:a2df:6990:a666?
	([2600:1700:81f0:1c10:f8b9:a2df:6990:a666])
	by smtp.gmail.com with ESMTPSA id
	w131sm4880226oiw.4.2020.07.21.13.28.23
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Jul 2020 13:28:24 -0700 (PDT)
X-Google-Original-From: Maurice Mines <Maurice.Mines@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Date: Tue, 21 Jul 2020 13:28:22 -0700
Subject: Problems wealth the 2020 Version I of Ubuntu linux download.
Message-Id: <747E6C6B-83F6-498A-904F-BD93B9E8FB94@gmail.com>
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 06LKSV4U032398
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

Good afternoon I am I have a very interesting Ubuntu  installation problem. Unfortunately this Iso Image is not downloading correctly. Just so that everyone is aware I'm trying to install this distribution into a virtual Machine on  my  Mac by using I am using Vmware. 

I can think of to possible issues that might be causing this problem. One I'm downloading this Image from the main website, so network traffic might be too high to get correct Image file. The other possibility is that this Version of Ubuntu is not compatible with Intel architecture. Because the file name States it is four AMD processors.

Does anyone no i'll be reliable alterNet download site four this Image? The other question if people on the list Think that the version of Ubuntu is incorrect, what version of this distribution wood be more appropriate four a virtual Machine installation on  a 2020 MacBook Pro running at 2 GHz, this processor has turbo boost up to 3.8 GHz. And has a 16 gig i'll be fast ram. Any suggestions, or advice on how to solve my problem.

Sincerely Maurice Mines.
PS this is the 2020 Desktop Long support Version oh Ubuntu.

Please note the above text may have errors because I'm using apples built-in dictation software. If there something written above that you did not understand, please ask me what my original intent Wise? I will do my very best to attempt to clear up any misunderstandings that may arise from the contents i'll be above email. Thank you very much four Reading this.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

