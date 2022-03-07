Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E9F4D00A2
	for <lists+blinux-list@lfdr.de>; Mon,  7 Mar 2022 15:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646661787;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8wFh5GsfMS+IqCkBu5tmuXBjoCQkcxH774zbQhZcFlI=;
	b=GmhUJ7HGTMV/qWOhEolLCfgc40qcYZMvF+hDbDkFXChpHQeUtxd9910Gp1BBiPfwn1HrgQ
	UZ/vrAuI9+IX5/jJVi3fy88vj+BEVXrlDddLuvnBTURLHrvA6U0df9EknNDRCvXwjk2DD4
	onYyMj2lfd8GJKd3fMFKsraPQB9H4dk=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-qcaPMTc1OR-NROFbS6NNlA-1; Mon, 07 Mar 2022 09:03:04 -0500
X-MC-Unique: qcaPMTc1OR-NROFbS6NNlA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62DED3806701;
	Mon,  7 Mar 2022 14:03:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0AB2C15230A0;
	Mon,  7 Mar 2022 14:02:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5609A19305A9;
	Mon,  7 Mar 2022 14:02:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 7 Mar 2022 15:59:19 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: epson perfection 2580 no longer works Ubuntu 20.04
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
Message-ID: <mailman.123.1646661776.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Good day,
As this scanner was at one time recommended for, I think, Openbook users, 
I am asking here in desperation.
scanimage -L shows the scanner.
sane-find-scanner shows it too.
Some times after power up, with scanimage, I get as far as
"scanner warming up, waiting 8 seconds".
Then it always gives: "Error during device I/O".
Things already checked:
1. It is not the cable or USB port.
2. The firmware is correct.
3. The permissions seem fine.
Has any one come across this?
If so, have you solved it?
Any ideas welcome.
Regards, Willem


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

