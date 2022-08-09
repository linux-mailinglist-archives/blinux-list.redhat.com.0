Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B44D458D1A8
	for <lists+blinux-list@lfdr.de>; Tue,  9 Aug 2022 03:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660007688;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q64zW1LHg6Skq1NXpzjIaQa2jZBFvrBAaxQMtzPaBQ0=;
	b=fkMuFMGAIfPbH7jQkOnYAanGo4l0PRMf3FADl6CVUG1wj0tM1PKr64MGAzvGog/z4Eq2T9
	9hqh+TBkvjrc48R+N/d2lqpb1Whbr5Ws+fmI+RDAqKwzQoj75TNOeWJ6Nmr9shgRArjDID
	byBWrLz+fBGevxmCSepqZQEqUYcMzFo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-564-4PTxHITQOe-dezqDYG4KEg-1; Mon, 08 Aug 2022 21:14:45 -0400
X-MC-Unique: 4PTxHITQOe-dezqDYG4KEg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0BDC4802D1C;
	Tue,  9 Aug 2022 01:14:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2D84918ECC;
	Tue,  9 Aug 2022 01:14:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E8BC91946A66;
	Tue,  9 Aug 2022 01:14:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 09 Aug 2022 01:14:18 +0000
To: orca-list <orca-list@gnome.org>,
 Linux for blind general discussion <blinux-list@redhat.com>
Subject: umai: Automate Ubuntu Mate accessibility tweaks
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.40716.1660007675.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

when upgrading my Ubuntu Mate to the latest 22.04, I found out
accessibility installation can be quite a drag. I mostly knew what to
do, except few things I had to search up like activation of Orca on the
login screen, but still, getting all information together, doing all the
necessary steps, not forgetting anything, turned out to be quite exhausting.


I created a simple script, that should help automate this process:

https://github.com/RastislavKish/umai


If you know any other tweaks you think should be included, please let me
know, these are the accessibility related things I usually do (or want
to do) when setting up a new system.


I wanted to setup a shortcut for OCRDesktop in the script as well, but I
didn't find yet, where does Ubuntu Mate save information about custom
keyboard shortcuts. If anyone has an idea, please let me know as well.


I also can't recall the enable accessibility services option in the
settings, or more specifically, its gsettings path. It's not like it was
a problem, I still don't have a slightest idea about the purpose of the
setting, but perhaps it should be turned on, so I'll give it a look
during my next gsettings raid.


Save time, and have fun.


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

