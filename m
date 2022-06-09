Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4239754519E
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jun 2022 18:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654791080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jYphMsGCIdQl9m2W0KCGjME5yVv9zzTlyar5swr/uwU=;
	b=GlofTA9a4gcV648/6DWaeADr3DJGqNMOvZs6/NzeBPpBwJaoIiYfaK4jB5+TDb/9T/Nx8L
	mEWHG96duJQvIMYKQ89slfg8C8hHcgew2OhWw5mRlT11tS3PswHM2LdBIqBb7oBJiAbvAJ
	4H3v+DjNn+48mB/HwOyj3YpFjvYLias=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-kdcIXfuWOI6_0C_u-LHCFA-1; Thu, 09 Jun 2022 12:11:17 -0400
X-MC-Unique: kdcIXfuWOI6_0C_u-LHCFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2AF1294EDDB;
	Thu,  9 Jun 2022 16:11:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 286362166B26;
	Thu,  9 Jun 2022 16:11:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 941691947063;
	Thu,  9 Jun 2022 16:11:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Thu, 9 Jun 2022 09:02:15 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: How Can I Fix this Error?
MIME-Version: 1.0
Message-ID: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I am in Debian SID-and-I update daily. For maybe 2years I find alot of 
value in a program called "rdrview" which like similar applications in other OS 
provide a rather un complicated view of articles on web-pages, without  those 
lengthly tool bars. Anyway, you can run it as an external in L Y N X. Well, 
certainly no idea which update broke this, but now I get a cryptic message
"futext fascility returned an unexpected error"
In searching, others have gotten this error for other programs, but I didn't 
really see any solutions. Running "locate futext" only come up with an item in 
kernel 5.9 sources, however, I am currently in 5.17 all though if I were to 
reboot, I would be in 5.18. So, can any1 please suggest how to correct this error? What 
we did in some cases where programs depend on Python, are running them in a 
vertual envirenment. Thanks so much in advance.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

