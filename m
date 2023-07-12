Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86C75105B
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jul 2023 20:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689185571;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MDU8QYGumNnp2lhQc947ejrcFn7j8D5OXW4rV/puOiQ=;
	b=LZkv/GUvfxNxBFRQ563I77EinxwS0xBuaKgc8jd/NipjjCoNPAR+RAaC7ZqBlWmOnfgAKn
	pqG1IB8AtugHrnFlzb1O0kKijAqxpSGemkgm1d0VdILLb7+ZX/vREr650Zb8283piZ3gaQ
	jvZr1XKYpoinQQMgxLL3R4whY37PWQc=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-614-24VFODeLPwKLamQiXam8qQ-1; Wed, 12 Jul 2023 14:12:49 -0400
X-MC-Unique: 24VFODeLPwKLamQiXam8qQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AD683C0FCA0;
	Wed, 12 Jul 2023 18:12:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 01160492B01;
	Wed, 12 Jul 2023 18:12:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5A83119465B3;
	Wed, 12 Jul 2023 18:12:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 12 Jul 2023 11:12:18 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Announcing pod-kast with a k
MIME-Version: 1.0
Message-ID: <mailman.922.1689185543.3826220.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: I am thrilled to offer a newer-and-easier podcast client which we have 
been working on for some years. In the past an only client I really understood 
was hpodder, but it is not maintained any more. Also hpodder seemed to create a 
separate directry for each podcast. In our client you can select on the fly or 
by defalt where you want to save. Please feel free-and-grab directly from
https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
This file is not linked from my site. Certainly, please write off list about 
any opperational issues, or write Marc, who's e-mail is in the man-page. Enjoy
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

